	.syntax unified
	.arch armv7-a
	.eabi_attribute 27, 3
	.fpu vfpv3-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.thumb
	.file	"main.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZL14Font$Font_hookP4FontP7OptionsRKSsP8Textures,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14Font$Font_hookP4FontP7OptionsRKSsP8Textures, %function
_ZL14Font$Font_hookP4FontP7OptionsRKSsP8Textures:
	.fnstart
.LFB2576:
	.file 1 "jni/main.cpp"
	.loc 1 122 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -4
	.cfi_offset 6, -8
	.cfi_offset 5, -12
	.cfi_offset 4, -16
	.loc 1 122 0
	mov	r5, r0
	.loc 1 123 0
	ldr	r4, .L2
.LPIC0:
	add	r4, pc
	ldr	r6, [r4, #0]
	blx	r6
.LVL1:
	.loc 1 124 0
	str	r5, [r4, #4]
	.loc 1 125 0
	pop	{r4, r5, r6, pc}
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+4)
	.cfi_endproc
.LFE2576:
	.fnend
	.size	_ZL14Font$Font_hookP4FontP7OptionsRKSsP8Textures, .-_ZL14Font$Font_hookP4FontP7OptionsRKSsP8Textures
	.section	.text._ZL26Level$onSourceCreated_hookP5LevelP10TileSource,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL26Level$onSourceCreated_hookP5LevelP10TileSource, %function
_ZL26Level$onSourceCreated_hookP5LevelP10TileSource:
	.fnstart
.LFB2577:
	.loc 1 128 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
.LCFI1:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -4
	.cfi_offset 6, -8
	.cfi_offset 5, -12
	.cfi_offset 4, -16
	.loc 1 128 0
	mov	r6, r0
	.loc 1 129 0
	ldr	r4, .L5
	.loc 1 128 0
	mov	r5, r1
	.loc 1 129 0
.LPIC2:
	add	r4, pc
	ldr	r3, [r4, #8]
	blx	r3
.LVL3:
	.loc 1 130 0
	str	r6, [r4, #12]
	.loc 1 131 0
	str	r5, [r4, #16]
	.loc 1 132 0
	pop	{r4, r5, r6, pc}
.L6:
	.align	2
.L5:
	.word	.LANCHOR0-(.LPIC2+4)
	.cfi_endproc
.LFE2577:
	.fnend
	.size	_ZL26Level$onSourceCreated_hookP5LevelP10TileSource, .-_ZL26Level$onSourceCreated_hookP5LevelP10TileSource
	.section	.text._ZL12Gui$Gui_hookP3GuiP15MinecraftClient,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12Gui$Gui_hookP3GuiP15MinecraftClient, %function
_ZL12Gui$Gui_hookP3GuiP15MinecraftClient:
	.fnstart
.LFB2578:
	.loc 1 135 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4:
	push	{r3, r4, r5, lr}
	.save {r3, r4, r5, lr}
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -4
	.cfi_offset 5, -8
	.cfi_offset 4, -12
	.cfi_offset 3, -16
	.loc 1 135 0
	mov	r5, r1
	.loc 1 136 0
	ldr	r4, .L8
.LPIC5:
	add	r4, pc
	ldr	r3, [r4, #20]
	blx	r3
.LVL5:
	.loc 1 137 0
	str	r5, [r4, #24]
	.loc 1 138 0
	pop	{r3, r4, r5, pc}
.L9:
	.align	2
.L8:
	.word	.LANCHOR0-(.LPIC5+4)
	.cfi_endproc
.LFE2578:
	.fnend
	.size	_ZL12Gui$Gui_hookP3GuiP15MinecraftClient, .-_ZL12Gui$Gui_hookP3GuiP15MinecraftClient
	.section	.text._Z21getDebugVersionStringv,"ax",%progbits
	.align	2
	.global	_Z21getDebugVersionStringv
	.thumb
	.thumb_func
	.type	_Z21getDebugVersionStringv, %function
_Z21getDebugVersionStringv:
	.fnstart
.LFB2568:
	.loc 1 25 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6:
	push	{r4, r5, lr}
	.save {r4, r5, lr}
.LCFI3:
	.cfi_def_cfa_offset 12
	.cfi_offset 14, -4
	.cfi_offset 5, -8
	.cfi_offset 4, -12
	.pad #12
	sub	sp, sp, #12
.LCFI4:
	.cfi_def_cfa_offset 24
	.loc 1 25 0
	mov	r4, r0
	.loc 1 26 0
	add	r0, sp, #4
.LVL7:
	bl	_ZN6Common20getGameVersionStringEv(PLT)
.LVL8:
.LBB2237:
.LBB2238:
.LBB2239:
	.file 2 "/data/data/com.aide.ui/files/ndksupport-20141105/android-ndk-aide/sources/cxx-stl/gnu-libstdc++/4.6/include/bits/basic_string.h"
	.loc 2 1286 0
	ldr	r2, .L25
	movs	r3, #25
	movs	r1, #0
.LPIC7:
	add	r2, pc
	add	r0, sp, #4
.LVL9:
	bl	_ZNSs6insertEjPKcj(PLT)
.LVL10:
.LBE2239:
.LBE2238:
.LBB2240:
.LBB2241:
.LBB2242:
.LBB2243:
.LBB2244:
	.loc 2 267 0
	ldr	r3, .L25+4
.LBE2244:
.LBE2243:
.LBE2242:
.LBB2247:
.LBB2248:
	.loc 2 292 0
.LPIC9:
	add	r3, pc
	ldr	r3, [r3]
.LBE2248:
.LBE2247:
.LBB2250:
.LBB2246:
.LBB2245:
	.loc 2 267 0
	ldr	r2, [r0, #0]
	str	r2, [r4, #0]
.LVL11:
.LBE2245:
.LBE2246:
.LBE2250:
.LBB2251:
.LBB2249:
	.loc 2 292 0
	add	r2, r3, #12
	str	r2, [r0, #0]
.LVL12:
.LBE2249:
.LBE2251:
.LBE2241:
.LBE2240:
.LBE2237:
.LBB2252:
.LBB2253:
.LBB2254:
.LBB2255:
.LBB2256:
	.loc 2 288 0
	ldr	r2, [sp, #4]
.LBE2256:
.LBE2255:
.LBE2254:
.LBE2253:
	.loc 2 534 0
	sub	r0, r2, #12
.LVL13:
.LBB2264:
.LBB2257:
.LBB2258:
	.loc 2 235 0
	cmp	r0, r3
	bne	.L24
.LVL14:
.L10:
.LBE2258:
.LBE2257:
.LBE2264:
.LBE2252:
	.loc 1 27 0
	mov	r0, r4
	add	sp, sp, #12
	pop	{r4, r5, pc}
.LVL15:
.L24:
.LBB2266:
.LBB2265:
.LBB2263:
.LBB2262:
.LBB2259:
.LBB2260:
.LBB2261:
	.file 3 "/data/data/com.aide.ui/files/ndksupport-20141105/android-ndk-aide/sources/cxx-stl/gnu-libstdc++/4.6/include/ext/atomicity.h"
	.loc 3 48 0
	subs	r2, r2, #4
.LVL16:
	mov	r3, #-1
	dmb	sy
	.LSYT211:
	ldrex	r1, [r2]
	add	r5, r1, r3
	strex	r1, r5, [r2]
	teq	r1, #0
	bne	.LSYT211
	sub	r1, r5, r3
	.LSYB211:
	dmb	sy
.LBE2261:
.LBE2260:
.LBE2259:
	.loc 2 240 0
	cmp	r1, #0
	bgt	.L10
	.loc 2 244 0
	mov	r1, sp
	bl	_ZNSs4_Rep10_M_destroyERKSaIcE(PLT)
.LVL17:
	b	.L10
.L26:
	.align	2
.L25:
	.word	.LC0-(.LPIC7+4)
	.word	_ZNSs4_Rep20_S_empty_rep_storageE(GOT_PREL)+(.-(.LPIC9+4))
.LBE2262:
.LBE2263:
.LBE2265:
.LBE2266:
	.cfi_endproc
.LFE2568:
	.fnend
	.size	_Z21getDebugVersionStringv, .-_Z21getDebugVersionStringv
	.section	.text._Z20getDebugCoordsStringv,"ax",%progbits
	.align	2
	.global	_Z20getDebugCoordsStringv
	.thumb
	.thumb_func
	.type	_Z20getDebugCoordsStringv, %function
_Z20getDebugCoordsStringv:
	.fnstart
.LFB2569:
	.loc 1 29 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL18:
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
.LCFI5:
	.cfi_def_cfa_offset 20
	.cfi_offset 14, -4
	.cfi_offset 7, -8
	.cfi_offset 6, -12
	.cfi_offset 5, -16
	.cfi_offset 4, -20
	fstmfdd	sp!, {d8, d9}
	.vsave {d8, d9}
.LCFI6:
	.cfi_def_cfa_offset 36
	.cfi_offset 82, -28
	.cfi_offset 80, -36
	.pad #196
	sub	sp, sp, #196
.LCFI7:
	.cfi_def_cfa_offset 232
.LBB2352:
	.loc 1 31 0
	ldr	r7, .L41
	.loc 1 30 0
	movs	r1, #24
.LBE2352:
	.loc 1 29 0
	mov	r6, r0
.LBB2427:
	.loc 1 30 0
	add	r0, sp, #4
.LVL19:
	.loc 1 31 0
.LPIC10:
	add	r7, pc
	.loc 1 30 0
	bl	_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(PLT)
.LBB2353:
.LBB2354:
	.file 4 "/data/data/com.aide.ui/files/ndksupport-20141105/android-ndk-aide/sources/cxx-stl/gnu-libstdc++/4.6/include/ostream"
	.loc 4 515 0
	ldr	r5, .L41+4
.LBE2354:
.LBE2353:
	.loc 1 31 0
	ldr	r0, [r7, #12]
	bl	_ZN5Level14getLocalPlayerEv(PLT)
	.loc 1 32 0
	ldr	r3, [r7, #12]
.LBB2358:
.LBB2355:
	.loc 4 515 0
.LPIC14:
	add	r5, pc
.LBE2355:
.LBE2358:
.LBE2427:
	.loc 1 29 0
	ldr	r4, .L41+8
.LPIC16:
	add	r4, pc
.LVL20:
.LBB2428:
	.loc 1 31 0
	flds	s16, [r0, #24]
.LVL21:
	.loc 1 32 0
	mov	r0, r3
.LVL22:
	bl	_ZN5Level14getLocalPlayerEv(PLT)
	.loc 1 33 0
	ldr	r3, [r7, #12]
	.loc 1 32 0
	flds	s17, [r0, #28]
.LVL23:
	.loc 1 33 0
	mov	r0, r3
.LVL24:
	bl	_ZN5Level14getLocalPlayerEv(PLT)
.LBB2359:
.LBB2360:
	.loc 4 515 0
	ldr	r1, .L41+12
	movs	r2, #5
.LPIC13:
	add	r1, pc
.LBE2360:
.LBE2359:
	.loc 1 33 0
	mov	r3, r0
.LBB2363:
.LBB2361:
	.loc 4 515 0
	add	r0, sp, #12
.LBE2361:
.LBE2363:
	.loc 1 33 0
	flds	s18, [r3, #32]
.LVL25:
.LBB2364:
.LBB2362:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL26:
.LBE2362:
.LBE2364:
.LBB2365:
.LBB2366:
	.loc 4 219 0
	fcvtds	d7, s16
	add	r0, sp, #12
.LVL27:
	fmrrd	r2, r3, d7
	bl	_ZNSo9_M_insertIdEERSoT_(PLT)
.LVL28:
.LBE2366:
.LBE2365:
.LBB2368:
.LBB2356:
	.loc 4 515 0
	mov	r1, r5
	movs	r2, #3
.LBE2356:
.LBE2368:
.LBB2369:
.LBB2367:
	.loc 4 219 0
	mov	r7, r0
.LVL29:
.LBE2367:
.LBE2369:
.LBB2370:
.LBB2357:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL30:
.LBE2357:
.LBE2370:
.LBB2371:
.LBB2372:
	.loc 4 219 0
	fcvtds	d7, s17
	mov	r0, r7
	fmrrd	r2, r3, d7
	bl	_ZNSo9_M_insertIdEERSoT_(PLT)
.LBE2372:
.LBE2371:
.LBB2374:
.LBB2375:
	.loc 4 515 0
	mov	r1, r5
	movs	r2, #3
.LBE2375:
.LBE2374:
.LBB2377:
.LBB2373:
	.loc 4 219 0
	mov	r7, r0
.LVL31:
.LBE2373:
.LBE2377:
.LBB2378:
.LBB2376:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL32:
.LBE2376:
.LBE2378:
.LBB2379:
.LBB2380:
	.loc 4 219 0
	fcvtds	d9, s18
.LVL33:
	mov	r0, r7
	fmrrd	r2, r3, d9
	bl	_ZNSo9_M_insertIdEERSoT_(PLT)
.LVL34:
.LBE2380:
.LBE2379:
.LBB2381:
.LBB2382:
	.file 5 "/data/data/com.aide.ui/files/ndksupport-20141105/android-ndk-aide/sources/cxx-stl/gnu-libstdc++/4.6/include/sstream"
	.loc 5 564 0
	mov	r0, r6
	add	r1, sp, #16
	bl	_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(PLT)
.LVL35:
.LBE2382:
.LBE2381:
.LBB2383:
.LBB2384:
.LBB2385:
	.loc 5 545 0 discriminator 3
	ldr	r3, .L41+16
.LBB2386:
.LBB2387:
.LBB2388:
.LBB2389:
.LBB2390:
.LBB2391:
.LBB2392:
.LBB2393:
	.loc 2 288 0
	ldr	r2, [sp, #52]
.LBE2393:
.LBE2392:
.LBE2391:
.LBE2390:
.LBE2389:
.LBE2388:
.LBE2387:
.LBE2386:
	.loc 5 545 0 discriminator 3
	ldr	r3, [r4, r3]
	add	r0, r3, #12
	.loc 5 545 0 is_stmt 0 discriminator 9
	add	r1, r3, #52
	.loc 5 545 0 discriminator 12
	adds	r3, r3, #32
	str	r3, [sp, #12]
.LVL36:
.LBB2417:
.LBB2413:
.LBB2409:
	.loc 5 60 0 is_stmt 1
	ldr	r3, .L41+20
.LBE2409:
.LBE2413:
.LBE2417:
	.loc 5 545 0 discriminator 3
	str	r0, [sp, #4]
.LBB2418:
.LBB2414:
.LBB2410:
.LBB2403:
	.loc 2 534 0
	sub	r0, r2, #12
.LBE2403:
.LBE2410:
.LBE2414:
.LBE2418:
	.loc 5 545 0 discriminator 9
	str	r1, [sp, #56]
.LBB2419:
.LBB2415:
.LBB2411:
	.loc 5 60 0
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [sp, #16]
.LVL37:
.LBB2404:
.LBB2401:
.LBB2394:
.LBB2395:
	.loc 2 235 0
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	cmp	r0, r3
	bne	.L40
.LVL38:
.L35:
.LBE2395:
.LBE2394:
.LBE2401:
.LBE2404:
.LBB2405:
.LBB2406:
.LBB2407:
	.file 6 "/data/data/com.aide.ui/files/ndksupport-20141105/android-ndk-aide/sources/cxx-stl/gnu-libstdc++/4.6/include/streambuf"
	.loc 6 196 0
	ldr	r3, .L41+28
	add	r0, sp, #44
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [sp, #16]
	bl	_ZNSt6localeD1Ev(PLT)
.LBE2407:
.LBE2406:
.LBE2405:
.LBE2411:
.LBE2415:
.LBE2419:
	.loc 5 545 0 discriminator 15
	ldr	r3, .L41+32
	add	r0, sp, #4
.LVL39:
	ldr	r1, [r4, r3]
	adds	r1, r1, #4
	bl	_ZNSdD2Ev(PLT)
.LVL40:
.LBB2420:
.LBB2421:
.LBB2422:
	.file 7 "/data/data/com.aide.ui/files/ndksupport-20141105/android-ndk-aide/sources/cxx-stl/gnu-libstdc++/4.6/include/bits/basic_ios.h"
	.loc 7 274 0
	ldr	r3, .L41+36
	add	r0, sp, #192
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [r0, #-136]!
	bl	_ZNSt8ios_baseD2Ev(PLT)
.LBE2422:
.LBE2421:
.LBE2420:
.LBE2385:
.LBE2384:
.LBE2383:
.LBE2428:
	.loc 1 36 0
	mov	r0, r6
	add	sp, sp, #196
	fldmfdd	sp!, {d8, d9}
	pop	{r4, r5, r6, r7, pc}
.LVL41:
.L40:
.LBB2429:
.LBB2426:
.LBB2425:
.LBB2424:
.LBB2423:
.LBB2416:
.LBB2412:
.LBB2408:
.LBB2402:
.LBB2400:
.LBB2399:
.LBB2396:
.LBB2397:
.LBB2398:
	.loc 3 48 0
	subs	r2, r2, #4
.LVL42:
	mov	r3, #-1
	dmb	sy
	.LSYT559:
	ldrex	r1, [r2]
	add	r5, r1, r3
	strex	r1, r5, [r2]
	teq	r1, #0
	bne	.LSYT559
	sub	r1, r5, r3
	.LSYB559:
	dmb	sy
.LBE2398:
.LBE2397:
.LBE2396:
	.loc 2 240 0
	cmp	r1, #0
	bgt	.L35
	.loc 2 244 0
	mov	r1, sp
	bl	_ZNSs4_Rep10_M_destroyERKSaIcE(PLT)
.LVL43:
	b	.L35
.L42:
	.align	2
.L41:
	.word	.LANCHOR0-(.LPIC10+4)
	.word	.LC2-(.LPIC14+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	.LC1-(.LPIC13+4)
	.word	_ZTVSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZNSs4_Rep20_S_empty_rep_storageE(GOT)
	.word	_ZTVSt15basic_streambufIcSt11char_traitsIcEE(GOT)
	.word	_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt9basic_iosIcSt11char_traitsIcEE(GOT)
.LBE2399:
.LBE2400:
.LBE2402:
.LBE2408:
.LBE2412:
.LBE2416:
.LBE2423:
.LBE2424:
.LBE2425:
.LBE2426:
.LBE2429:
	.cfi_endproc
.LFE2569:
	.fnend
	.size	_Z20getDebugCoordsStringv, .-_Z20getDebugCoordsStringv
	.section	.text._Z25getDebugBlockCoordsStringv,"ax",%progbits
	.align	2
	.global	_Z25getDebugBlockCoordsStringv
	.thumb
	.thumb_func
	.type	_Z25getDebugBlockCoordsStringv, %function
_Z25getDebugBlockCoordsStringv:
	.fnstart
.LFB2570:
	.loc 1 38 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL44:
	push	{r4, r5, r6, r7, r8, r9, lr}
	.save {r4, r5, r6, r7, r8, r9, lr}
.LCFI8:
	.cfi_def_cfa_offset 28
	.cfi_offset 14, -4
	.cfi_offset 9, -8
	.cfi_offset 8, -12
	.cfi_offset 7, -16
	.cfi_offset 6, -20
	.cfi_offset 5, -24
	.cfi_offset 4, -28
	.pad #196
	sub	sp, sp, #196
.LCFI9:
	.cfi_def_cfa_offset 224
.LBB2509:
	.loc 1 40 0
	ldr	r8, .L57
	.loc 1 39 0
	movs	r1, #24
.LBE2509:
	.loc 1 38 0
	mov	r6, r0
.LBB2574:
	.loc 1 39 0
	add	r0, sp, #4
.LVL45:
	.loc 1 40 0
.LPIC17:
	add	r8, pc
	.loc 1 39 0
	bl	_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(PLT)
.LBB2510:
.LBB2511:
	.loc 4 515 0
	ldr	r5, .L57+4
.LBE2511:
.LBE2510:
	.loc 1 40 0
	ldr	r0, [r8, #12]
	bl	_ZN5Level14getLocalPlayerEv(PLT)
	.loc 1 41 0
	ldr	r3, [r8, #12]
.LBB2515:
.LBB2512:
	.loc 4 515 0
.LPIC21:
	add	r5, pc
.LBE2512:
.LBE2515:
.LBE2574:
	.loc 1 38 0
	ldr	r4, .L57+8
.LPIC23:
	add	r4, pc
.LVL46:
.LBB2575:
	.loc 1 40 0
	flds	s15, [r0, #24]
	ftosizs	s15, s15
	.loc 1 41 0
	mov	r0, r3
	.loc 1 40 0
	fmrs	r7, s15	@ int
.LVL47:
	.loc 1 41 0
	bl	_ZN5Level14getLocalPlayerEv(PLT)
.LVL48:
	.loc 1 42 0
	ldr	r3, [r8, #12]
	.loc 1 41 0
	flds	s15, [r0, #28]
	ftosizs	s15, s15
	.loc 1 42 0
	mov	r0, r3
	.loc 1 41 0
	fmrs	r9, s15	@ int
.LVL49:
	.loc 1 42 0
	bl	_ZN5Level14getLocalPlayerEv(PLT)
.LVL50:
.LBB2516:
.LBB2517:
	.loc 4 515 0
	ldr	r1, .L57+12
	movs	r2, #7
.LPIC20:
	add	r1, pc
.LBE2517:
.LBE2516:
	.loc 1 42 0
	mov	r3, r0
	flds	s15, [r3, #32]
	ftosizs	s15, s15
.LBB2520:
.LBB2518:
	.loc 4 515 0
	add	r0, sp, #12
.LBE2518:
.LBE2520:
	.loc 1 42 0
	fmrs	r8, s15	@ int
.LVL51:
.LBB2521:
.LBB2519:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL52:
.LBE2519:
.LBE2521:
	.loc 1 43 0
	mov	r1, r7
	add	r0, sp, #12
.LVL53:
	bl	_ZNSolsEi(PLT)
.LVL54:
.LBB2522:
.LBB2513:
	.loc 4 515 0
	movs	r2, #1
	mov	r1, r5
.LBE2513:
.LBE2522:
	.loc 1 43 0
	mov	r7, r0
.LVL55:
.LBB2523:
.LBB2514:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL56:
.LBE2514:
.LBE2523:
	.loc 1 43 0
	mov	r0, r7
	mov	r1, r9
	bl	_ZNSolsEi(PLT)
.LBB2524:
.LBB2525:
	.loc 4 515 0
	movs	r2, #1
	mov	r1, r5
.LBE2525:
.LBE2524:
	.loc 1 43 0
	mov	r7, r0
.LVL57:
.LBB2527:
.LBB2526:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL58:
.LBE2526:
.LBE2527:
	.loc 1 43 0
	mov	r1, r8
	mov	r0, r7
	bl	_ZNSolsEi(PLT)
.LVL59:
.LBB2528:
.LBB2529:
	.loc 5 564 0
	mov	r0, r6
	add	r1, sp, #16
	bl	_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(PLT)
.LVL60:
.LBE2529:
.LBE2528:
.LBB2530:
.LBB2531:
.LBB2532:
	.loc 5 545 0 discriminator 3
	ldr	r3, .L57+16
.LBB2533:
.LBB2534:
.LBB2535:
.LBB2536:
.LBB2537:
.LBB2538:
.LBB2539:
.LBB2540:
	.loc 2 288 0
	ldr	r2, [sp, #52]
.LBE2540:
.LBE2539:
.LBE2538:
.LBE2537:
.LBE2536:
.LBE2535:
.LBE2534:
.LBE2533:
	.loc 5 545 0 discriminator 3
	ldr	r3, [r4, r3]
	add	r0, r3, #12
	.loc 5 545 0 is_stmt 0 discriminator 9
	add	r1, r3, #52
	.loc 5 545 0 discriminator 12
	adds	r3, r3, #32
	str	r3, [sp, #12]
.LVL61:
.LBB2564:
.LBB2560:
.LBB2556:
	.loc 5 60 0 is_stmt 1
	ldr	r3, .L57+20
.LBE2556:
.LBE2560:
.LBE2564:
	.loc 5 545 0 discriminator 3
	str	r0, [sp, #4]
.LBB2565:
.LBB2561:
.LBB2557:
.LBB2550:
	.loc 2 534 0
	sub	r0, r2, #12
.LBE2550:
.LBE2557:
.LBE2561:
.LBE2565:
	.loc 5 545 0 discriminator 9
	str	r1, [sp, #56]
.LBB2566:
.LBB2562:
.LBB2558:
	.loc 5 60 0
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [sp, #16]
.LVL62:
.LBB2551:
.LBB2548:
.LBB2541:
.LBB2542:
	.loc 2 235 0
	ldr	r3, .L57+24
	ldr	r3, [r4, r3]
	cmp	r0, r3
	bne	.L56
.LVL63:
.L51:
.LBE2542:
.LBE2541:
.LBE2548:
.LBE2551:
.LBB2552:
.LBB2553:
.LBB2554:
	.loc 6 196 0
	ldr	r3, .L57+28
	add	r0, sp, #44
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [sp, #16]
	bl	_ZNSt6localeD1Ev(PLT)
.LBE2554:
.LBE2553:
.LBE2552:
.LBE2558:
.LBE2562:
.LBE2566:
	.loc 5 545 0 discriminator 15
	ldr	r3, .L57+32
	add	r0, sp, #4
.LVL64:
	ldr	r1, [r4, r3]
	adds	r1, r1, #4
	bl	_ZNSdD2Ev(PLT)
.LVL65:
.LBB2567:
.LBB2568:
.LBB2569:
	.loc 7 274 0
	ldr	r3, .L57+36
	add	r0, sp, #192
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [r0, #-136]!
	bl	_ZNSt8ios_baseD2Ev(PLT)
.LBE2569:
.LBE2568:
.LBE2567:
.LBE2532:
.LBE2531:
.LBE2530:
.LBE2575:
	.loc 1 45 0
	mov	r0, r6
	add	sp, sp, #196
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL66:
.L56:
.LBB2576:
.LBB2573:
.LBB2572:
.LBB2571:
.LBB2570:
.LBB2563:
.LBB2559:
.LBB2555:
.LBB2549:
.LBB2547:
.LBB2546:
.LBB2543:
.LBB2544:
.LBB2545:
	.loc 3 48 0
	subs	r2, r2, #4
.LVL67:
	mov	r3, #-1
	dmb	sy
	.LSYT894:
	ldrex	r1, [r2]
	add	r5, r1, r3
	strex	r1, r5, [r2]
	teq	r1, #0
	bne	.LSYT894
	sub	r1, r5, r3
	.LSYB894:
	dmb	sy
.LBE2545:
.LBE2544:
.LBE2543:
	.loc 2 240 0
	cmp	r1, #0
	bgt	.L51
	.loc 2 244 0
	mov	r1, sp
	bl	_ZNSs4_Rep10_M_destroyERKSaIcE(PLT)
.LVL68:
	b	.L51
.L58:
	.align	2
.L57:
	.word	.LANCHOR0-(.LPIC17+4)
	.word	.LC4-(.LPIC21+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.word	.LC3-(.LPIC20+4)
	.word	_ZTVSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZNSs4_Rep20_S_empty_rep_storageE(GOT)
	.word	_ZTVSt15basic_streambufIcSt11char_traitsIcEE(GOT)
	.word	_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt9basic_iosIcSt11char_traitsIcEE(GOT)
.LBE2546:
.LBE2547:
.LBE2549:
.LBE2555:
.LBE2559:
.LBE2563:
.LBE2570:
.LBE2571:
.LBE2572:
.LBE2573:
.LBE2576:
	.cfi_endproc
.LFE2570:
	.fnend
	.size	_Z25getDebugBlockCoordsStringv, .-_Z25getDebugBlockCoordsStringv
	.section	.text._Z25getDebugChunkCoordsStringv,"ax",%progbits
	.align	2
	.global	_Z25getDebugChunkCoordsStringv
	.thumb
	.thumb_func
	.type	_Z25getDebugChunkCoordsStringv, %function
_Z25getDebugChunkCoordsStringv:
	.fnstart
.LFB2571:
	.loc 1 47 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL69:
	push	{r4, r5, r6, r7, r8, r9, sl, lr}
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
.LCFI10:
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -4
	.cfi_offset 10, -8
	.cfi_offset 9, -12
	.cfi_offset 8, -16
	.cfi_offset 7, -20
	.cfi_offset 6, -24
	.cfi_offset 5, -28
	.cfi_offset 4, -32
	.pad #192
	sub	sp, sp, #192
.LCFI11:
	.cfi_def_cfa_offset 224
.LBB2692:
	.loc 1 49 0
	ldr	r6, .L73
	.loc 1 48 0
	movs	r1, #24
.LBE2692:
	.loc 1 47 0
	mov	sl, r0
.LBB2769:
	.loc 1 48 0
	add	r0, sp, #4
.LVL70:
	.loc 1 49 0
.LPIC24:
	add	r6, pc
	.loc 1 48 0
	bl	_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(PLT)
.LBB2693:
.LBB2694:
	.loc 4 515 0
	ldr	r5, .L73+4
.LBE2694:
.LBE2693:
	.loc 1 49 0
	ldr	r0, [r6, #12]
	bl	_ZN5Level14getLocalPlayerEv(PLT)
	.loc 1 50 0
	ldr	r3, [r6, #12]
.LBB2698:
.LBB2695:
	.loc 4 515 0
.LPIC28:
	add	r5, pc
.LBE2695:
.LBE2698:
.LBE2769:
	.loc 1 47 0
	ldr	r4, .L73+8
.LPIC33:
	add	r4, pc
.LVL71:
.LBB2770:
	.loc 1 49 0
	flds	s15, [r0, #24]
	ftosizs	s15, s15
	.loc 1 50 0
	mov	r0, r3
	.loc 1 49 0
	fmrs	r8, s15	@ int
.LVL72:
	.loc 1 50 0
	bl	_ZN5Level14getLocalPlayerEv(PLT)
.LVL73:
	.loc 1 51 0
	ldr	r3, [r6, #12]
	.loc 1 50 0
	flds	s15, [r0, #28]
	ftosizs	s15, s15
	.loc 1 51 0
	mov	r0, r3
	.loc 1 50 0
	fmrs	r7, s15	@ int
.LVL74:
	.loc 1 51 0
	bl	_ZN5Level14getLocalPlayerEv(PLT)
.LVL75:
.LBB2699:
.LBB2700:
	.loc 4 515 0
	ldr	r1, .L73+12
	movs	r2, #7
.LPIC27:
	add	r1, pc
.LBE2700:
.LBE2699:
	.loc 1 51 0
	mov	r3, r0
	flds	s15, [r3, #32]
	ftosizs	s15, s15
.LBB2703:
.LBB2701:
	.loc 4 515 0
	add	r0, sp, #12
.LBE2701:
.LBE2703:
	.loc 1 51 0
	fmrs	r6, s15	@ int
.LVL76:
.LBB2704:
.LBB2702:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL77:
.LBE2702:
.LBE2704:
	.loc 1 52 0
	and	r1, r8, #15
	add	r0, sp, #12
.LVL78:
	bl	_ZNSolsEi(PLT)
.LVL79:
.LBB2705:
.LBB2696:
	.loc 4 515 0
	movs	r2, #1
	mov	r1, r5
.LBE2696:
.LBE2705:
	.loc 1 52 0
	mov	r9, r0
.LVL80:
.LBB2706:
.LBB2697:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL81:
.LBE2697:
.LBE2706:
	.loc 1 52 0
	and	r1, r7, #15
	mov	r0, r9
	bl	_ZNSolsEi(PLT)
.LBB2707:
.LBB2708:
	.loc 4 515 0
	movs	r2, #1
	mov	r1, r5
.LBE2708:
.LBE2707:
	.loc 1 52 0
	mov	r9, r0
.LVL82:
.LBB2710:
.LBB2709:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL83:
.LBE2709:
.LBE2710:
	.loc 1 52 0
	and	r1, r6, #15
	mov	r0, r9
	bl	_ZNSolsEi(PLT)
.LBB2711:
.LBB2712:
	.loc 4 515 0
	ldr	r1, .L73+16
	movs	r2, #4
.LPIC30:
	add	r1, pc
.LBE2712:
.LBE2711:
	.loc 1 52 0
	mov	r9, r0
.LVL84:
.LBB2714:
.LBB2713:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL85:
.LBE2713:
.LBE2714:
	.loc 1 52 0
	add	r1, r8, #15
	mov	r0, r9
	bics	r8, r8, r8, asr #32
	it	cs
	movcs	r8, r1
.LVL86:
	asr	r1, r8, #4
.LVL87:
	bl	_ZNSolsEi(PLT)
.LBB2715:
.LBB2716:
	.loc 4 515 0
	movs	r2, #1
	mov	r1, r5
.LBE2716:
.LBE2715:
	.loc 1 52 0
	mov	r8, r0
.LVL88:
.LBB2718:
.LBB2717:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL89:
.LBE2717:
.LBE2718:
	.loc 1 52 0
	add	r1, r7, #15
	mov	r0, r8
	bics	r7, r7, r7, asr #32
	it	cs
	movcs	r7, r1
.LVL90:
	asrs	r1, r7, #4
.LVL91:
	bl	_ZNSolsEi(PLT)
.LBB2719:
.LBB2720:
	.loc 4 515 0
	movs	r2, #1
	mov	r1, r5
.LBE2720:
.LBE2719:
	.loc 1 52 0
	mov	r7, r0
.LVL92:
.LBB2722:
.LBB2721:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL93:
.LBE2721:
.LBE2722:
	.loc 1 52 0
	add	r1, r6, #15
	mov	r0, r7
	bics	r6, r6, r6, asr #32
	it	cs
	movcs	r6, r1
.LVL94:
	asrs	r1, r6, #4
.LVL95:
	bl	_ZNSolsEi(PLT)
.LVL96:
.LBB2723:
.LBB2724:
	.loc 5 564 0
	mov	r0, sl
	add	r1, sp, #16
	bl	_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(PLT)
.LVL97:
.LBE2724:
.LBE2723:
.LBB2725:
.LBB2726:
.LBB2727:
	.loc 5 545 0 discriminator 3
	ldr	r3, .L73+20
.LBB2728:
.LBB2729:
.LBB2730:
.LBB2731:
.LBB2732:
.LBB2733:
.LBB2734:
.LBB2735:
	.loc 2 288 0
	ldr	r2, [sp, #52]
.LBE2735:
.LBE2734:
.LBE2733:
.LBE2732:
.LBE2731:
.LBE2730:
.LBE2729:
.LBE2728:
	.loc 5 545 0 discriminator 3
	ldr	r3, [r4, r3]
	add	r0, r3, #12
	.loc 5 545 0 is_stmt 0 discriminator 9
	add	r1, r3, #52
	.loc 5 545 0 discriminator 12
	adds	r3, r3, #32
	str	r3, [sp, #12]
.LVL98:
.LBB2759:
.LBB2755:
.LBB2751:
	.loc 5 60 0 is_stmt 1
	ldr	r3, .L73+24
.LBE2751:
.LBE2755:
.LBE2759:
	.loc 5 545 0 discriminator 3
	str	r0, [sp, #4]
.LBB2760:
.LBB2756:
.LBB2752:
.LBB2745:
	.loc 2 534 0
	sub	r0, r2, #12
.LBE2745:
.LBE2752:
.LBE2756:
.LBE2760:
	.loc 5 545 0 discriminator 9
	str	r1, [sp, #56]
.LBB2761:
.LBB2757:
.LBB2753:
	.loc 5 60 0
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [sp, #16]
.LVL99:
.LBB2746:
.LBB2743:
.LBB2736:
.LBB2737:
	.loc 2 235 0
	ldr	r3, .L73+28
	ldr	r3, [r4, r3]
	cmp	r0, r3
	bne	.L72
.LVL100:
.L67:
.LBE2737:
.LBE2736:
.LBE2743:
.LBE2746:
.LBB2747:
.LBB2748:
.LBB2749:
	.loc 6 196 0
	ldr	r3, .L73+32
	add	r0, sp, #44
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [sp, #16]
	bl	_ZNSt6localeD1Ev(PLT)
.LBE2749:
.LBE2748:
.LBE2747:
.LBE2753:
.LBE2757:
.LBE2761:
	.loc 5 545 0 discriminator 15
	ldr	r3, .L73+36
	add	r0, sp, #4
.LVL101:
	ldr	r1, [r4, r3]
	adds	r1, r1, #4
	bl	_ZNSdD2Ev(PLT)
.LVL102:
.LBB2762:
.LBB2763:
.LBB2764:
	.loc 7 274 0
	ldr	r3, .L73+40
	add	r0, sp, #192
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [r0, #-136]!
	bl	_ZNSt8ios_baseD2Ev(PLT)
.LBE2764:
.LBE2763:
.LBE2762:
.LBE2727:
.LBE2726:
.LBE2725:
.LBE2770:
	.loc 1 54 0
	mov	r0, sl
	add	sp, sp, #192
	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
.LVL103:
.L72:
.LBB2771:
.LBB2768:
.LBB2767:
.LBB2766:
.LBB2765:
.LBB2758:
.LBB2754:
.LBB2750:
.LBB2744:
.LBB2742:
.LBB2741:
.LBB2738:
.LBB2739:
.LBB2740:
	.loc 3 48 0
	subs	r2, r2, #4
.LVL104:
	mov	r3, #-1
	dmb	sy
	.LSYT1302:
	ldrex	r1, [r2]
	add	r5, r1, r3
	strex	r1, r5, [r2]
	teq	r1, #0
	bne	.LSYT1302
	sub	r1, r5, r3
	.LSYB1302:
	dmb	sy
.LBE2740:
.LBE2739:
.LBE2738:
	.loc 2 240 0
	cmp	r1, #0
	bgt	.L67
	.loc 2 244 0
	mov	r1, sp
	bl	_ZNSs4_Rep10_M_destroyERKSaIcE(PLT)
.LVL105:
	b	.L67
.L74:
	.align	2
.L73:
	.word	.LANCHOR0-(.LPIC24+4)
	.word	.LC4-(.LPIC28+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+4)
	.word	.LC5-(.LPIC27+4)
	.word	.LC6-(.LPIC30+4)
	.word	_ZTVSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZNSs4_Rep20_S_empty_rep_storageE(GOT)
	.word	_ZTVSt15basic_streambufIcSt11char_traitsIcEE(GOT)
	.word	_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt9basic_iosIcSt11char_traitsIcEE(GOT)
.LBE2741:
.LBE2742:
.LBE2744:
.LBE2750:
.LBE2754:
.LBE2758:
.LBE2765:
.LBE2766:
.LBE2767:
.LBE2768:
.LBE2771:
	.cfi_endproc
.LFE2571:
	.fnend
	.size	_Z25getDebugChunkCoordsStringv, .-_Z25getDebugChunkCoordsStringv
	.section	.text._Z20getDebugFacingStringv,"ax",%progbits
	.align	2
	.global	_Z20getDebugFacingStringv
	.thumb
	.thumb_func
	.type	_Z20getDebugFacingStringv, %function
_Z20getDebugFacingStringv:
	.fnstart
.LFB2572:
	.loc 1 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL106:
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
.LCFI12:
	.cfi_def_cfa_offset 20
	.cfi_offset 14, -4
	.cfi_offset 7, -8
	.cfi_offset 6, -12
	.cfi_offset 5, -16
	.cfi_offset 4, -20
	fstmfdd	sp!, {d8, d9, d10}
	.vsave {d8, d9, d10}
.LCFI13:
	.cfi_def_cfa_offset 44
	.cfi_offset 84, -28
	.cfi_offset 82, -36
	.cfi_offset 80, -44
	.pad #204
	sub	sp, sp, #204
.LCFI14:
	.cfi_def_cfa_offset 248
.LBB2970:
	.loc 1 58 0
	ldr	r5, .L155+40
	.loc 1 57 0
	movs	r1, #24
.LBE2970:
	.loc 1 56 0
	mov	r6, r0
.LBB3100:
	.loc 1 57 0
	add	r0, sp, #12
.LVL107:
	.loc 1 58 0
.LPIC34:
	add	r5, pc
	.loc 1 57 0
	bl	_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(PLT)
	.loc 1 59 0
	fconstd	d10, #96
.LBE3100:
	.loc 1 56 0
	ldr	r4, .L155+44
.LBB3101:
	.loc 1 58 0
	ldr	r0, [r5, #12]
	bl	_ZN5Level14getLocalPlayerEv(PLT)
.LBE3101:
	.loc 1 56 0
.LPIC36:
	add	r4, pc
.LVL108:
.LBB3102:
	.loc 1 59 0
	fconstd	d9, #36
	fcpyd	d6, d10
	.loc 1 58 0
	flds	s14, [r0, #84]
	fcvtds	d7, s14
	.loc 1 59 0
	fmacd	d6, d7, d9
	fmrrd	r0, r1, d6
.LVL109:
	bl	floor(PLT)
	fmdrr	d7, r0, r1
	.loc 1 60 0
	ldr	r0, [r5, #12]
	.loc 1 59 0
	fdivd	d8, d7, d9
.LVL110:
	.loc 1 60 0
	bl	_ZN5Level14getLocalPlayerEv(PLT)
.LVL111:
	flds	s14, [r0, #88]
	fcvtds	d7, s14
	.loc 1 61 0
	fmacd	d10, d7, d9
	fmrrd	r0, r1, d10
.LVL112:
	bl	floor(PLT)
.LVL113:
.LBB2971:
.LBB2972:
.LBB2973:
.LBB2974:
.LBB2975:
	.loc 2 270 0
	ldr	r3, .L155+48
.LBE2975:
.LBE2974:
.LBE2973:
.LBE2972:
.LBE2971:
	.loc 1 63 0
	fcmpezd	d8
.LBB2984:
.LBB2982:
.LBB2980:
.LBB2978:
.LBB2976:
	.loc 2 270 0
	ldr	r5, [r4, r3]
.LBE2976:
.LBE2978:
.LBE2980:
.LBE2982:
.LBE2984:
	.loc 1 63 0
	fmstat
.LBB2985:
.LBB2983:
.LBB2981:
.LBB2979:
.LBB2977:
	.loc 2 270 0
	add	r3, r5, #12
	str	r3, [sp, #8]
.LBE2977:
.LBE2979:
.LBE2981:
.LBE2983:
.LBE2985:
	.loc 1 61 0
	fmdrr	d7, r0, r1
	fdivd	d9, d7, d9
.LVL114:
	.loc 1 63 0
	bge	.L148
.L84:
	.loc 1 64 0
	fcmpezd	d8
	fmstat
	ble	.L145
	.loc 1 65 0
	fldd	d7, .L155
	fcmped	d8, d7
	fmstat
	bgt	.L88
	.loc 1 65 0 is_stmt 0 discriminator 2
	fldd	d7, .L155+8
	fcmped	d8, d7
	fmstat
	bmi	.L88
	.loc 1 66 0 is_stmt 1
	ble	.L92
	.loc 1 66 0 is_stmt 0 discriminator 1
	fldd	d7, .L155+16
	fcmped	d8, d7
	fmstat
	bmi	.L149
.L92:
	.loc 1 67 0 is_stmt 1
	fldd	d7, .L155+16
	fcmped	d8, d7
	fmstat
	bgt	.L150
.L95:
	.loc 1 68 0
	fldd	d7, .L155+24
	fcmped	d8, d7
	fmstat
	ble	.L91
	.loc 1 68 0 is_stmt 0 discriminator 1
	fldd	d7, .L155
	fcmped	d8, d7
	fmstat
	bpl	.L91
.LVL115:
.LBB2986:
.LBB2987:
.LBB2988:
	.loc 2 1121 0 is_stmt 1
	ldr	r1, .L155+52
	add	r0, sp, #8
	movs	r2, #26
.LPIC40:
	add	r1, pc
	bl	_ZNSs6assignEPKcj(PLT)
	b	.L91
.LVL116:
.L145:
.LBE2988:
.LBE2987:
.LBE2986:
	.loc 1 70 0
	fldd	d6, .L155+32
	faddd	d6, d8, d6
	fldd	d7, .L155
	fcmped	d6, d7
	fmstat
	bgt	.L100
	.loc 1 70 0 is_stmt 0 discriminator 2
	fldd	d7, .L155+8
	fcmped	d6, d7
	fmstat
	bmi	.L100
	.loc 1 71 0 is_stmt 1
	ble	.L103
	.loc 1 71 0 is_stmt 0 discriminator 1
	fldd	d7, .L155+16
	fcmped	d6, d7
	fmstat
	bmi	.L151
.L103:
	.loc 1 72 0 is_stmt 1
	fldd	d7, .L155+16
	fcmped	d6, d7
	fmstat
	bgt	.L152
.L106:
	.loc 1 73 0
	fldd	d7, .L155+24
	fcmped	d6, d7
	fmstat
	ble	.L91
	.loc 1 73 0 is_stmt 0 discriminator 1
	fldd	d7, .L155
	fcmped	d6, d7
	fmstat
	bpl	.L91
.LVL117:
.LBB2989:
.LBB2990:
.LBB2991:
	.loc 2 1121 0 is_stmt 1
	ldr	r1, .L155+56
	add	r0, sp, #8
	movs	r2, #26
.LPIC44:
	add	r1, pc
	bl	_ZNSs6assignEPKcj(PLT)
	b	.L91
.LVL118:
.L100:
.LBE2991:
.LBE2990:
.LBE2989:
.LBB2992:
.LBB2993:
.LBB2994:
	ldr	r1, .L155+60
	add	r0, sp, #8
	movs	r2, #27
.LPIC41:
	add	r1, pc
	bl	_ZNSs6assignEPKcj(PLT)
.LVL119:
.L91:
.LBE2994:
.LBE2993:
.LBE2992:
.LBB2995:
.LBB2996:
	.loc 4 515 0
	ldr	r1, .L155+64
	movs	r2, #8
	add	r0, sp, #20
.LPIC45:
	add	r1, pc
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL120:
.LBE2996:
.LBE2995:
.LBB2997:
.LBB2998:
.LBB2999:
.LBB3000:
.LBB3001:
	.loc 2 288 0
	ldr	r1, [sp, #8]
.LVL121:
.LBE3001:
.LBE3000:
.LBE2999:
	.loc 2 2698 0
	add	r0, sp, #20
	ldr	r2, [r1, #-12]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LBE2998:
.LBE2997:
.LBB3003:
.LBB3004:
	.loc 4 515 0
	ldr	r1, .L155+68
	movs	r2, #1
.LPIC46:
	add	r1, pc
.LBE3004:
.LBE3003:
.LBB3006:
.LBB3002:
	.loc 2 2698 0
	mov	r7, r0
.LVL122:
.LBE3002:
.LBE3006:
.LBB3007:
.LBB3005:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL123:
.LBE3005:
.LBE3007:
.LBB3008:
.LBB3009:
	.loc 4 212 0
	fmrrd	r2, r3, d8
	mov	r0, r7
	bl	_ZNSo9_M_insertIdEERSoT_(PLT)
.LBE3009:
.LBE3008:
.LBB3011:
.LBB3012:
	.loc 4 515 0
	ldr	r1, .L155+72
	movs	r2, #3
.LPIC47:
	add	r1, pc
.LBE3012:
.LBE3011:
.LBB3014:
.LBB3010:
	.loc 4 212 0
	mov	r7, r0
.LVL124:
.LBE3010:
.LBE3014:
.LBB3015:
.LBB3013:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL125:
.LBE3013:
.LBE3015:
.LBB3016:
.LBB3017:
	.loc 4 212 0
	fmrrd	r2, r3, d9
	mov	r0, r7
	bl	_ZNSo9_M_insertIdEERSoT_(PLT)
.LVL126:
.LBE3017:
.LBE3016:
.LBB3018:
.LBB3019:
	.loc 4 515 0
	ldr	r1, .L155+76
	movs	r2, #1
.LPIC48:
	add	r1, pc
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL127:
.LBE3019:
.LBE3018:
.LBB3020:
.LBB3021:
	.loc 5 564 0
	mov	r0, r6
	add	r1, sp, #24
	bl	_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(PLT)
.LVL128:
.LBE3021:
.LBE3020:
.LBB3022:
.LBB3023:
.LBB3024:
.LBB3025:
.LBB3026:
	.loc 2 288 0
	ldr	r3, [sp, #8]
.LBE3026:
.LBE3025:
.LBE3024:
.LBE3023:
	.loc 2 534 0
	sub	r0, r3, #12
.LVL129:
.LBB3034:
.LBB3027:
.LBB3028:
	.loc 2 235 0
	cmp	r0, r5
	bne	.L153
.LVL130:
.L118:
.LBE3028:
.LBE3027:
.LBE3034:
.LBE3022:
.LBB3036:
.LBB3037:
.LBB3038:
	.loc 5 545 0 discriminator 3
	ldr	r3, .L155+80
.LBB3039:
.LBB3040:
.LBB3041:
.LBB3042:
.LBB3043:
.LBB3044:
.LBB3045:
.LBB3046:
	.loc 2 288 0
	ldr	r2, [sp, #60]
.LBE3046:
.LBE3045:
.LBE3044:
.LBE3043:
.LBE3042:
.LBE3041:
.LBE3040:
.LBE3039:
	.loc 5 545 0 discriminator 3
	ldr	r3, [r4, r3]
.LBB3074:
.LBB3070:
.LBB3066:
.LBB3059:
	.loc 2 534 0
	sub	r0, r2, #12
.LBE3059:
.LBE3066:
.LBE3070:
.LBE3074:
	.loc 5 545 0 discriminator 3
	add	r7, r3, #12
	.loc 5 545 0 is_stmt 0 discriminator 9
	add	r1, r3, #52
	.loc 5 545 0 discriminator 12
	adds	r3, r3, #32
	str	r3, [sp, #20]
.LVL131:
.LBB3075:
.LBB3071:
.LBB3067:
	.loc 5 60 0 is_stmt 1
	ldr	r3, .L155+84
.LBE3067:
.LBE3071:
.LBE3075:
	.loc 5 545 0 discriminator 3
	str	r7, [sp, #12]
	.loc 5 545 0 is_stmt 0 discriminator 9
	str	r1, [sp, #64]
.LBB3076:
.LBB3072:
.LBB3068:
	.loc 5 60 0 is_stmt 1
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
.LBB3060:
.LBB3056:
.LBB3047:
.LBB3048:
	.loc 2 235 0
	cmp	r0, r5
.LBE3048:
.LBE3047:
.LBE3056:
.LBE3060:
	.loc 5 60 0
	str	r3, [sp, #24]
.LVL132:
.LBB3061:
.LBB3057:
.LBB3054:
.LBB3052:
	.loc 2 235 0
	bne	.L154
.LVL133:
.L126:
.LBE3052:
.LBE3054:
.LBE3057:
.LBE3061:
.LBB3062:
.LBB3063:
.LBB3064:
	.loc 6 196 0
	ldr	r3, .L155+88
	add	r0, sp, #52
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [sp, #24]
	bl	_ZNSt6localeD1Ev(PLT)
.LBE3064:
.LBE3063:
.LBE3062:
.LBE3068:
.LBE3072:
.LBE3076:
	.loc 5 545 0 discriminator 15
	ldr	r3, .L155+92
	add	r0, sp, #12
.LVL134:
	ldr	r1, [r4, r3]
	adds	r1, r1, #4
	bl	_ZNSdD2Ev(PLT)
.LVL135:
.LBB3077:
.LBB3078:
.LBB3079:
	.loc 7 274 0
	ldr	r3, .L155+96
	add	r0, sp, #200
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [r0, #-136]!
	bl	_ZNSt8ios_baseD2Ev(PLT)
.LBE3079:
.LBE3078:
.LBE3077:
.LBE3038:
.LBE3037:
.LBE3036:
.LBE3102:
	.loc 1 77 0
	mov	r0, r6
	add	sp, sp, #204
	fldmfdd	sp!, {d8, d9, d10}
	pop	{r4, r5, r6, r7, pc}
.LVL136:
.L88:
.LBB3103:
.LBB3083:
.LBB3084:
.LBB3085:
	.loc 2 1121 0
	ldr	r1, .L155+100
	add	r0, sp, #8
	movs	r2, #27
.LPIC37:
	add	r1, pc
	bl	_ZNSs6assignEPKcj(PLT)
	b	.L91
.LVL137:
.L148:
.LBE3085:
.LBE3084:
.LBE3083:
	.loc 1 63 0 discriminator 1
	fmrrd	r0, r1, d8
	adr	r3, .L155+32
	ldrd	r2, [r3]
	bl	fmod(PLT)
	fmdrr	d8, r0, r1
.LVL138:
	b	.L84
.LVL139:
.L152:
	.loc 1 72 0 discriminator 1
	fldd	d7, .L155+24
	fcmped	d6, d7
	fmstat
	bpl	.L106
.LVL140:
.LBB3086:
.LBB3087:
.LBB3088:
	.loc 2 1121 0
	ldr	r1, .L155+104
	add	r0, sp, #8
	movs	r2, #27
.LPIC43:
	add	r1, pc
	bl	_ZNSs6assignEPKcj(PLT)
	b	.L91
.LVL141:
.L150:
.LBE3088:
.LBE3087:
.LBE3086:
	.loc 1 67 0 discriminator 1
	fldd	d7, .L155+24
	fcmped	d8, d7
	fmstat
	bpl	.L95
.LVL142:
.LBB3089:
.LBB3090:
.LBB3091:
	.loc 2 1121 0
	ldr	r1, .L155+108
	add	r0, sp, #8
	movs	r2, #27
.LPIC39:
	add	r1, pc
	bl	_ZNSs6assignEPKcj(PLT)
	b	.L91
.LVL143:
.L149:
.LBE3091:
.LBE3090:
.LBE3089:
.LBB3092:
.LBB3093:
.LBB3094:
	ldr	r1, .L155+112
	add	r0, sp, #8
	movs	r2, #26
.LPIC38:
	add	r1, pc
	bl	_ZNSs6assignEPKcj(PLT)
	b	.L91
.LVL144:
.L151:
.LBE3094:
.LBE3093:
.LBE3092:
.LBB3095:
.LBB3096:
.LBB3097:
	ldr	r1, .L155+116
	add	r0, sp, #8
	movs	r2, #26
.LPIC42:
	add	r1, pc
	bl	_ZNSs6assignEPKcj(PLT)
	b	.L91
.LVL145:
.L153:
.LBE3097:
.LBE3096:
.LBE3095:
.LBB3098:
.LBB3035:
.LBB3033:
.LBB3032:
.LBB3029:
.LBB3030:
.LBB3031:
	.loc 3 48 0
	subs	r3, r3, #4
.LVL146:
	mov	r2, #-1
	dmb	sy
	.LSYT2119:
	ldrex	r1, [r3]
	add	r7, r1, r2
	strex	r1, r7, [r3]
	teq	r1, #0
	bne	.LSYT2119
	sub	r1, r7, r2
	.LSYB2119:
	dmb	sy
.LVL147:
.LBE3031:
.LBE3030:
.LBE3029:
	.loc 2 240 0
	cmp	r1, #0
	bgt	.L118
	.loc 2 244 0
	mov	r1, sp
	bl	_ZNSs4_Rep10_M_destroyERKSaIcE(PLT)
.LVL148:
	b	.L118
.LVL149:
.L154:
.LBE3032:
.LBE3033:
.LBE3035:
.LBE3098:
.LBB3099:
.LBB3082:
.LBB3081:
.LBB3080:
.LBB3073:
.LBB3069:
.LBB3065:
.LBB3058:
.LBB3055:
.LBB3053:
.LBB3049:
.LBB3050:
.LBB3051:
	.loc 3 48 0
	subs	r2, r2, #4
.LVL150:
	mov	r3, #-1
	dmb	sy
	.LSYT2179:
	ldrex	r1, [r2]
	add	r5, r1, r3
	strex	r1, r5, [r2]
	teq	r1, #0
	bne	.LSYT2179
	sub	r1, r5, r3
	.LSYB2179:
	dmb	sy
.LBE3051:
.LBE3050:
.LBE3049:
	.loc 2 240 0
	cmp	r1, #0
	bgt	.L126
	.loc 2 244 0
	add	r1, sp, #4
	bl	_ZNSs4_Rep10_M_destroyERKSaIcE(PLT)
.LVL151:
	b	.L126
.L156:
	.align	3
.L155:
	.word	0
	.word	1081323520
	.word	0
	.word	1078362112
	.word	0
	.word	1080090624
	.word	0
	.word	1080827904
	.word	0
	.word	1081507840
	.word	.LANCHOR0-(.LPIC34+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	_ZNSs4_Rep20_S_empty_rep_storageE(GOT)
	.word	.LC10-(.LPIC40+4)
	.word	.LC10-(.LPIC44+4)
	.word	.LC7-(.LPIC41+4)
	.word	.LC11-(.LPIC45+4)
	.word	.LC12-(.LPIC46+4)
	.word	.LC2-(.LPIC47+4)
	.word	.LC13-(.LPIC48+4)
	.word	_ZTVSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt15basic_streambufIcSt11char_traitsIcEE(GOT)
	.word	_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt9basic_iosIcSt11char_traitsIcEE(GOT)
	.word	.LC7-(.LPIC37+4)
	.word	.LC9-(.LPIC43+4)
	.word	.LC9-(.LPIC39+4)
	.word	.LC8-(.LPIC38+4)
	.word	.LC8-(.LPIC42+4)
.LBE3053:
.LBE3055:
.LBE3058:
.LBE3065:
.LBE3069:
.LBE3073:
.LBE3080:
.LBE3081:
.LBE3082:
.LBE3099:
.LBE3103:
	.cfi_endproc
.LFE2572:
	.fnend
	.size	_Z20getDebugFacingStringv, .-_Z20getDebugFacingStringv
	.section	.text._Z19getDebugLightStringv,"ax",%progbits
	.align	2
	.global	_Z19getDebugLightStringv
	.thumb
	.thumb_func
	.type	_Z19getDebugLightStringv, %function
_Z19getDebugLightStringv:
	.fnstart
.LFB2574:
	.loc 1 84 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL152:
	push	{r4, r5, r6, r7, r8, lr}
	.save {r4, r5, r6, r7, r8, lr}
.LCFI15:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -4
	.cfi_offset 8, -8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 5, -20
	.cfi_offset 4, -24
	.pad #208
	sub	sp, sp, #208
.LCFI16:
	.cfi_def_cfa_offset 232
.LBB3195:
	.loc 1 86 0
	ldr	r5, .L171
	.loc 1 85 0
	movs	r1, #24
.LBE3195:
	.loc 1 84 0
	mov	r6, r0
.LBB3256:
	.loc 1 85 0
	add	r0, sp, #20
.LVL153:
	.loc 1 86 0
.LPIC49:
	add	r5, pc
	.loc 1 85 0
	bl	_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(PLT)
.LBE3256:
	.loc 1 84 0
	ldr	r4, .L171+4
.LBB3257:
	.loc 1 86 0
	ldr	r0, [r5, #12]
	bl	_ZN5Level14getLocalPlayerEv(PLT)
	ldr	r3, [r5, #12]
.LBE3257:
	.loc 1 84 0
.LPIC53:
	add	r4, pc
.LVL154:
.LBB3258:
	.loc 1 86 0
	ldr	r8, [r0, #24]	@ float
	mov	r0, r3
	bl	_ZN5Level14getLocalPlayerEv(PLT)
	ldr	r3, [r5, #12]
	ldr	r7, [r0, #28]	@ float
	mov	r0, r3
	bl	_ZN5Level14getLocalPlayerEv(PLT)
	mov	r1, r8	@ float
	mov	r2, r7	@ float
	ldr	r3, [r0, #32]	@ float
	add	r0, sp, #8
	bl	_ZN7TilePosC1Efff(PLT)
	.loc 1 87 0
	ldr	r3, .L171+8
	ldr	r0, [r5, #16]
	add	r2, sp, #8
	ldr	r1, [r4, r3]
	bl	_ZN10TileSource13getBrightnessERK10LightLayerRK7TilePos(PLT)
	.loc 1 88 0
	ldr	r3, .L171+12
	add	r2, sp, #8
	ldr	r1, [r4, r3]
	.loc 1 87 0
	mov	r7, r0
.LVL155:
	.loc 1 88 0
	ldr	r0, [r5, #16]
.LVL156:
	bl	_ZN10TileSource13getBrightnessERK10LightLayerRK7TilePos(PLT)
.LBB3196:
.LBB3197:
	.loc 4 515 0
	ldr	r1, .L171+16
	movs	r2, #7
.LPIC55:
	add	r1, pc
.LBE3197:
.LBE3196:
	.loc 1 88 0
	mov	r5, r0
.LVL157:
.LBB3199:
.LBB3198:
	.loc 4 515 0
	add	r0, sp, #28
.LVL158:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LBE3198:
.LBE3199:
	.loc 1 89 0
	adds	r1, r7, r5
	cmp	r1, #15
	it	ge
	movge	r1, #15
	.loc 1 90 0
	add	r0, sp, #28
	bl	_ZNSolsEi(PLT)
.LBB3200:
.LBB3201:
	.loc 4 515 0
	ldr	r1, .L171+20
	movs	r2, #2
.LPIC56:
	add	r1, pc
.LBE3201:
.LBE3200:
	.loc 1 90 0
	mov	r8, r0
.LVL159:
.LBB3203:
.LBB3202:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL160:
.LBE3202:
.LBE3203:
	.loc 1 90 0
	mov	r1, r7
	mov	r0, r8
	bl	_ZNSolsEi(PLT)
.LBB3204:
.LBB3205:
	.loc 4 515 0
	ldr	r1, .L171+24
	movs	r2, #6
.LPIC57:
	add	r1, pc
.LBE3205:
.LBE3204:
	.loc 1 90 0
	mov	r7, r0
.LVL161:
.LBB3207:
.LBB3206:
	.loc 4 515 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL162:
.LBE3206:
.LBE3207:
	.loc 1 90 0
	mov	r1, r5
	mov	r0, r7
	bl	_ZNSolsEi(PLT)
.LVL163:
.LBB3208:
.LBB3209:
	.loc 4 515 0
	ldr	r1, .L171+28
	movs	r2, #7
.LPIC58:
	add	r1, pc
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i(PLT)
.LVL164:
.LBE3209:
.LBE3208:
.LBB3210:
.LBB3211:
	.loc 5 564 0
	mov	r0, r6
	add	r1, sp, #32
	bl	_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(PLT)
.LVL165:
.LBE3211:
.LBE3210:
.LBB3212:
.LBB3213:
.LBB3214:
	.loc 5 545 0 discriminator 3
	ldr	r3, .L171+32
.LBB3215:
.LBB3216:
.LBB3217:
.LBB3218:
.LBB3219:
.LBB3220:
.LBB3221:
.LBB3222:
	.loc 2 288 0
	ldr	r2, [sp, #68]
.LBE3222:
.LBE3221:
.LBE3220:
.LBE3219:
.LBE3218:
.LBE3217:
.LBE3216:
.LBE3215:
	.loc 5 545 0 discriminator 3
	ldr	r3, [r4, r3]
	add	r0, r3, #12
	.loc 5 545 0 is_stmt 0 discriminator 9
	add	r1, r3, #52
	.loc 5 545 0 discriminator 12
	adds	r3, r3, #32
	str	r3, [sp, #28]
.LVL166:
.LBB3246:
.LBB3242:
.LBB3238:
	.loc 5 60 0 is_stmt 1
	ldr	r3, .L171+36
.LBE3238:
.LBE3242:
.LBE3246:
	.loc 5 545 0 discriminator 3
	str	r0, [sp, #20]
.LBB3247:
.LBB3243:
.LBB3239:
.LBB3232:
	.loc 2 534 0
	sub	r0, r2, #12
.LBE3232:
.LBE3239:
.LBE3243:
.LBE3247:
	.loc 5 545 0 discriminator 9
	str	r1, [sp, #72]
.LBB3248:
.LBB3244:
.LBB3240:
	.loc 5 60 0
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [sp, #32]
.LVL167:
.LBB3233:
.LBB3230:
.LBB3223:
.LBB3224:
	.loc 2 235 0
	ldr	r3, .L171+40
	ldr	r3, [r4, r3]
	cmp	r0, r3
	bne	.L170
.LVL168:
.L165:
.LBE3224:
.LBE3223:
.LBE3230:
.LBE3233:
.LBB3234:
.LBB3235:
.LBB3236:
	.loc 6 196 0
	ldr	r3, .L171+44
	add	r0, sp, #60
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [sp, #32]
	bl	_ZNSt6localeD1Ev(PLT)
.LBE3236:
.LBE3235:
.LBE3234:
.LBE3240:
.LBE3244:
.LBE3248:
	.loc 5 545 0 discriminator 15
	ldr	r3, .L171+48
	add	r0, sp, #20
.LVL169:
	ldr	r1, [r4, r3]
	adds	r1, r1, #4
	bl	_ZNSdD2Ev(PLT)
.LVL170:
.LBB3249:
.LBB3250:
.LBB3251:
	.loc 7 274 0
	ldr	r3, .L171+52
	add	r0, sp, #208
	ldr	r3, [r4, r3]
	adds	r3, r3, #8
	str	r3, [r0, #-136]!
	bl	_ZNSt8ios_baseD2Ev(PLT)
.LBE3251:
.LBE3250:
.LBE3249:
.LBE3214:
.LBE3213:
.LBE3212:
.LBE3258:
	.loc 1 92 0
	mov	r0, r6
	add	sp, sp, #208
	pop	{r4, r5, r6, r7, r8, pc}
.LVL171:
.L170:
.LBB3259:
.LBB3255:
.LBB3254:
.LBB3253:
.LBB3252:
.LBB3245:
.LBB3241:
.LBB3237:
.LBB3231:
.LBB3229:
.LBB3228:
.LBB3225:
.LBB3226:
.LBB3227:
	.loc 3 48 0
	subs	r2, r2, #4
.LVL172:
	mov	r3, #-1
	dmb	sy
	.LSYT2541:
	ldrex	r1, [r2]
	add	r5, r1, r3
	strex	r1, r5, [r2]
	teq	r1, #0
	bne	.LSYT2541
	sub	r1, r5, r3
	.LSYB2541:
	dmb	sy
.LVL173:
.LBE3227:
.LBE3226:
.LBE3225:
	.loc 2 240 0
	cmp	r1, #0
	bgt	.L165
	.loc 2 244 0
	add	r1, sp, #4
	bl	_ZNSs4_Rep10_M_destroyERKSaIcE(PLT)
.LVL174:
	b	.L165
.L172:
	.align	2
.L171:
	.word	.LANCHOR0-(.LPIC49+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC53+4)
	.word	_ZN10LightLayer3SkyE(GOT)
	.word	_ZN10LightLayer5BlockE(GOT)
	.word	.LC14-(.LPIC55+4)
	.word	.LC15-(.LPIC56+4)
	.word	.LC16-(.LPIC57+4)
	.word	.LC17-(.LPIC58+4)
	.word	_ZTVSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZNSs4_Rep20_S_empty_rep_storageE(GOT)
	.word	_ZTVSt15basic_streambufIcSt11char_traitsIcEE(GOT)
	.word	_ZTTSt18basic_stringstreamIcSt11char_traitsIcESaIcEE(GOT)
	.word	_ZTVSt9basic_iosIcSt11char_traitsIcEE(GOT)
.LBE3228:
.LBE3229:
.LBE3231:
.LBE3237:
.LBE3241:
.LBE3245:
.LBE3252:
.LBE3253:
.LBE3254:
.LBE3255:
.LBE3259:
	.cfi_endproc
.LFE2574:
	.fnend
	.size	_Z19getDebugLightStringv, .-_Z19getDebugLightStringv
	.section	.text._Z50Java_net_zhuoweizhang_pokerface_PokerFace_mprotectP7_JNIEnvP7_jclassxxi,"ax",%progbits
	.align	2
	.global	_Z50Java_net_zhuoweizhang_pokerface_PokerFace_mprotectP7_JNIEnvP7_jclassxxi
	.thumb
	.thumb_func
	.type	_Z50Java_net_zhuoweizhang_pokerface_PokerFace_mprotectP7_JNIEnvP7_jclassxxi, %function
_Z50Java_net_zhuoweizhang_pokerface_PokerFace_mprotectP7_JNIEnvP7_jclassxxi:
	.fnstart
.LFB2579:
	.loc 1 140 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL175:
	.loc 1 141 0
	mov	r0, r2
.LVL176:
	ldr	r1, [sp, #0]
.LVL177:
	ldr	r2, [sp, #8]
.LVL178:
	.loc 1 142 0
	.loc 1 141 0
	b	mprotect(PLT)
	.cfi_endproc
.LFE2579:
	.fnend
	.size	_Z50Java_net_zhuoweizhang_pokerface_PokerFace_mprotectP7_JNIEnvP7_jclassxxi, .-_Z50Java_net_zhuoweizhang_pokerface_PokerFace_mprotectP7_JNIEnvP7_jclassxxi
	.section	.text._Z49Java_net_zhuoweizhang_pokerface_PokerFace_sysconfP7_JNIEnvP7_jclassi,"ax",%progbits
	.align	2
	.global	_Z49Java_net_zhuoweizhang_pokerface_PokerFace_sysconfP7_JNIEnvP7_jclassi
	.thumb
	.thumb_func
	.type	_Z49Java_net_zhuoweizhang_pokerface_PokerFace_sysconfP7_JNIEnvP7_jclassi, %function
_Z49Java_net_zhuoweizhang_pokerface_PokerFace_sysconfP7_JNIEnvP7_jclassi:
	.fnstart
.LFB2580:
	.loc 1 144 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL179:
	push	{r3, lr}
	.save {r3, lr}
.LCFI17:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -4
	.cfi_offset 3, -8
.LBB3260:
	.loc 1 145 0
	mov	r0, r2
.LVL180:
	bl	sysconf(PLT)
.LVL181:
	.loc 1 146 0
	asrs	r1, r0, #31
.LBE3260:
	.loc 1 147 0
	pop	{r3, pc}
	.cfi_endproc
.LFE2580:
	.fnend
	.size	_Z49Java_net_zhuoweizhang_pokerface_PokerFace_sysconfP7_JNIEnvP7_jclassi, .-_Z49Java_net_zhuoweizhang_pokerface_PokerFace_sysconfP7_JNIEnvP7_jclassi
	.section	.text.JNI_OnLoad,"ax",%progbits
	.align	2
	.global	JNI_OnLoad
	.thumb
	.thumb_func
	.type	JNI_OnLoad, %function
JNI_OnLoad:
	.fnstart
.LFB2581:
	.loc 1 149 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL182:
.LBB3261:
	.loc 1 150 0
	ldr	r0, .L176
.LVL183:
	movs	r1, #1
.LVL184:
.LBE3261:
	.loc 1 149 0
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
.LCFI18:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -4
	.cfi_offset 6, -8
	.cfi_offset 5, -12
	.cfi_offset 4, -16
.LBB3262:
	.loc 1 150 0
.LPIC59:
	add	r0, pc
	bl	dlopen(PLT)
	.loc 1 152 0
	ldr	r1, .L176+4
	.loc 1 154 0
	ldr	r4, .L176+8
	.loc 1 152 0
.LPIC60:
	add	r1, pc
	.loc 1 154 0
.LPIC63:
	add	r4, pc
	.loc 1 150 0
	mov	r5, r0
.LVL185:
	.loc 1 152 0
	bl	dlsym(PLT)
.LVL186:
	.loc 1 153 0
	ldr	r1, .L176+12
.LPIC61:
	add	r1, pc
	.loc 1 152 0
	mov	r6, r0
.LVL187:
	.loc 1 153 0
	mov	r0, r5
.LVL188:
	bl	dlsym(PLT)
	.loc 1 154 0
	ldr	r1, .L176+16
	mov	r2, r4
.LPIC62:
	add	r1, pc
	.loc 1 153 0
	mov	r5, r0
.LVL189:
	.loc 1 154 0
	mov	r0, r6
.LVL190:
	bl	MSHookFunction(PLT)
	.loc 1 155 0
	ldr	r1, .L176+20
	add	r2, r4, #20
	mov	r0, r5
.LPIC64:
	add	r1, pc
	bl	MSHookFunction(PLT)
	ldr	r0, .L176+24
	.loc 1 156 0
	ldr	r1, .L176+28
	add	r2, r4, #28
.LPIC72:
	add	r0, pc
	ldr	r0, [r0]
.LPIC67:
	add	r1, pc
	bl	MSHookFunction(PLT)
	ldr	r0, .L176+32
	.loc 1 157 0
	ldr	r1, .L176+36
	add	r2, r4, #8
.LPIC71:
	add	r0, pc
	ldr	r0, [r0]
.LPIC69:
	add	r1, pc
	bl	MSHookFunction(PLT)
	.loc 1 159 0 discriminator 1
	movs	r0, #2
	movt	r0, 1
.LBE3262:
	.loc 1 160 0
	pop	{r4, r5, r6, pc}
.L177:
	.align	2
.L176:
	.word	.LC18-(.LPIC59+4)
	.word	.LC19-(.LPIC60+4)
	.word	.LANCHOR0-(.LPIC63+4)
	.word	.LC20-(.LPIC61+4)
	.word	_ZL14Font$Font_hookP4FontP7OptionsRKSsP8Textures-(.LPIC62+4)
	.word	_ZL12Gui$Gui_hookP3GuiP15MinecraftClient-(.LPIC64+4)
	.word	_ZN3Gui6renderEfbii(GOT_PREL)+(.-(.LPIC72+4))
	.word	_ZL15Gui$render_hookP3Guifbii-(.LPIC67+4)
	.word	_ZN5Level15onSourceCreatedEP10TileSource(GOT_PREL)+(.-(.LPIC71+4))
	.word	_ZL26Level$onSourceCreated_hookP5LevelP10TileSource-(.LPIC69+4)
	.cfi_endproc
.LFE2581:
	.fnend
	.size	JNI_OnLoad, .-JNI_OnLoad
	.section	.text._ZNSt8_Rb_treeIN5Biome9BiomeTypeESt4pairIKS1_SsESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E,"axG",%progbits,_ZNSt8_Rb_treeIN5Biome9BiomeTypeESt4pairIKS1_SsESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIN5Biome9BiomeTypeESt4pairIKS1_SsESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E
	.thumb
	.thumb_func
	.type	_ZNSt8_Rb_treeIN5Biome9BiomeTypeESt4pairIKS1_SsESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E, %function
_ZNSt8_Rb_treeIN5Biome9BiomeTypeESt4pairIKS1_SsESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E:
	.fnstart
.LFB2711:
	.file 8 "/data/data/com.aide.ui/files/ndksupport-20141105/android-ndk-aide/sources/cxx-stl/gnu-libstdc++/4.6/include/bits/stl_tree.h"
	.loc 8 1108 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL191:
	push	{r4, r5, r6, r7, r8, lr}
	.save {r4, r5, r6, r7, r8, lr}
.LCFI19:
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -4
	.cfi_offset 8, -8
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 5, -20
	.cfi_offset 4, -24
	mov	r7, r0
	.pad #8
	sub	sp, sp, #8
.LCFI20:
	.cfi_def_cfa_offset 32
	.loc 8 1108 0
	mov	r4, r1
.LBB3307:
	.loc 8 1112 0 discriminator 1
	cbz	r1, .L178
	ldr	r6, .L193
.LBB3308:
.LBB3309:
.LBB3310:
.LBB3311:
.LBB3312:
.LBB3313:
.LBB3314:
.LBB3315:
.LBB3316:
.LBB3317:
.LBB3318:
.LBB3319:
.LBB3320:
.LBB3321:
	.loc 3 48 0
	mov	r8, #-1
.LPIC74:
	add	r6, pc
	ldr	r6, [r6]
.LVL192:
.L190:
.LBE3321:
.LBE3320:
.LBE3319:
.LBE3318:
.LBE3317:
.LBE3316:
.LBE3315:
.LBE3314:
.LBE3313:
.LBE3312:
.LBE3311:
.LBE3310:
.LBE3309:
	.loc 8 1114 0
	mov	r0, r7
	ldr	r1, [r4, #12]
	bl	_ZNSt8_Rb_treeIN5Biome9BiomeTypeESt4pairIKS1_SsESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(PLT)
.LVL193:
.LBB3359:
.LBB3350:
.LBB3347:
.LBB3344:
.LBB3341:
.LBB3338:
.LBB3335:
.LBB3332:
.LBB3327:
.LBB3328:
.LBB3329:
	.loc 2 288 0
	ldr	r3, [r4, #20]
.LBE3329:
.LBE3328:
.LBE3327:
.LBE3332:
.LBE3335:
.LBE3338:
.LBE3341:
.LBE3344:
.LBE3347:
.LBE3350:
.LBE3359:
.LBB3360:
.LBB3361:
	.loc 8 560 0
	ldr	r5, [r4, #8]
.LVL194:
.LBE3361:
.LBE3360:
.LBB3362:
.LBB3351:
.LBB3348:
.LBB3345:
.LBB3342:
.LBB3339:
.LBB3336:
	.loc 2 534 0
	sub	r0, r3, #12
.LVL195:
.LBB3333:
.LBB3330:
.LBB3325:
	.loc 2 235 0
	cmp	r0, r6
	bne	.L192
.LVL196:
.L189:
.LBE3325:
.LBE3330:
.LBE3333:
.LBE3336:
.LBE3339:
.LBE3342:
.LBE3345:
.LBE3348:
.LBE3351:
.LBB3352:
.LBB3353:
.LBB3354:
	.file 9 "/data/data/com.aide.ui/files/ndksu