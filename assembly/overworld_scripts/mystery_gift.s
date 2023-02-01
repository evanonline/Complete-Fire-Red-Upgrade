.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

##.equ FLAG_BADGE03_GET, 0x822
.equ FLAG_RANDOIMMUNITY, 0x993

.global EventScript_MysteryGiftPerson
EventScript_MysteryGiftPerson:
    lock
    msgbox gText_WelcomeToMysteryGift MSG_YESNO
    compare LASTRESULT 0x1
    goto_if_eq EventScript_MysteryGift_CheckPartySize
    release
    end

EventScript_MysteryGift_CheckPartySize:
    getpartysize
    compare LASTRESULT 6
	goto_if_eq EventScript_MysteryGift_NoSpaceForMon
    goto EventScript_MysteryGift_EnterPassword
    release
    end

EventScript_MysteryGift_NoSpaceForMon:
    msgbox gText_NoRoomInParty MSG_FACE
	release
	end

EventScript_MysteryGift_EnterPassword:
	checkflag 0x940
	if SET _call EventScript_MysteryGiftRandoImmunity1
    msgbox gText_PleaseEnterPassword MSG_FACE
    setvar 0x8000 1
    setvar 0x8001 1
    special 0x12C
    waitstate
    special 0x12D
    switch LASTRESULT
    case 0, EventScript_MysteryGift_InvalidMysteryGift
    case 1, EventScript_MysteryGift_ClaimGift
    case 2, EventScript_MysteryGift_AlreadyReceieved
	checkflag FLAG_RANDOIMMUNITY
	if SET _call EventScript_MysteryGiftRandoImmunity2
    release
    end

EventScript_MysteryGift_InvalidMysteryGift:
    msgbox gText_InvalidMysteryGift MSG_YESNO
    compare LASTRESULT 1
    goto_if_eq EventScript_MysteryGift_EnterPassword
    release
	checkflag FLAG_RANDOIMMUNITY
	if SET _call EventScript_MysteryGiftRandoImmunity2
    end

EventScript_MysteryGift_ClaimGift: 
    copyvar 0x4001 0x8005
    bufferpokemon 0 0x4001
    ##callasm ShowMysteryGiftMon
    fanfare 0x101
    msgbox gText_PlayerReceievedGiftMon MSG_KEEPOPEN
    waitse
    closeonkeypress
    ##hidepokepic
	msgbox 0x81A56A7 MSG_YESNO
    compare LASTRESULT 0x0
	goto_if_eq EventScript_MysteryGift_EndGiveMon
	call 0x81A8C27
	call 0x81A74EB
	checkflag FLAG_RANDOIMMUNITY
	if SET _call EventScript_MysteryGiftRandoImmunity2
    release
    end

EventScript_MysteryGift_EndGiveMon:
	checkflag FLAG_RANDOIMMUNITY
	if SET _call EventScript_MysteryGiftRandoImmunity2
    release
    end

EventScript_MysteryGift_AlreadyReceieved:
    msgbox gText_AlreadyClaimedGift MSG_FACE
	checkflag FLAG_RANDOIMMUNITY
	if SET _call EventScript_MysteryGiftRandoImmunity2
    release
    end

##CableClub_EventScript_HideOrShowMysteryGiftMan:
   ## goto_if_unset FLAG_BADGE03_GET EventScript_HideMysteryGiftMan
	##clearflag 0x70
    ##return

EventScript_HideMysteryGiftMan:
	setflag 0x70
	return

EventScript_MysteryGiftRandoImmunity1:
	clearflag 0x940
	setflag FLAG_RANDOIMMUNITY
	return
	
EventScript_MysteryGiftRandoImmunity2:
	setflag 0x940
	clearflag FLAG_RANDOIMMUNITY
	return
	