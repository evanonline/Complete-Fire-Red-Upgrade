.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_DENDRASPOKENLAB, 0x0EC

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



.global EventScript_CeriseLab_Dendra
EventScript_CeriseLab_Dendra:
	faceplayer
	checkflag FLAG_DENDRASPOKENLAB
	if SET _call DendraIntroTalkedTo
	checkflag FLAG_DENDRASPOKENLAB
	if NOT_SET _call DendraIntroNotTalkedTo
	goto DendraMultichoice
	end
	
DendraIntroNotTalkedTo:
	msgbox gText_CeriseLab_DendraIntro MSG_KEEPOPEN
	setflag FLAG_DENDRASPOKENLAB
	return

DendraIntroTalkedTo:
	msgbox gText_CeriseLab_DendraIntroAfterMet MSG_KEEPOPEN
	return

DendraMultichoice:
	setvar 0x8006 0x0
	loadpointer 0x0 sText_Dendra_EVs
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 sText_Dendra_IVs
	special 0x25
	setvar 0x8006 0x2
	loadpointer 0x0 sText_Dendra_Natures
	special 0x25
	setvar 0x8006 0x3
	loadpointer 0x0 sText_Dendra_PhysSpec
	special 0x25
	setvar 0x8006 0x4
	loadpointer 0x0 sText_NoThanks
	special 0x25
	preparemsg gText_CeriseLab_DendraMenu
	waitmsg
	multichoice 0x0 0x0 FIVE_MULTICHOICE_OPTIONS 0x0
	compare LASTRESULT 0xA
	if greaterorequal _goto EventScript_CeriseLab_Dendra_Dendone
	switch LASTRESULT
	case 0, EventScript_CeriseLab_Dendra_EVs
	case 1, EventScript_CeriseLab_Dendra_IVs
	case 2, EventScript_CeriseLab_Dendra_Natures
	case 3, EventScript_CeriseLab_Dendra_PhysSpec
	case 4, EventScript_CeriseLab_Dendra_Dendone
	releaseall
	end
	
EventScript_CeriseLab_Dendra_EVs:
	msgbox gText_CeriseLab_DendraTutorials_EVs MSG_KEEPOPEN
	goto DendraMultichoice
	end
	
EventScript_CeriseLab_Dendra_IVs:
	msgbox gText_CeriseLab_DendraTutorials_IVs MSG_KEEPOPEN
	goto DendraMultichoice
	end
	
EventScript_CeriseLab_Dendra_Natures:
	msgbox gText_CeriseLab_DendraTutorials_Natures MSG_KEEPOPEN
	goto DendraMultichoice
	end

EventScript_CeriseLab_Dendra_PhysSpec:
	msgbox gText_CeriseLab_DendraTutorials_PhysicalSpecial MSG_KEEPOPEN
	goto DendraMultichoice
	end

EventScript_CeriseLab_Dendra_Dendone:
	msgbox gText_CeriseLab_DendraByeBye MSG_NORMAL
	end
