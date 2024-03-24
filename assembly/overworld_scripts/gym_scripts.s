.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_DISABLE_BAG, 0x915
.equ FLAG_GYM_CHALLENGE_ACTIVE, 0x0B5
.equ FLAG_DOUBLE_BATTLE, 0x907
.equ  FLAG_TWO_OPPONENTS, 0x909

.equ FLAG_GYMGUY_CELADONCERULEAN, 0x0B6
.equ FLAG_MISTY_FIRST_ATTEMPT, 0x0B7

.equ FLAG_CELADONGYM_ROOT_1, 0x0B8
.equ FLAG_CELADONGYM_ROOT_2, 0x0B9
.equ FLAG_CELADONGYM_ROOT_3, 0x0BA
.equ FLAG_CELADONGYM_ROOT_4, 0x0BB
.equ FLAG_CELADONGYM_ROOT_ALL, 0x0BC

.equ FLAG_ERIKA_FIRST_ATTEMPT, 0x0BD

.equ FLAG_DEFEATED_BROCK, 0x4B0
.equ FLAG_DEFEATED_MISTY, 0x4B1
.equ FLAG_DEFEATED_VISQUEZ, 0x4B2
.equ FLAG_DEFEATED_ERIKA, 0x4B3
.equ FLAG_DEFEATED_JOY, 0x4B4
.equ FLAG_DEFEATED_SABRINA, 0x4B5
.equ FLAG_DEFEATED_BRYONY, 0x4B6
.equ FLAG_DEFEATED_JOEY, 0x4B7
.equ FLAG_DEFEATED_LORELEI, 0x4B8
.equ FLAG_DEFEATED_BRUNO, 0x4B9
.equ FLAG_DEFEATED_FLYNN, 0x4BA
.equ FLAG_DEFEATED_KAREN, 0x4BB
.equ FLAG_DEFEATED_CHAMP, 0x4BC

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@@@@Cerulean@@@@

.global EventScript_Gym_ChallengePrompt_Cerulean
EventScript_Gym_ChallengePrompt_Cerulean:
	checkflag FLAG_GYM_CHALLENGE_ACTIVE
	if SET _goto GymChallenge_Leave1
	cleartrainerflag 45
	cleartrainerflag 46
	cleartrainerflag 47
	cleartrainerflag 48
	goto GymChallengeActivation

GymChallengeActivation:
	msgbox gText_GymChallenge_Activation MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto EventScript_Gym_ChallengeStart
	applymovement 0xFF WalkDown
	closemessage
	end
	
EventScript_Gym_ChallengeStart:
	@countpokemon
	@compare LASTRESULT 0x1
    @if 0x1 _goto NeedMorePokemon
	setflag FLAG_DISABLE_BAG
	setflag FLAG_GYM_CHALLENGE_ACTIVE
	applymovement 0xFF WalkUp
	sound 0x41
	closemessage
	end

NeedMorePokemon:
	msgbox gText_GymChallenge_Activation_Need2Pokemon MSG_NORMAL
	applymovement 0xFF WalkDown
	end

GymChallenge_Leave1:
	msgbox gText_GymChallenge_Leave MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto GymChallenge_Leave2
	applymovement 0xFF WalkUp
	closemessage
	end
	
GymChallenge_Leave2:
	clearflag FLAG_DISABLE_BAG
	clearflag FLAG_GYM_CHALLENGE_ACTIVE
	applymovement 0xFF WalkDown
	closemessage
	end		

.global EventScript_Gym_GymGuyFirstGym_CeladonCerulean_Tile
EventScript_Gym_GymGuyFirstGym_CeladonCerulean_Tile:
	applymovement 0xFF LookLeft
	applymovement 0x1 GymGuyFacing
	sound 0x15
	waitmovement 0x0
	pause 0x10
	goto EventScript_Gym_GymGuyFirstGym_Main
	end


.global EventScript_Gym_GymGuyFirstGym_Celadon_NPC
EventScript_Gym_GymGuyFirstGym_Celadon_NPC:
	checkflag FLAG_GYMGUY_CELADONCERULEAN
	if SET _goto GymGuy_CeladonExplainer
	faceplayer
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

GymGuy_CeladonExplainer:
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
	case 1, EventScript_GymGuy_ErikaGym
	case 2, EndGymGuyTalk
	releaseall
	end
	
EventScript_GymGuy_MistyGym:
	msgbox gText_GymGuy_MistyGymBefore MSG_NORMAL
	
	end
EventScript_GymGuy_ErikaGym:
	msgbox gText_GymGuy_ErikaGymBefore MSG_NORMAL
	end
	
EndGymGuyTalk:
	msgbox gText_GymGuy_HelpDefault_None MSG_NORMAL
	end
	
.global EventScript_Gym_CeruleanGym_SwimmerJulie
EventScript_Gym_CeruleanGym_SwimmerJulie:
    trainerbattle0 0x0 45 0x0 gText_CeruleanGym_SwimmerJulie_Intro gText_CeruleanGym_SwimmerJulie_Lose 
	msgbox gText_CeruleanGym_SwimmerJulie_After MSG_NORMAL
	end

.global EventScript_Gym_CeruleanGym_SwimmerMick
EventScript_Gym_CeruleanGym_SwimmerMick:
    trainerbattle0 0x0 47 0x0 gText_CeruleanGym_SwimmerMick_Intro gText_CeruleanGym_SwimmerMick_Lose
	msgbox gText_CeruleanGym_SwimmerMick_After MSG_NORMAL
	end
	
.global EventScript_Gym_CeruleanGym_Misty
EventScript_Gym_CeruleanGym_Misty:
	checkflag FLAG_DEFEATED_MISTY
	if SET _goto MistyAfter
	lockall
	checkflag FLAG_MISTY_FIRST_ATTEMPT
	if SET _call Misty_Attempt2
	checkflag FLAG_MISTY_FIRST_ATTEMPT
	if NOT_SET _call Misty_FirstEncounter
	setflag FLAG_MISTY_FIRST_ATTEMPT
	checkflag FLAG_DEFEATED_ERIKA
	if SET _call Misty_Gym2
	checkflag FLAG_DEFEATED_ERIKA
	if NOT_SET _call Misty_Gym1
	setvar 0x4097 0x1 @disables gate tiles
	clearflag FLAG_DISABLE_BAG
	clearflag FLAG_GYM_CHALLENGE_ACTIVE
	msgbox gText_CeruleanGym_Misty_After1 MSG_KEEPOPEN
	fanfare 260
	msgbox gText_GiveMistyBadge MSG_KEEPOPEN
	waitfanfare
	setflag 0x821
	msgbox gText_BadgeAffixed MSG_KEEPOPEN
	pause 0x5
	setflag FLAG_DEFEATED_MISTY
	msgbox gText_CeruleanGym_Misty_FlipTurn MSG_KEEPOPEN
	fanfare 0x101
	msgbox gText_RecieveFlipTurn MSG_KEEPOPEN
	waitfanfare 
	additem ITEM_TM10 0x1
	msgbox gText_CeruleanGym_Misty_After2 MSG_NORMAL
	end
	
Misty_FirstEncounter:
	msgbox gText_CeruleanGym_Misty_BeforeFight1 MSG_NORMAL
	return

Misty_Attempt2:
	msgbox gText_CeruleanGym_Misty_BeforeFight2 MSG_NORMAL
	return
	
Misty_Gym1:
	trainerbattle3 0x3 49 0x0 gText_CeruleanGym_Misty_Lose
	return
	
Misty_Gym2:
	trainerbattle3 0x3 50 0x0 gText_CeruleanGym_Misty_Lose
	return
	
MistyAfter:
	checkflag 0x823
	if SET _goto MistySaffronAdvice
	msgbox gText_CeruleanGym_Misty_PostFight_1stGym MSG_FACE
	end
	
MistySaffronAdvice:
	msgbox gText_CeruleanGym_Misty_PostFight_2ndGym MSG_FACE
	end

@@@@Celadon@@@@

.global EventScript_Gym_ChallengePrompt_Celadon
EventScript_Gym_ChallengePrompt_Celadon:
	checkflag FLAG_GYM_CHALLENGE_ACTIVE
	if SET _call GymChallenge_Leave1
	checkflag FLAG_CELADONGYM_ROOT_1
	if SET _call RootsReset
	checkflag FLAG_CELADONGYM_ROOT_2
	if SET _call RootsReset
	checkflag FLAG_CELADONGYM_ROOT_3
	if SET _call RootsReset
	checkflag FLAG_CELADONGYM_ROOT_4
	if SET _call RootsReset
	clearflag FLAG_CELADONGYM_ROOT_1
	clearflag FLAG_CELADONGYM_ROOT_2
	clearflag FLAG_CELADONGYM_ROOT_3
	clearflag FLAG_CELADONGYM_ROOT_4
	clearflag FLAG_CELADONGYM_ROOT_ALL
	cleartrainerflag 51
	cleartrainerflag 52
	cleartrainerflag 53
	cleartrainerflag 54
	cleartrainerflag 55
	cleartrainerflag 56
	cleartrainerflag 57
	cleartrainerflag 58
	goto GymChallengeActivation
	
RootsReset:
	clearflag FLAG_CELADONGYM_ROOT_1
	clearflag FLAG_CELADONGYM_ROOT_2
	clearflag FLAG_CELADONGYM_ROOT_3
	clearflag FLAG_CELADONGYM_ROOT_4
	clearflag FLAG_CELADONGYM_ROOT_ALL
	setmaptile 0x2 0x14 0x2C9 0x0
	setmaptile 0xA 0x14 0x2C9 0x0
	setmaptile 0xA 0x3 0x2C9 0x0
	setmaptile 0x2 0x3 0x2C9 0x0
	setmaptile 0x6 0x6 0x2CA 0x0
	setmaptile 0x6 0x7 0x2CB 0x0
	setmaptile 0x6 0x8 0x2CC 0x0
	special 0x8E
	sound 0x8A
	checksound
	pause 0x2
	msgbox gText_CeladonGym_ThePlantsReturn MSG_NORMAL
	pause 0x1A
	return

.global EventScript_Gym_CeladonGym_PicnickerFynley
EventScript_Gym_CeladonGym_PicnickerFynley:
    trainerbattle0 0x0 51 0x0 gText_CeladonGym_PicnickerFynley_Intro gText_CeladonGym_PicnickerFynley_Lose
	msgbox gText_CeladonGym_PicnickerFynley_After MSG_NORMAL
	end

.global EventScript_Gym_CeladonGym_GuitaristClint
EventScript_Gym_CeladonGym_GuitaristClint:
    trainerbattle0 0x0 53 0x0 gText_CeladonGym_GuitaristClint_Intro gText_CeladonGym_GuitaristClint_Lose
	msgbox gText_CeladonGym_GuitaristClint_After MSG_NORMAL
	end

.global EventScript_Gym_CeladonGym_PkmnBreederMurphy
EventScript_Gym_CeladonGym_PkmnBreederMurphy:
    trainerbattle0 0x0 55 0x0 gText_CeladonGym_PkmnBreederMurphy_Intro gText_CeladonGym_PkmnBreederMurphy_Lose
	msgbox gText_CeladonGym_PkmnBreederMurphy_After MSG_NORMAL
	end

.global EventScript_Gym_CeladonGym_LadyTorgal
EventScript_Gym_CeladonGym_LadyTorgal:
    trainerbattle0 0x0 57 0x0 gText_CeladonGym_LadyTorgal_Intro gText_CeladonGym_LadyTorgal_Lose
	msgbox gText_CeladonGym_LadyTorgal_After MSG_NORMAL
	end

.global EventScript_Gym_CeladonGym_Erika
EventScript_Gym_CeladonGym_Erika:
	lockall
	checkflag FLAG_DEFEATED_ERIKA
	if SET _goto ErikaAfter
	lockall
	checkflag FLAG_ERIKA_FIRST_ATTEMPT
	if SET _call Erika_Attempt2
	checkflag FLAG_ERIKA_FIRST_ATTEMPT
	if NOT_SET _call Erika_FirstEncounter
	setflag FLAG_ERIKA_FIRST_ATTEMPT
	checkflag FLAG_DEFEATED_MISTY
	if SET _call Erika_Gym2
	checkflag FLAG_DEFEATED_MISTY
	if NOT_SET _call Erika_Gym1
	setvar 0x4096 0x1 @disables gate tiles
	clearflag FLAG_DISABLE_BAG
	clearflag FLAG_GYM_CHALLENGE_ACTIVE
	msgbox gText_CeladonGym_Erika_After1 MSG_KEEPOPEN
	fanfare 260
	msgbox gText_GiveErikaBadge MSG_KEEPOPEN
	waitfanfare
	setflag 0x823
	msgbox gText_BadgeAffixed MSG_KEEPOPEN
	pause 0x5
	setflag FLAG_DEFEATED_ERIKA
	msgbox gText_CeladonGym_Erika_BulletSeed MSG_KEEPOPEN
	fanfare 0x101
	msgbox gText_RecieveBulletSeed MSG_KEEPOPEN
	waitfanfare 
	additem ITEM_TM09 0x1
	msgbox gText_CeladonGym_Erika_After2 MSG_NORMAL
	releaseall
	end
	
Erika_Gym1:
	trainerbattle3 0x3 59 0x0 gText_CeladonGym_Erika_Lose
	return
	
Erika_Gym2:
	trainerbattle3 0x3 60 0x0 gText_CeladonGym_Erika_Lose
	return
	
Erika_FirstEncounter:
	msgbox gText_CeladonGym_Erika_BeforeFight1 MSG_FACE
	return

Erika_Attempt2:
	msgbox gText_CeladonGym_Erika_BeforeFight2 MSG_FACE
	return
	
ErikaAfter:
	checkflag 0x821
	if SET _goto ErikaSaffronAdvice
	msgbox gText_CeladonGym_Erika_PostFight_1stGym MSG_FACE
	end
	
ErikaSaffronAdvice:
	msgbox gText_CeladonGym_Erika_PostFight_2ndGym MSG_FACE
	end
	

.global EventScript_Gym_CeladonGym_BigPlant
EventScript_Gym_CeladonGym_BigPlant:
	msgbox gText_CeladonGym_BigPlant MSG_NORMAL
	goto RootChecker
	end

.global EventScript_Gym_CeladonGym_PlantRoot1
EventScript_Gym_CeladonGym_PlantRoot1:
	checkflag FLAG_CELADONGYM_ROOT_1
	if SET _goto PulledRootAlready
	msgbox gText_CeladonGym_PlantRoots MSG_NORMAL
	setflag FLAG_CELADONGYM_ROOT_1
	call Root1Tiles
	sound 0xBB
	pause 0x3
	sound 0x74
	goto RootChecker
	end

.global EventScript_Gym_CeladonGym_PlantRoot2
EventScript_Gym_CeladonGym_PlantRoot2:
	checkflag FLAG_CELADONGYM_ROOT_2
	if SET _goto PulledRootAlready
	msgbox gText_CeladonGym_PlantRoots MSG_NORMAL
	setflag FLAG_CELADONGYM_ROOT_2
	call Root2Tiles
	sound 0xBB
	pause 0x3
	sound 0x74
	goto RootChecker
	end

.global EventScript_Gym_CeladonGym_PlantRoot3
EventScript_Gym_CeladonGym_PlantRoot3:
	checkflag FLAG_CELADONGYM_ROOT_3
	if SET _goto PulledRootAlready
	msgbox gText_CeladonGym_PlantRoots MSG_NORMAL
	setflag FLAG_CELADONGYM_ROOT_3
	call Root3Tiles
	sound 0xBB
	pause 0x3
	sound 0x74
	goto RootChecker
	end

.global EventScript_Gym_CeladonGym_PlantRoot4
EventScript_Gym_CeladonGym_PlantRoot4:
	checkflag FLAG_CELADONGYM_ROOT_4
	if SET _goto PulledRootAlready
	msgbox gText_CeladonGym_PlantRoots MSG_NORMAL
	setflag FLAG_CELADONGYM_ROOT_4
	call Root4Tiles
	sound 0xBB
	pause 0x3
	sound 0x74
	goto RootChecker
	end
	
RootChecker:
	checkflag FLAG_CELADONGYM_ROOT_1
	if NOT_SET _goto JustEndIt
	checkflag FLAG_CELADONGYM_ROOT_2
	if NOT_SET _goto JustEndIt
	checkflag FLAG_CELADONGYM_ROOT_3
	if NOT_SET _goto JustEndIt
	checkflag FLAG_CELADONGYM_ROOT_4
	if NOT_SET _goto JustEndIt
	setflag FLAG_CELADONGYM_ROOT_ALL @is this even necessary? Probably
	sound 0x8A
	call BigPlantTiles
	setvar 0x8004 0x2 @This controls how far the screen shakes vertically
	setvar 0x8005 0x0 @This controls how far the screen shakes horizontally
	setvar 0x8006 0x8 @This controls how long the overall animation lasts
	setvar 0x8007 0x4 @This controls how long one screen shake lasts
	special 0x136
	pause 0x9
	msgbox gText_CeladonGym_PlantRoots2 MSG_NORMAL
	end

PulledRootAlready:
	msgbox gText_CeladonGym_PlantRootsPulled MSG_NORMAL
	end

JustEndIt:
	end

Root1Tiles:
	setmaptile 0x2 0x14 0x282 0x0
	special 0x8E
	return

Root2Tiles:
	setmaptile 0xA 0x14 0x282 0x0
	special 0x8E
	return

Root3Tiles:
	setmaptile 0xA 0x3 0x281 0x0
	special 0x8E
	return

Root4Tiles:
	setmaptile 0x2 0x3 0x281 0x0
	special 0x8E
	return

BigPlantTiles:
	setmaptile 0x6 0x6 0x282 0x0
	setmaptile 0x6 0x7 0x281 0x0
	setmaptile 0x6 0x8 0x282 0x0
	special 0x8E
	return
	
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
