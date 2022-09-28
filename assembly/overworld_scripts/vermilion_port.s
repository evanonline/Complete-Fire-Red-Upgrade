.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_RUN_START, 0x993

.global EventScript_BathroomEasterEgg
EventScript_BathroomEasterEgg:
	msgbox gText_BathroomEasterEgg MSG_SIGN
	end

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Sib sprite switch@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_IntroSibSpriteScript
EventScript_IntroSibSpriteScript:
    mapscript MAP_SCRIPT_ON_LOAD EventScript_ChangeSibSprite
    .byte MAP_SCRIPT_TERMIN

EventScript_ChangeSibSprite:
      checkgender
      compare LASTRESULT 0x0
      if 0x1 _goto EventScript_SetBrandySprite
      compare LASTRESULT 0x1
      if 0x1 _goto EventScript_SetSherrySprite
      end

EventScript_SetBrandySprite:
      setvar 0x5028 + 0x0 0 
      end

EventScript_SetSherrySprite:
      setvar 0x5028 + 0x0 7
      end

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Sib entering hotel room@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_SibStart
EventScript_SideQuest_SibCheckMap:
	mapscript MAP_SCRIPT_ON_LOAD EventScript_SibCheck
	.byte MAP_SCRIPT_TERMIN

EventScript_SibCheck:
	checkflag FLAG_RUN_START
	if 0x1 _goto EventScript_HideSib	
	lock
	goto EventScript_SibStart
	release
	end

EventScript_SibStart:
	opendoor 0x1F 0x1F
	waitdooranim
	showsprite 0
	applymovement 0xFF EventScript_IntroPlayerMove1 @@@;Player faces door@@@
	waitmovement 0x0
	sound 0x15
	applymovement 0x1 EventScript_IntroSibMove1 @@@;Sib enters@@@
	waitmovement 0x0
	sound 0x15
	closedoor 0x1F 0x1F
	msgbox gText_OpeningOptionsStart MSG_FACE @@@;Sib says first dialogue@@@
	end
	
EventScript_IntroPlayerMove1:
	.byte look_up
	.byte 0x62
	.byte 0xFE

EventScript_IntroSibMove1:
	.byte walk_down
	.byte 0x62
	.byte 0xFE

EventScript_SibRoomLeave:
	lock
	faceplayer
	msgbox gText_OpeningSibWarning MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_RunStart
	release
	end

EventScript_RunStart:
	setflag FLAG_RUN_START
	msgbox gText_OpeningSibGo MSG_FACE
	warp 3 0 0xFF 0x7 0x3 @@temporarily pallet. eventually want warp 1 5@@
	pause 0xA
	return

EventScript_HideSib:
	hidesprite 0
	release
	end
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Options PC@@@@@@@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_IndigoOptionsPC
EventScript_IndigoOptionsPC:
	msgbox gText_OpeningOptionsIntro MSG_FACE
	checkflag FLAG_RUN_START
	if 0x1 _goto EventScript_IndigoOptionsPC_RunStarted @@@run started, computer inactive@@@
	msgbox gText_OpeningOptionsActive MSG_FACE
	goto EventScript_IndigoOptionsPC_List
	end
	
.global EventScript_IndigoOptionsPC_RunStarted @@@other computers in sib & rival rooms use this@@@
EventScript_IndigoOptionsPC_RunStarted:
	msgbox gText_OpeningOptionsInactive MSG_FACE
	end

EventScript_IndigoOptionsPC_List:
	preparemsg gText_WhichSetting 
	waitmsg
	setvar 0x8004 0x0
	setvar 0x8000 0x2
	setvar 0x8001 0x2
	special 0x158
	waitstate
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_IndigoOptionsPC_RandoEnableDisableCheck
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_IndigoOptionsPC_LogOff
	release
	end
	
EventScript_IndigoOptionsPC_LogOff:
	msgbox gText_OpeningOptionsPCDone MSG_FACE
	sound 0x30
	release
	end

EventScript_IndigoOptionsPC_RandoEnableDisableCheck:
	checkflag 0x940
	if SET _goto EventScript_RandoEnableAsk
	goto EventScript_RandoDisableAsk
	release
	end
	
EventScript_RandoEnableAsk:
	msgbox gText_RandomizerCurrentlyEnabled MSG_FACE
	goto EventScript_IndigoOptionsPC_AskRandomizer
	end
	
EventScript_RandoDisableAsk:
	msgbox gText_RandomizerCurrentlyDisabled MSG_FACE
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
@;Outdoor NPCS@@@@@@@@@@@@@@@@@@@@@@@@
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

