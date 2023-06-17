.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_MINT_CERULEANTALK, 0x0E0
.equ FLAG_TORMENT_TM, 0x0E1

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_CeruleanCity_BikeShopMay
EventScript_CeruleanCity_BikeShopMay:
	msgbox gText_CeruleanCity_BikeShop_May MSG_FACE
	end

.global EventScript_CeruleanCity_BikeShopOtherCustomer
EventScript_CeruleanCity_BikeShopOtherCustomer:
	msgbox gText_CeruleanCity_BikeShop_OtherWoman MSG_FACE
	end

.global EventScript_CeruleanRoute9_AnnoyingTree
EventScript_CeruleanRoute9_AnnoyingTree:
	msgbox gText_CeruleanRoute9_AnnoyingTree MSG_NORMAL
	end

.global EventScript_CeruleanCity_AngryGeezer
EventScript_CeruleanCity_AngryGeezer:
	checkgender
	compare LASTRESULT 0x0
    if 0x1 _goto EventScript_CeruleanCity_AngryGeezer_Brandy
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_CeruleanCity_AngryGeezer_Sherry
    end

EventScript_CeruleanCity_AngryGeezer_Brandy:
	msgbox gText_CeruleanCity_MistyGrouch_Brandy MSG_FACE
	end

EventScript_CeruleanCity_AngryGeezer_Sherry:
	msgbox gText_CeruleanCity_MistyGrouch_Sherry MSG_FACE
	end

.global EventScript_CeruleanCity_PokedexSnob
EventScript_CeruleanCity_PokedexSnob:
	msgbox gText_CeruleanCity_PokedexSnob MSG_FACE
	end

.global EventScript_CeruleanCity_BajaBlastoiseFan1
EventScript_CeruleanCity_BajaBlastoiseFan1:
	msgbox gText_CeruleanCity_JRRPokken MSG_FACE
	end
	
.global EventScript_CeruleanCity_BajaBlastoiseFan2
EventScript_CeruleanCity_BajaBlastoiseFan2:
	msgbox gText_CeruleanCity_MistyPool MSG_FACE
	end

.global EventScript_CeruleanCity_BajaBlastoiseWallpaper
EventScript_CeruleanCity_BajaBlastoiseWallpaper:
	msgbox gText_CeruleanCity_BajaBlastoiseWallpaper MSG_FACE
	@@@@change dialogue to gText_CeruleanCity_BajaBlastoiseWallpaper_AlloyKnown after meeting alloy
	end

.global EventScript_CeruleanCity_Vikings
EventScript_CeruleanCity_Vikings:
	msgbox gText_CeruleanCity_Vikings MSG_FACE
	end

.global EventScript_CeruleanCity_MistyGossip
EventScript_CeruleanCity_MistyGossip:
	msgbox gText_CeruleanCity_MistyGossip MSG_FACE
	end

.global EventScript_CeruleanCity_Miraidon
EventScript_CeruleanCity_Miraidon:
	msgbox gText_CeruleanCity_Miraidon MSG_FACE
	end

.global EventScript_CeruleanCity_LittleSisHater
EventScript_CeruleanCity_LittleSisHater:
	msgbox gText_CeruleanCity_MistySisterDramaGossip MSG_FACE
	end

.global EventScript_CeruleanCity_StreamerTalk
EventScript_CeruleanCity_StreamerTalk:
	msgbox gText_CeruleanCity_StreamerTalk MSG_FACE
	end

.global EventScript_CeruleanCity_MistyFixesBikes
EventScript_CeruleanCity_MistyFixesBikes:
	msgbox gText_CeruleanCity_MistyCommunityFigure MSG_FACE
	end
	
.global EventScript_CeruleanCity_CascadeBadgeJerk
EventScript_CeruleanCity_CascadeBadgeJerk:
	msgbox gText_CeruleanCity_CascadeBadge MSG_FACE
	@put in gText_CeruleanCity_CascadeBadge_PlayerGotBadge for after beating misty
	end
	
.global EventScript_CeruleanCity_DisgruntedGymSwimmer
EventScript_CeruleanCity_DisgruntedGymSwimmer:
	msgbox gText_CeruleanCity_MistyGone MSG_FACE
	@make this npc disappear when the gym is open
	end

.global EventScript_CeruleanCity_ClosedGym
EventScript_CeruleanCity_ClosedGym:
	lockall
	applymovement 0xFF LookUp
	waitmovement 0x0
	msgbox gText_CeruleanCity_MistyGymLocked MSG_NORMAL
	applymovement 0xFF WalkDown
	end
	
.global EventScript_CeruleanCaveGuy
EventScript_CeruleanCaveGuy:
	msgbox gText_CeruleanCity_CeruleanCaveGuy MSG_FACE
	end	
	
.global EventScript_CeruleanCity_WistfulBreeder
EventScript_CeruleanCity_WistfulBreeder:
	msgbox gText_CeruleanCity_WistfulBreeder MSG_FACE
	end

.global EventScript_CeruleanCity_MintStopsYou
EventScript_CeruleanCity_MintStopsYou:
	lockall
	applymovement 0x2 MintExclaimAnim
	sound 0x15
	waitmovement 0x0
	pause 0x10
	msgbox gText_CeruleanCity_MintIntroMintroHeyStop MSG_KEEPOPEN
	applymovement 0xFF LookLeft
	pause 0x11
	goto EventScript_CeruleanCity_MintroContinued
	end

.global EventScript_CeruleanCity_MintPlayerApproaches
EventScript_CeruleanCity_MintPlayerApproaches:
	checkflag FLAG_MINT_CERULEANTALK
	if SET _goto EventScript_CeruleanCity_MintPleaseNuggetBridge
	lockall
	msgbox gText_CeruleanCity_MintIntroMintroHeyYouApproachedMe MSG_FACE
	applymovement 0xFF PlayerMoveForMint
	waitmovement 0x0
	faceplayer
	pause 0x7
	goto EventScript_CeruleanCity_MintroContinued
	end
	
EventScript_CeruleanCity_MintroContinued:
	lockall
	msgbox gText_CeruleanCity_MintIntroMintro1 MSG_KEEPOPEN
	waitmsg
	applymovement 0x2 MintAwkward
	sound 0x5D
	waitmovement 0x0
	faceplayer
	msgbox gText_CeruleanCity_MintIntroMintro2 MSG_KEEPOPEN
	pause 0x6
	applymovement 0x2 MintEagerHop
	sound 0x1C
	waitmovement 0x0
	msgbox gText_CeruleanCity_MintIntroMintro3 MSG_NORMAL
	releaseall
	setvar 0x4092 0x1
	setflag FLAG_MINT_CERULEANTALK
	end

EventScript_CeruleanCity_MintPleaseNuggetBridge:
	msgbox gText_CeruleanCity_MintIntro_AfterTalking MSG_FACE
	end

.global EventScript_CeruleanCity_YardGuy
EventScript_CeruleanCity_YardGuy:
	msgbox gText_CeruleanCity_GuyWithBackyard MSG_FACE
	end
	
.global EventScript_CeruleanCity_MistyFamilyLoreGuy
EventScript_CeruleanCity_MistyFamilyLoreGuy:
	msgbox gText_CeruleanCity_MistysFamily MSG_FACE
	end

.global EventScript_CeruleanCity_TormentKid
EventScript_CeruleanCity_TormentKid:
	lockall
	faceplayer
	checkflag FLAG_TORMENT_TM
	if 0x1 _goto EventScript_CeruleanCity_TormentKid_AfterTM
	msgbox gText_CeruleanCity_TormentKid1 MSG_FACE
	fanfare 0x101
	msgbox gText_RecieveTorment MSG_FACE
	waitfanfare 
	additem ITEM_TM41 0x1
	setflag FLAG_TORMENT_TM
	lockall
	msgbox gText_CeruleanCity_TormentKid2 MSG_FACE
	releaseall
	end

EventScript_CeruleanCity_TormentKid_AfterTM:
	lockall
	msgbox gText_CeruleanCity_TormentKidAfter MSG_FACE
	releaseall
	end

LookLeft:
	.byte look_left
	.byte 0xFE	

LookRight:
	.byte look_right
	.byte 0xFE	

LookNurse:
	.byte 0x64
	.byte look_left
	.byte 0xFE

LookDown:
	.byte look_down
	.byte 0xFE
	
LookUp:
	.byte look_up
	.byte 0xFE
	
WalkDown:
	.byte walk_down
	.byte 0xFE
	
MintExclaimAnim:
	.byte look_right
	.byte exclaim
	.byte 0xFE

MintAwkward:
	.byte 0x23
	.byte 0x23
	.byte 0x23
	.byte 0x24
	.byte 0xFE
	
MintEagerHop:
	.byte 0x55
	.byte 0xFE

PlayerMoveForMint:
	.byte walk_right
	.byte walk_up
	.byte look_left
	.byte 0xFE
