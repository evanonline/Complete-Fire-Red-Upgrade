.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_DISABLE_BAG, 0x915
.equ FLAG_GYM_CHALLENGE_ACTIVE, 0x0B5
.equ FLAG_GYMGUY_CELADONCERULEAN, 0x0B6

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Gym_ChallengePrompt
EventScript_Gym_ChallengePrompt:
	checkflag FLAG_GYM_CHALLENGE_ACTIVE
	if SET _goto GymChallenge_Leave1
	msgbox gText_GymChallenge_Activation MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto EventScript_Gym_ChallengeStart
	applymovement 0xFF WalkDown
	end
	
EventScript_Gym_ChallengeStart:
	setflag FLAG_DISABLE_BAG
	setflag FLAG_GYM_CHALLENGE_ACTIVE
	applymovement 0xFF WalkUp
	sound 0x41
	end

GymChallenge_Leave1:
	msgbox gText_GymChallenge_Leave MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto GymChallenge_Leave2
	applymovement 0xFF WalkUp
	end
	
GymChallenge_Leave2:
	clearflag FLAG_DISABLE_BAG
	clearflag FLAG_GYM_CHALLENGE_ACTIVE
	applymovement 0xFF WalkDown
	end		

.global EventScript_Gym_GymGuyFirstGym_Cerulean_Tile
EventScript_Gym_GymGuyFirstGym_Cerulean_Tile:
	applymovement 0xFF LookLeft
	applymovement 0x1 GymGuyFacing
	sound 0x15
	waitmovement 0x0
	pause 0x10
	goto EventScript_Gym_GymGuyFirstGym_Main
	end
	

.global EventScript_Gym_GymGuyFirstGym_Cerulean_NPC
EventScript_Gym_GymGuyFirstGym_Cerulean_NPC:
	checkflag FLAG_GYMGUY_CELADONCERULEAN
	if SET _goto GymGuy_CeruleanExplainer
	faceplayer
	goto EventScript_Gym_GymGuyFirstGym_Main
	end

EventScript_Gym_GymGuyFirstGym_Main:
	msgbox gText_GymGuy_GymMechanicsExplainer_DoYouKnow MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto EventScript_Gym_GymGuyFirstGym_2
	msgbox gText_GymGuy_GymMechanicsExplainer_No MSG_NORMAL
	setvar 0x4095 0x1
	setflag FLAG_GYMGUY_CELADONCERULEAN
	end
	
EventScript_Gym_GymGuyFirstGym_2:
	msgbox gText_GymGuy_GymMechanicsExplainer_Yes MSG_NORMAL
	checkflag FLAG_GYMGUY_CELADONCERULEAN
	if NOT_SET _goto GymInitialVarAndFlag
	end
	
GymInitialVarAndFlag:
	setvar 0x4095 0x1
	setflag FLAG_GYMGUY_CELADONCERULEAN
	end

GymGuy_CeruleanExplainer:
	msgbox gText_GymGuy_HelpDefault MSG_FACE
	setvar 0x8006 0x0
	loadpointer 0x0 sText_GymGuy1
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 sText_GymGuy2
	special 0x25
	setvar 0x8006 0x2
	loadpointer 0x0 sText_NoThanks
	special 0x25
	setvar 0x8006 0x3
	multichoice 0x0 0x0 THREE_MULTICHOICE_OPTIONS 0x1
	compare LASTRESULT 0xA
	if greaterorequal _goto EndGymGuyTalk
	switch LASTRESULT
	case 0, EventScript_Gym_GymGuyFirstGym_2
	case 1, EventScript_GymGuy_MistyGym
	case 2, EndGymGuyTalk
	releaseall
	end
	
EventScript_GymGuy_MistyGym:
	msgbox gText_GymGuy_MistyGymBefore MSG_NORMAL
	end
	
EndGymGuyTalk:
	msgbox gText_GymGuy_HelpDefault_None MSG_NORMAL
	end
	

WalkUp:
	.byte walk_up
	.byte 0xFE
	
WalkDown:
	.byte walk_down
	.byte 0xFE
	
LookLeft:
	.byte look_left
	.byte 0xFE
	
GymGuyFacing:
	.byte look_right
	.byte exclaim
	.byte 0xFE
