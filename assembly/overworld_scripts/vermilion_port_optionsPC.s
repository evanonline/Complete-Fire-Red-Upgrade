.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_STARTER_CHOSEN, 0x990
.equ FLAG_OPENING_TEXT, 0x991
.equ FLAG_CHOSESTARTER1, 0x960
.equ FLAG_CHOSESTARTER2, 0x961
.equ FLAG_CHOSESTARTER3, 0x962
.equ FLAG_INTROCUTSCENE1, 0x95E

.equ FLAG_POWERUPS, 0x996
.equ FLAG_POWERUPS_RESTRICTED, 0x997
.equ FLAG_SINNOH_PROBLEM, 0x998

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Options PC@@@@@@@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_IndigoOptionsPC_Broken
EventScript_IndigoOptionsPC_Broken:
	sound 0x2
	msgbox gText_OpeningOptionsMenusSuck MSG_KEEPOPEN
	closeonkeypress
	sound 0x3
	end

.global EventScript_IndigoOptionsPC
EventScript_IndigoOptionsPC:
	sound 0x2
	msgbox gText_OpeningOptionsScanCheck MSG_KEEPOPEN
	checkflag FLAG_INTROCUTSCENE1
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
	if 0x1 _goto EventScript_IndigoOptionsPC_EnableDisableCheck_Powerups
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_IndigoOptionsPC_EnableDisableCheck_Scalemons
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_IndigoOptionsPC_EnableDisableCheck_Rando
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_IndigoOptionsPC_EnableDisableCheck_SinnohProblem
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_IndigoOptionsPC_LogOff
	goto EventScript_IndigoOptionsPC_LogOff
	release
	end
	
EventScript_IndigoOptionsPC_LogOff:
	msgbox gText_OpeningOptionsPCDone MSG_KEEPOPEN
	closeonkeypress
	sound 0x3
	callasm 0x8FB0101
	release
	end
	
EventScript_IndigoOptionsPC_EnableDisableCheck_Powerups:	
	goto EventScript_IndigoOptionsPC_LogOff
	return

EventScript_IndigoOptionsPC_EnableDisableCheck_Scalemons:
	goto EventScript_IndigoOptionsPC_LogOff
	return

EventScript_IndigoOptionsPC_EnableDisableCheck_Rando:
	goto EventScript_IndigoOptionsPC_LogOff
	return

EventScript_IndigoOptionsPC_EnableDisableCheck_SinnohProblem:
	goto EventScript_IndigoOptionsPC_LogOff
	return
