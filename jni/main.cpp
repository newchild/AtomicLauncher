#include <dlfcn.h>
#include <jni.h>
#include <unistd.h>
#include <sys/mman.h>
#include <substrate.h>
#include <dobby_public.h>
#include <dl_internal.h>
#include <android/log.h>
#include <string>
#include <sstream>
#include <iomanip>
#include <cmath>
#include "shared.h"
#include "mcpe.h"

std::string getDebugVersionString() {
	return "Minecraft Pocket Edition " + Common::getGameVersionString();
}

std::string getDebugCoordsString() {
	std::stringstream coords;
	float x = currentLevel->getLocalPlayer()->x;
	float y = currentLevel->getLocalPlayer()->y;
	float z = currentLevel->getLocalPlayer()->z;
	coords << "XYZ: " << x << " / " << y << " / " << z;
	return coords.str();
}

std::string getDebugBlockCoordsString() {
	std::stringstream blockCoords;
	int x = currentLevel->getLocalPlayer()->x;
	int y = currentLevel->getLocalPlayer()->y;
	int z = currentLevel->getLocalPlayer()->z;
	blockCoords << "Block: " << x << " " << y << " " << z;
	return blockCoords.str();
}

std::string getDebugChunkCoordsString() {
	std::stringstream chunkCoords;
	int x = currentLevel->getLocalPlayer()->x;
	int y = currentLevel->getLocalPlayer()->y;
	int z = currentLevel->getLocalPlayer()->z;
	chunkCoords << "Chunk: " << (x & 0xf) << " " << (y & 0xf) << " " << (z & 0xf) << " in " << x / 16 << " " << y / 16 << " " << z / 16;
	return chunkCoords.str();
}

std::string getDebugFacingString() {
	std::stringstream facing;
	double rotX = currentLevel->getLocalPlayer()->rotX;
	rotX = (floor(rotX * 10 + 0.5)) / 10;
	double rotY = currentLevel->getLocalPlayer()->rotY;
	rotY = (floor(rotY * 10 + 0.5)) / 10;
	std::string compassFacing;
	if(rotX >= 0) rotX = fmod(rotX, 360);
	if(rotX > 0) {
		if(rotX > 315 || rotX < 45) compassFacing = "South (Towards positive Z) ";
		else if(rotX > 45 && rotX < 135) compassFacing = "West (Towards negative X) ";
		else if(rotX > 135 && rotX < 225) compassFacing = "North (Towards negative Z) ";
		else if(rotX > 225 && rotX < 315) compassFacing = "East (Towards positive X) ";
	} else {
		if((360 + rotX) > 315 || (360 + rotX) < 45) compassFacing = "South (Towards positive Z) ";
		else if((360 + rotX) > 45 && (360 + rotX) < 135) compassFacing = "West (Towards negative X) ";
		else if((360 + rotX) > 135 && (360 + rotX) < 225) compassFacing = "North (Towards negative Z) ";
		else if((360 + rotX) > 225 && (360 + rotX) < 315) compassFacing = "East (Towards positive X) ";
	}
	facing << "Facing: " << compassFacing << "(" << rotX  << " / " << rotY << ")";
	return facing.str();
}

std::string getDebugBiomeString() {
	TilePos coords = *new TilePos(currentLevel->getLocalPlayer()->x, currentLevel->getLocalPlayer()->y, currentLevel->getLocalPlayer()->z);
	return "Biome: " + biomeTypeNames[tileSource->getBiome(coords)->getBiomeType()];
}

std::string getDebugLightString() {
	std::stringstream light;
	TilePos coords(currentLevel->getLocalPlayer()->x, currentLevel->getLocalPlayer()->y, currentLevel->getLocalPlayer()->z);
	int skyLight = tileSource->getBrightness(LightLayer::Sky, coords);
	int blockLight = tileSource->getBrightness(LightLayer::Block, coords);
	int totalLight = (skyLight + blockLight <= 15) ? skyLight + blockLight : 15;
	light << "Light: " << totalLight << " (" << skyLight << " sky, " << blockLight << " block)";
	return light.str();
}

static void (*Gui$render_real)(Gui*, float, bool, int, int);
static void Gui$render_hook(Gui* gui, float a, bool b, int c, int d) {
	Gui$render_real(gui, a, b, c, d);
	
	if(debug) {
		int pxY = 1;
		font->drawTransformed(getDebugVersionString(), 1, pxY, Color::WHITE, 0, font->getLineLength(getDebugVersionString()), false, 0.8f);
		font->drawTransformed(getDebugCoordsString(), 1, pxY += 8, Color::WHITE, 0, font->getLineLength(getDebugCoordsString()), false, 0.8f);
		font->drawTransformed(getDebugBlockCoordsString(), 1, pxY += 8, Color::WHITE, 0, font->getLineLength(getDebugBlockCoordsString()), false, 0.8f);
		font->drawTransformed(getDebugChunkCoordsString(), 1, pxY += 8, Color::WHITE, 0, font->getLineLength(getDebugChunkCoordsString()), false, 0.8f);
		font->drawTransformed(getDebugFacingString(), 1, pxY += 8, Color::WHITE, 0, font->getLineLength(getDebugFacingString()), false, 0.8f);
		font->drawTransformed(getDebugBiomeString(), 1, pxY += 8, Color::WHITE, 0, font->getLineLength(getDebugBiomeString()),  false, 0.8f);
		//font->drawTransformed(getDebugLightString(), 1, pxY += 8, Color::WHITE, 0, font->getLineLength(getDebugLightString()), false, 0.8f);
	}
	if(!debugButton) {
		debugButton = new Button(0, "F3", false);
		debugButton->x = AppPlatform::getScreenWidth() / AppPlatform::getPixelsPerMillimeter() * 3 + 25;
		debugButton ->y = 1;
		debugButton->width = 18;
		debugButton ->height = 18;
	}
	debugButton->render(minecraftClient, 0, 0);
}

static void (*mouseDown_real)(int, int, int);
static void mouseDown_hook(int idk, int x, int y) {
	mouseDown_real(idk, x, y);
	if(debugButton && debugButton->isInside(x / 4, y / 4)) debug = !debug;
}

static void (*MinecraftClient$leaveGame_real)(MinecraftClient*, bool, bool);
static void MinecraftClient$leaveGame_hook(MinecraftClient* mc, bool a, bool b) {
	MinecraftClient$leaveGame_real(mc, a, b);
	debugButton = NULL;
}

static void (*Font$Font_real)(Font*, Options*, std::string const&, Textures*);
static void Font$Font_hook(Font* fnt, Options* op, std::string const& str, Textures* tex) {
	Font$Font_real(fnt, op, str, tex);
	font = fnt;
}

static void (*Level$onSourceCreated_real)(Level*, TileSource*);
static void Level$onSourceCreated_hook(Level* lvl, TileSource* ts) {
	Level$onSourceCreated_real(lvl, ts);
	currentLevel = lvl;
	tileSource = ts;
}

static void (*Gui$Gui_real)(Gui*, MinecraftClient*);
static void Gui$Gui_hook(Gui* gui, MinecraftClient* mc) {
	Gui$Gui_real(gui, mc);
	minecraftClient = mc;
}

static void(*CreativeInventoryScreen$populateItem_real)(Item*, int, int);
static void CreativeInventoryScreen$populateItem_hook(Item* item, int count, int damage) {
	CreativeInventoryScreen$populateItem_real(item, count, damage);
	if(item == Item::items[383] && damage == 40) {
		CreativeInventoryScreen$populateItem_real(Item::items[383], 1, 41);
		CreativeInventoryScreen$populateItem_real(Item::items[383], 1, 42);
	}
}

JNIEXPORT jint JNICALL Java_net_zhuoweizhang_pokerface_PokerFace_mprotect(JNIEnv* env, jclass clazz, jlong addr, jlong len, jint prot) {
	return mprotect((void *)(uintptr_t) addr, len, prot);
}

JNIEXPORT jlong JNICALL Java_net_zhuoweizhang_pokerface_PokerFace_sysconf(JNIEnv* env, jclass clazz, jint name) {
	long result = sysconf(name);
	return result;
}

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
	void *handle = dlopen("libminecraftpe.so", RTLD_LAZY);
	
	void* Font$$Font = dlsym(handle, "_ZN4FontC1EP7OptionsRKSsP8Textures");
	void* Gui$$Gui = dlsym(handle, "_ZN3GuiC2ER15MinecraftClient");
	MSHookFunction(Font$$Font, (void*) &Font$Font_hook, (void**) &Font$Font_real);
	MSHookFunction(Gui$$Gui, (void*) &Gui$Gui_hook, (void**) &Gui$Gui_real);
	MSHookFunction((void*) &mouseDown, (void*) &mouseDown_hook, (void**) &mouseDown_real);
	MSHookFunction((void*) &Gui::render, (void*) &Gui$render_hook, (void**) &Gui$render_real);
	MSHookFunction((void*) &Level::onSourceCreated, (void*) &Level$onSourceCreated_hook, (void**) &Level$onSourceCreated_real);
	MSHookFunction((void*) CreativeInventoryScreen::populateItem, (void*) &CreativeInventoryScreen$populateItem_hook, (void**) &CreativeInventoryScreen$populateItem_real);
	
	return JNI_VERSION_1_2;
}
