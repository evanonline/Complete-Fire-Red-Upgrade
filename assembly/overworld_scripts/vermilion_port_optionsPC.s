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

.global EventScript_IndigoOptionsPC
EventScript_IndigoOptionsPC:
	sound 0x2
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
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
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	checkflag 0x996
	if SET _goto EventScript_PowerupsDisableAsk
	goto EventScript_PowerupsEnableAsk
	release
	end
	
EventScript_PowerupsEnableAsk:
	msgbox gText_PowerupsCurrentlyEnabled MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskPowerups
	end
	
EventScript_PowerupsDisableAsk:
	msgbox gText_PowerupsCurrentlyDisabled MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskPowerups
	end

EventScript_IndigoOptionsPC_AskPowerups:
	msgbox gText_OpeningOptionsPowerups MSG_YESNO
	compare LASTRESULT YES
	if equal _goto PowerupsSet
	compare LASTRESULT NO
	if equal _goto PowerupsUnset
	return
	
PowerupsSet:
	setflag 0x996
	sound 0x30
	msgbox gText_PowerupsEnabledYes MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	release
	end
	
PowerupsUnset:
	clearflag 0x996
	sound 0x30
	msgbox gText_PowerupsEnabledNo MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	return
	
EventScript_IndigoOptionsPC_EnableDisableCheck_Scalemons:
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
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
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
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
	preparemsg gText_OpeningOptionsRandomizer
	waitmsg
	setvar 0x8004 0x0
	setvar 0x8000 0x3
	setvar 0x8001 0x4
	special 0x158
	waitstate
	compare LASTRESULT 0x0
	if 0x1 _goto RandomSet
	compare LASTRESULT 0x1
	if 0x1 _goto RandomUnset
	compare LASTRESULT 0x2
	if 0x1 _goto RandomExplain
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_IndigoOptionsPC_List
	return
	
RandomSet:
	setflag 0x940
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	sound 0x30
	msgbox gText_RandomizerEnabledYes MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	release
	end
	
RandomUnset:
	clearflag 0x940
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	sound 0x30
	msgbox gText_RandomizerEnabledNo MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	return
	
RandomExplain:
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_OpeningOptionsRandomizerExplain MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskRandomizer
	return
	
EventScript_IndigoOptionsPC_EnableDisableCheck_SinnohProblem:
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	checkflag 0x998
	if SET _goto EventScript_SinnohProblemEnableAsk
	goto EventScript_SinnohProblemDisableAsk
	release
	end
	
EventScript_SinnohProblemEnableAsk:
	msgbox gText_SinnohProblemCurrentlyEnabled MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskSinnohProblem
	end
	
EventScript_SinnohProblemDisableAsk:
	msgbox gText_SinnohProblemCurrentlyDisabled MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskSinnohProblem
	end
	
EventScript_IndigoOptionsPC_AskSinnohProblem:
	preparemsg gText_OpeningOptionsSinnohProblem
	waitmsg
	setvar 0x8004 0x0
	setvar 0x8000 0x3
	setvar 0x8001 0x4
	special 0x158
	waitstate
	compare LASTRESULT 0x0
	if 0x1 _goto SinnohProblemSet
	compare LASTRESULT 0x1
	if 0x1 _goto SinnohProblemUnset
	compare LASTRESULT 0x2
	if 0x1 _goto SinnohProblemExplain
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_IndigoOptionsPC_List
	return
	
SinnohProblemSet:
	setflag 0x998
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	sound 0x30
	msgbox gText_SinnohProblemEnabledYes MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	release
	end
	
SinnohProblemUnset:
	clearflag 0x998
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	sound 0x30
	msgbox gText_SinnohProblemEnabledNo MSG_KEEPOPEN
	checksound
	goto EventScript_IndigoOptionsPC_List
	return
	
SinnohProblemExplain:
	callasm 0x8FB0101
	loadpointer 0x0 gText_NamePC
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_OpeningOptionsSinnohProblemExplain MSG_KEEPOPEN
	goto EventScript_IndigoOptionsPC_AskSinnohProblem
	return
