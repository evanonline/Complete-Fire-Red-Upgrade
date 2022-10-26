.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_STARTER_CHOSEN, 0x990
.equ FLAG_OPENING_TEXT, 0x991
.equ FLAG_RUN_START, 0x993

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Messages in all hotel rooms@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_BathroomEasterEgg
EventScript_BathroomEasterEgg:
	msgbox gText_BathroomEasterEgg MSG_SIGN
	end
	
.global EventScript_Lodgenet
EventScript_Lodgenet:
	msgbox gText_Lodgenet MSG_SIGN
	end

.global EventScript_VermilionHotelMovie
EventScript_VermilionHotelMovie:
	special2 LASTRESULT 0xAD
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_VermilionHotelMovie_Morning
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_VermilionHotelMovie_Day
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_VermilionHotelMovie_Evening
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_VermilionHotelMovie_Night
	end

EventScript_VermilionHotelMovie_Day:
	msgbox gText_MoviesRental1 MSG_FACE
	end
	
EventScript_VermilionHotelMovie_Morning:
	msgbox gText_MoviesRental3 MSG_FACE
	end
	
EventScript_VermilionHotelMovie_Evening:
	msgbox gText_MoviesRental4 MSG_FACE
	end
	
EventScript_VermilionHotelMovie_Night:
	msgbox gText_MoviesRental2 MSG_FACE
	end

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Intro Room map script@@@@@@@@@@@@@@@
@;Sib sprite switch@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionIntroSibSpriteScript_Hotel1
gMapScripts_VermilionIntroSibSpriteScript_Hotel1:
   mapscript MAP_SCRIPT_ON_LOAD EventScript_ChangeSibSprite_Hotel1
   .byte MAP_SCRIPT_TERMIN

EventScript_ChangeSibSprite_Hotel1:
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy
    end

EventScript_SetSibNPCAsSherry:
    setvar 0x5028 + 0x0 7
	checkflag FLAG_RUN_START
	if SET _goto EventScript_VermilionIntro_HideSib
    end

EventScript_SetSibNPCAsBrandy:
    setvar 0x5028 + 0x0 0
	checkflag FLAG_RUN_START
	if SET _goto EventScript_VermilionIntro_HideSib
    end
	
EventScript_VermilionIntro_HideSib:
	setflag 0x951
	hidesprite 1
	end

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Sib warp dialogue / run start@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_SibRoomLeave
EventScript_SibRoomLeave_SetSibName:
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SibRoom_NameSherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SibRoom_NameBrandy
    end

EventScript_SibRoom_NameSherry:
	loadpointer 0x0 gText_NameSherry
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	goto EventScript_SibRoomLeave
	end

EventScript_SibRoom_NameBrandy:
	loadpointer 0x0 gText_NameBrandy
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	goto EventScript_SibRoomLeave
	end

EventScript_SibRoomLeave:
	lock
	faceplayer
	msgbox gText_OpeningSibWarning MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_RunStart
	callasm 0x8FB0101
	release
	end

EventScript_RunStart:
	setflag FLAG_RUN_START
	msgbox gText_OpeningSibGo MSG_FACE
	callasm 0x8FB0101
	warp 9 9 0xFF 0xD 0xA
	pause 0xFF
	return
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Options PC@@@@@@@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_IndigoOptionsPC
EventScript_IndigoOptionsPC:
	sound 0x2
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_OpeningOptionsIntro MSG_KEEPOPEN
	checkflag FLAG_RUN_START
	if 0x1 _goto EventScript_IndigoOptionsPC_RunStarted @@@run started, computer inactive@@@
	msgbox gText_OpeningOptionsActive MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_List
	end
	
.global EventScript_IndigoOptionsPC_RunStarted @@@other computers in sib & rival rooms use this@@@
EventScript_IndigoOptionsPC_RunStarted:
	msgbox gText_OpeningOptionsInactive MSG_NORMAL
	goto EventScript_IndigoOptionsPC_LogOff

EventScript_IndigoOptionsPC_List:
	preparemsg gText_WhichSetting 
	waitmsg
	setvar 0x8004 0x0
	setvar 0x8000 0x2
	setvar 0x8001 0x4
	special 0x158
	waitstate
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_IndigoOptionsPC_EnableDisableCheck_Scalemons
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_IndigoOptionsPC_EnableDisableCheck_Rando
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_IndigoOptionsPC_LogOff
	closeonkeypress
	callasm 0x8FB0101
	release
	end
	
EventScript_IndigoOptionsPC_LogOff:
	msgbox gText_OpeningOptionsPCDone MSG_KEEPOPEN
	closeonkeypress
	sound 0x3
	callasm 0x8FB0101
	release
	end
	
EventScript_IndigoOptionsPC_EnableDisableCheck_Scalemons:
	checkflag 0x1200
	if SET _goto EventScript_ScalemonsEnableAsk
	goto EventScript_ScalemonsDisableAsk
	release
	end
	
EventScript_ScalemonsEnableAsk:
	msgbox gText_ScalemonsCurrentlyEnabled MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskScalemons
	end
	
EventScript_ScalemonsDisableAsk:
	msgbox gText_ScalemonsCurrentlyDisabled MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskScalemons
	end
	
EventScript_IndigoOptionsPC_AskScalemons:
	msgbox gText_OpeningOptionsScalemons MSG_YESNO
	compare LASTRESULT YES
	if equal _goto ScalemonsSet
	compare LASTRESULT NO
	if equal _goto ScalemonsUnset
	return
	
ScalemonsSet:
	setflag 0x1200
	sound 0x30
	msgbox gText_ScalemonsEnabledYes MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	release
	end
	
ScalemonsUnset:
	clearflag 0x1200
	sound 0x30
	msgbox gText_ScalemonsEnabledNo MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	return

EventScript_IndigoOptionsPC_EnableDisableCheck_Rando:
	checkflag 0x940
	if SET _goto EventScript_RandoEnableAsk
	goto EventScript_RandoDisableAsk
	release
	end
	
EventScript_RandoEnableAsk:
	msgbox gText_RandomizerCurrentlyEnabled MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskRandomizer
	end
	
EventScript_RandoDisableAsk:
	msgbox gText_RandomizerCurrentlyDisabled MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskRandomizer
	end

EventScript_IndigoOptionsPC_AskRandomizer:
	msgbox gText_OpeningOptionsRandomizer MSG_YESNO
	compare LASTRESULT YES
	if equal _goto RandomSet
	compare LASTRESULT NO
	if equal _goto RandomUnset
	return
	
RandomSet:
	setflag 0x940
	sound 0x30
	msgbox gText_RandomizerEnabledYes MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	release
	end
	
RandomUnset:
	clearflag 0x940
	sound 0x30
	msgbox gText_RandomizerEnabledNo MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	return
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Trainer Lounge map script@@@@@@@@@@@
@;Sib sprite switch@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionIntroSibSpriteScript_Hotel2
gMapScripts_VermilionIntroSibSpriteScript_Hotel2:
   mapscript MAP_SCRIPT_ON_LOAD EventScript_ChangeSibSprite_Hotel2
   .byte MAP_SCRIPT_TERMIN

EventScript_ChangeSibSprite_Hotel2:
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry2
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy2
    end

EventScript_SetSibNPCAsSherry2:
    setvar 0x5028 + 0x0 7
	checkflag FLAG_STARTER_CHOSEN
	if SET _goto EventScript_VermilionIntro_HideSib2
    end

EventScript_SetSibNPCAsBrandy2:
    setvar 0x5028 + 0x0 0
	checkflag FLAG_STARTER_CHOSEN
	if SET _goto EventScript_VermilionIntro_HideSib2
    end
	
EventScript_VermilionIntro_HideSib2:
	setflag 0x952
	hidesprite 1
	end
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Pokemon Choice pre-dialogue@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionIntro_Rival_First
EventScript_VermilionIntro_Rival_First:
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Rival_1 MSG_FACE
	callasm 0x8FB0101
	release
	end

.global EventScript_VermilionIntro_Sib_First
EventScript_VermilionIntro_Sib_First:
	checkgender
	compare LASTRESULT 0x0
    if 0x1 _goto EventScript_VermilionIntro_Sib_First_Sherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_VermilionIntro_Sib_First_Brandy
    end
	
EventScript_VermilionIntro_Sib_First_Sherry:
	loadpointer 0x0 gText_NameSherry
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_SibSherry_1 MSG_FACE
	callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Sib_First_Brandy:
	loadpointer 0x0 gText_NameBrandy
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_SibBrandy_1 MSG_FACE
	callasm 0x8FB0101
	release
	end
	
.global EventScript_VermilionIntro2_WhereYaGoin1
EventScript_VermilionIntro2_WhereYaGoin1:
	lockall
	setvar 0x511B 0x0
	checkgender
	compare LASTRESULT 0x0
    if 0x1 _goto EventScript_VermilionIntro_Sib_Second_Sherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_VermilionIntro_Sib_Second_Brandy
	end
    
EventScript_VermilionIntro_Sib_Second_Sherry:
	loadpointer 0x0 gText_NameSherry
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	applymovement 0x1 EventScript_Intro_SibFaceDown
	msgbox gText_PokemonChoiceLobby_SibWhereGoing MSG_KEEPOPEN
	closeonkeypress
	callasm 0x8FB0101
	applymovement 0xFF EventScript_Intro_PlayerAwayFromExit1
	waitmovement 0x0
	releaseall
	end
	
EventScript_VermilionIntro_Sib_Second_Brandy:
	loadpointer 0x0 gText_NameBrandy
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	applymovement 0x1 EventScript_Intro_SibFaceDown
	msgbox gText_PokemonChoiceLobby_SibWhereGoing MSG_KEEPOPEN
	closeonkeypress
	callasm 0x8FB0101
	applymovement 0xFF EventScript_Intro_PlayerAwayFromExit1
	waitmovement 0x0
	releaseall
	end
	
EventScript_Intro_SibFaceDown:
	.byte look_down
	.byte 0xFE
	
EventScript_Intro_PlayerAwayFromExit1:
	.byte walk_right
	.byte 0xFE

.global EventScript_VermilionHotel_OakLabsTrainerSuite
EventScript_VermilionHotel_OakLabsTrainerSuite:
	msgbox gText_VermilionPortHotel_TrainerSuite MSG_SIGN
	end
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Outdoor NPCs@@@@@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionPort_NPC1
EventScript_VermilionPort_NPC1:
	msgbox gText_VermilionPortAutorun MSG_FACE
	end

.global EventScript_VermilionPort_NPC2
EventScript_VermilionPort_NPC2:
	msgbox gText_VermilionPortNPC2 MSG_FACE
	end

.global EventScript_VermilionPort_NPC3
EventScript_VermilionPort_NPC3:
	msgbox gText_VermilionTruck1 MSG_FACE
	end

.global EventScript_VermilionPort_NPC4
EventScript_VermilionPort_NPC4:
	msgbox gText_VermilionPortNPC1 MSG_FACE
	end

.global EventScript_VermilionPort_NPC5
EventScript_VermilionPort_NPC5:
	msgbox gText_VermilionTruck2 MSG_FACE
	end

.global EventScript_VermilionPort_NPC6
EventScript_VermilionPort_NPC6:
	msgbox gText_VermilionPortNPC3 MSG_FACE
	end

