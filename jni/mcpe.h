#pragma once

#include <string>
#include <memory>
#include <map>

class LevelSettings;
class Textures;
class Options;

class TilePos {
public:
	int x;
	int y;
	int z;
	
	TilePos(float, float, float);
};

class Common {
public:
	static std::string getGameVersionString();
	static std::string getGameVersionStringNet();
};

class Entity {
public:
	char filler[24];
	float x;
	float y;
	float z;
	char filler2[48];
	float rotX;
	float rotY;
};

class Mob : public Entity {};

class Player : public Mob {};

class LocalPlayer : public Player {};

class Color {
public:
	static Color const WHITE;
};

class GuiElement {
	
};

class Font {
public:
	Font(Options*, std::string const&, Textures*);

	void drawTransformed(std::string const&, float, float, Color const&, float, float, bool, float);
	int getLineLength(std::string const&) const;
};

class MinecraftClient {
public:
	void leaveGame(bool, bool);
};

class Button {
public:
	char filler[68];
	int x;
	int y;
	int width;
	int height;
	Button(int, std::string const&, bool);
	void render(MinecraftClient*, int, int);
	bool isInside(int, int);
};

class Gui {
public:
	void render(float, bool, int, int);
};

class Biome {
public:
	enum BiomeType {
		Beach,
		Desert,
		ExtremeHills,
		Flat,
		Forest,
		Hell,
		Ice,
		Jungle,
		Mesa,
		MushroomIsland,
		Ocean,
		Plain,
		River,
		Savanna,
		StoneBeach,
		Swamp,
		Taiga,
		TheEnd
	};
	
	Biome::BiomeType getBiomeType();
};

std::map<Biome::BiomeType, std::string> biomeTypeNames = {
	{Biome::BiomeType::Beach, "Beach"},
	{Biome::BiomeType::Desert, "Desert"},
	{Biome::BiomeType::ExtremeHills, "Extreme Hills"},
	{Biome::BiomeType::Flat, "Flat"},
	{Biome::BiomeType::Forest, "Forest"},
	{Biome::BiomeType::Hell, "Hell"},
	{Biome::BiomeType::Ice, "Ice"},
	{Biome::BiomeType::Jungle, "Jungle"},
	{Biome::BiomeType::Mesa, "Mesa"},
	{Biome::BiomeType::MushroomIsland, "Mushroom Island"},
	{Biome::BiomeType::Ocean, "Ocean"},
	{Biome::BiomeType::Plain, "Plains"},
	{Biome::BiomeType::River, "River"},
	{Biome::BiomeType::Savanna, "Savanna"},
	{Biome::BiomeType::StoneBeach, "Stone Beach"},
	{Biome::BiomeType::Swamp, "Swamp"},
	{Biome::BiomeType::Taiga, "Taiga"},
	{Biome::BiomeType::TheEnd, "The End"}
};

class LightLayer {
public:
	static const LightLayer Sky;
	static const LightLayer Block;
};

class TileSource {
public:
	int getBrightness(LightLayer const&, TilePos const&);
	Biome* getBiome(TilePos const&);
};

class Level {
public:
	void onSourceCreated(TileSource*);
	LocalPlayer* getLocalPlayer();
	int getDifficulty() const;
};

void mouseDown(int, int, int);

class AppPlatform {
public:
	static int getScreenWidth();
	static float getPixelsPerMillimeter();
};

class Item {
public:
	static Item* items[512];
};

class CreativeInventoryScreen {
public:
	static void populateItem(Item*, int, int);
};
