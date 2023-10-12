.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_NOTSOMEONESPC, 0x834
.equ FLAG_BILLROUTE25, 0x0DF
.equ FLAG_EVERYONEELSEROUTE25, 0x0E2
.equ FLAG_LUNCH1_MINT, 0x0E3
.equ FLAG_LUNCH2_MISTY, 0x0E4
.equ FLAG_LUNCH3_BILL, 0x0E5
.equ FLAG_LUNCH4_PLAYERRIVAL, 0x0E6
.equ FLAG_LUNCH5_LILLIE, 0x0E7
.equ FLAG_LUNCHDONE, 0x0E8
.equ FLAG_BILLSCNPCFLAG, 0x0E9
.equ FLAG_MISTYSCNPCFLAG, 0x0EA
.equ FLAG_LILLIESCNPCFLAG, 0x0EB
.equ FLAG_BILLSGARDEN_NPCS, 0x0B2

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route25_MapScript
gMapScripts_Route25:
    mapscript MAP_SCRIPT_ON_TRANSITION, EventScript_Route25_MapScript
    .byte MAP_SCRIPT_TERMIN

EventScript_Route25_MapScript:
	setflag FLAG_BILLROUTE25
	end

.global EventScript_SeaCottage_MapScript
gMapScripts_SeaCottage:
    mapscript MAP_SCRIPT_ON_LOAD, EventScript_SeaCottage_MapScript
    mapscript MAP_SCRIPT_ON_TRANSITION, EventScript_SeaCottage_MapScript2
    .byte MAP_SCRIPT_TERMIN

EventScript_SeaCottage_MapScript:
	checkflag FLAG_LUNCHDONE
	if SET _call SecretGardenOpen
	end

EventScript_SeaCottage_MapScript2:
	setvar 0x4093 0x1
	end

.global EventScript_Route25_BackpackerJaney
EventScript_Route25_BackpackerJaney:
    trainerbattle0 0x0 40 0x0 gText_Route25_BackpackerJaney_Before gText_Route25_BackpackerJaney_Lose
    msgbox gText_Route25_BackpackerJaney_After MSG_FACE
    end

.global EventScript_Route25_LassIphigenia
EventScript_Route25_LassIphigenia:
    trainerbattle0 0x0 41 0x0 gText_Route25_LassIphigenia_Before gText_Route25_LassIphigenia_Lose
    msgbox gText_Route25_LassIphigenia_After MSG_FACE
    end

.global EventScript_Route25_PokeKidJamie
EventScript_Route25_PokeKidJamie:
    trainerbattle0 0x0 42 0x0 gText_Route25_PokeKidJamie_Before gText_Route25_PokeKidJamie_Lose
    msgbox gText_Route25_PokeKidJamie_After MSG_FACE
    end

.global EventScript_Route25_Seagazer
EventScript_Route25_Seagazer:
	msgbox gText_Route25_SightseeingCherishBaller MSG_FACE
	applymovement 0x7 LookRight
	end

.global EventScript_Route25_NevermetMan
EventScript_Route25_NevermetMan:
	msgbox gText_Route25_SadOCGuy MSG_FACE
	applymovement 0x9 LookDown
	end
	
.global EventScript_Route25_BillIntro_RivalStart
EventScript_Route25_BillIntro_RivalStart:
	lockall
	pause 0x7
	applymovement 0x5 EagerHopRival
	sound 0x1C
	checksound
	sound 0x1C
	checksound
	msgbox gText_Route25_BillIntro_RivalIntroQuote1 MSG_KEEPOPEN
	pause 0x7
	applymovement 0x6 EagerHopMint
	sound 0x1C
	sound 0x1C
	msgbox gText_Route25_BillIntro_MintIntroQuote2 MSG_KEEPOPEN
	compare PLAYERFACING 0x2 @up
	if 0x1 _call MovePlayerCenterFromLeft1
	compare PLAYERFACING 0x4 @right
	if 0x1 _call MovePlayerCenterFromLeft2
	goto EventScript_Route25_FullLillie
	end

.global EventScript_Route25_BillIntro_MintStart
EventScript_Route25_BillIntro_MintStart:
	lockall
	pause 0x7
	applymovement 0x6 EagerHopMint
	sound 0x1C
	checksound
	sound 0x1C
	checksound
	msgbox gText_Route25_BillIntro_MintIntroQuote1 MSG_KEEPOPEN
	pause 0x7
	applymovement 0x5 EagerHopRival
	sound 0x1C
	sound 0x1C
	checksound
	msgbox gText_Route25_BillIntro_RivalIntroQuote2 MSG_KEEPOPEN
	compare PLAYERFACING 0x2 @up
	if 0x1 _call MovePlayerCenterFromRight1
	compare PLAYERFACING 0x3 @left
	if 0x1 _call MovePlayerCenterFromRight2
	goto EventScript_Route25_FullLillie
	end

MovePlayerCenterFromLeft1:
	applymovement 0xFF PlayerRivalCentering1
	return

MovePlayerCenterFromLeft2:
	applymovement 0xFF PlayerRivalCentering2
	return

MovePlayerCenterFromRight1:
	applymovement 0xFF PlayerMintCentering1
	return

MovePlayerCenterFromRight2:
	applymovement 0xFF PlayerMintCentering2
	return

.global EventScript_Route25_BillIntro_LillieStart
EventScript_Route25_BillIntro_LillieStart:
	lockall
	pause 0x7
	applymovement 0x5 EagerHopRival
	sound 0x1C
	sound 0x1C
	checksound
	msgbox gText_Route25_BillIntro_RivalIntroQuote1 MSG_KEEPOPEN
	pause 0x7
	applymovement 0x6 EagerHopMint
	sound 0x1C
	sound 0x1C
	checksound
	msgbox gText_Route25_BillIntro_MintIntroQuote2 MSG_KEEPOPEN
	applymovement 0x4 LookDown
	waitmovement 0x0
	pause 0x16
	goto EventScript_Route25_FullLillie
	end
	
EventScript_Route25_FullLillie:
	msgbox gText_Route25_BillIntro_LillieDenial1 MSG_KEEPOPEN
	applymovement 0x4 LillieAngy
	sound 0x1C
	sound 0x1C
	waitmovement 0x0
	pause 0x12
	applymovement 0x5 Exclaim
	sound 0x15
	pause 0x7
	applymovement 0x6 Exclaim
	sound 0x15
	pause 0x14
	applymovement 0x4 LillieSteppy
	waitmovement 0x0
	msgbox gText_Route25_BillIntro_LillieDenial2 MSG_KEEPOPEN
	applymovement 0x6 MintSteppy1
	waitmovement 0x0
	msgbox gText_Route25_BillIntro_Mint1 MSG_KEEPOPEN
	pause 0x7
	applymovement 0x5 RivalSteppy
	waitmovement 0x0
	msgbox gText_Route25_BillIntro_Rival1 MSG_KEEPOPEN
	applymovement 0x4 LillieCrossFirst
	sound 0x15
	checksound
	pause 0x3
	msgbox gText_Route25_BillIntro_LillieUgh1 MSG_KEEPOPEN
	applymovement 0x4 LillieSteppy
	waitmovement 0x0
	pause 0x9
	msgbox gText_Route25_BillIntro_LillieUgh2 MSG_KEEPOPEN
	sound 0x8
	opendoor 0x33 0x04
	waitdooranim
	clearflag FLAG_BILLROUTE25
	showsprite 0x8
	applymovement 0x8 LillieSteppy
	waitmovement 0x0
	applymovement 0x4 LookUp
	applymovement 0x5 LookUp
	applymovement 0x6 LookUp
	msgbox gText_Route25_BillIntro_Bill MSG_KEEPOPEN
	setflag FLAG_BILLROUTE25
	hidesprite 0x8
	sound 0x9
	closedoor 0x33 0x04
	waitdooranim
	pause 0x12
	applymovement 0x6 LookLeft
	waitmovement 0x0
	applymovement 0x5 EagerHopRival
	sound 0x1C
	sound 0x1C
	checksound
	msgbox gText_Route25_BillIntro_Rival2 MSG_KEEPOPEN
	applymovement 0x5 RivalRun1
	applymovement 0x4 LillieAndPlayerPushed
	applymovement 0xFF LillieAndPlayerPushed
	sound 0xC
	checksound
	pause 0x5
	applymovement 0x5 RivalRun2
	sound 0x8
	opendoor 0x33 0x04
	waitdooranim
	setflag FLAG_EVERYONEELSEROUTE25
	hidesprite 0x5
	sound 0x9
	closedoor 0x33 0x04
	waitdooranim
	pause 0x14
	applymovement 0x4 LillieCross
	sound 0x15
	checksound
	msgbox gText_Route25_BillIntro_LillieUghhhhh MSG_KEEPOPEN
	applymovement 0x4 LookDown
	msgbox gText_Route25_BillIntro_LillieSigh MSG_NORMAL
	applymovement 0x4 LillieInDaHouse
	pause 0x7
	sound 0x8
	opendoor 0x33 0x04
	pause 0x17
	hidesprite 0x4
	sound 0x9
	closedoor 0x33 0x04
	waitdooranim
	pause 0x20
	applymovement 0x6 MintExcitey1
	pause 0x6
	sound 0x1C
	checksound
	msgbox gText_Route25_BillIntro_Mint2 MSG_KEEPOPEN
	applymovement 0x6 MintExcitey2
	msgbox gText_Route25_BillIntro_Mint3 MSG_NORMAL
	applymovement 0x6 LillieInDaHouse
	pause 0x7
	sound 0x8
	opendoor 0x33 0x04
	pause 0x17
	hidesprite 0x6
	sound 0x9
	closedoor 0x33 0x04
	waitdooranim
	pause 0x10
	release
	applymovement 0xFF LookDown
	end

.global EventScript_Route25_BillsHouse_Clefairy
EventScript_Route25_BillsHouse_Clefairy:
	cry SPECIES_CLEFAIRY 0x0
	msgbox gText_Route25_BillsHouse_Clefairy MSG_FACE
	end
	
.global EventScript_Route25_BillsHouse_SandyShocks
EventScript_Route25_BillsHouse_SandyShocks:
	msgbox gText_Route25_BillsHouse_SandyShocks MSG_FACE
	end
	
.global EventScript_Route25_BillsHouse_Rival
 EventScript_Route25_BillsHouse_Rival:
	msgbox gText_Route25_BillsHouse_RivalTalk MSG_NORMAL
	end
	
.global EventScript_Route25_BillsHouse_Lillie
 EventScript_Route25_BillsHouse_Lillie:
	checkflag FLAG_LUNCHDONE
	if SET _goto LillieAfterSurvivingLunch
	applymovement 0x2 LillieSteppy
	msgbox gText_Route25_BillsHouse_LillieTalk MSG_NORMAL
	end

LillieAfterSurvivingLunch:
	checkflag FLAG_BILLSGARDEN_NPCS
	if SET _goto LillieAfterMultibattle
	msgbox gText_Route25_BillsHouse_FunnyLunch_AfterLunch_LillieIdle MSG_FACE
	end
	
LillieAfterMultibattle:
	msgbox gText_Route25_BillsHouse_FunnyLunch_Lillie_Standing_After2v2 MSG_FACE
	end
	
.global EventScript_Route25_BillsHouse_Mint
 EventScript_Route25_BillsHouse_Mint:
	msgbox gText_Route25_BillsHouse_MintTalk MSG_FACE
	applymovement 0x6 LookUp
	end
	
.global EventScript_Route25_BillsHouse_Misty
 EventScript_Route25_BillsHouse_Misty:
	msgbox gText_Route25_BillsHouse_MistyTalk MSG_NORMAL
	end
	
.global EventScript_Route25_BillsHouse_GravelerCriesIDontKnowWhyThisIsHappening
 EventScript_Route25_BillsHouse_GravelerCriesIDontKnowWhyThisIsHappening:
	msgbox gText_Route25_BillsHouse_GravelerCries MSG_NORMAL
	end

.global EventScript_Route25_BillsHouse_Bill
EventScript_Route25_BillsHouse_Bill:
	faceplayer
	checkflag FLAG_LUNCHDONE
	if SET _goto BillAfterLunch
	msgbox gText_Route25_BillsHouse_BillStart MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Route25_BillsHouse_BeginLunch
	msgbox gText_Route25_BillsHouse_BillStart_No MSG_NORMAL
	end

BillAfterLunch:
	msgbox gText_Route25_BillsHouse_FunnyLunch_Bill_Standing_After2v2 MSG_FACE
	end

EventScript_Route25_BillsHouse_BeginLunch:
	msgbox gText_Route25_BillsHouse_BillStart_Yes MSG_NORMAL
	lockall
	fadescreen 0x1
	compare PLAYERFACING 0x1 @down
	if 0x1 _call LunchMovePlayerFromTop
	compare PLAYERFACING 0x2 @up
	if 0x1 _call LunchMovePlayerFromBottom
	compare PLAYERFACING 0x3 @left
	if 0x1 _call LunchMovePlayerFromLeft
	compare PLAYERFACING 0x4 @right
	if 0x1 _call LunchMovePlayerFromRight
	applymovement 0xFF LookRight
	movesprite 0x1 0xE 0x4
	applymovement 0x1 LookDown
	movesprite 0x2 0xF 0x6
	applymovement 0x2 LookLeft
	movesprite 0x5 0xC 0x5
	applymovement 0x5 LookRight
	movesprite 0x6 0xC 0x7
	applymovement 0x6 LookRight
	movesprite 0x7 0xF 0x7
	applymovement 0x7 LookLeft
	pause 0x16
	fadescreen 0x0
	pause 0x14
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_BillStart_LunchIntro MSG_KEEPOPEN
	applymovement 0x1 LillieAngy
	sound 0x1C
	checksound
	pause 0x3
	sound 0x1C
	waitmovement 0x0
	pause 0x11
	msgbox gText_Route25_BillsHouse_FunnyLunch_1_Bill MSG_KEEPOPEN
	applymovement 0x5 RegularSteppyRight
	pause 0x8
	msgbox gText_Route25_BillsHouse_FunnyLunch_2_Rival MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_3_Bill MSG_KEEPOPEN
	applymovement 0x5 RivalSteppy
	pause 0x8
	msgbox gText_Route25_BillsHouse_FunnyLunch_4_Rival MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	pause 0x10
	msgbox gText_Route25_BillsHouse_FunnyLunch_5_Misty MSG_KEEPOPEN
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_6_Rival MSG_KEEPOPEN
	applymovement 0x5 LookDown
	pause 0x4
	msgbox gText_Route25_BillsHouse_FunnyLunch_7_Rival MSG_KEEPOPEN
	applymovement 0x6 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_8_Mint MSG_KEEPOPEN
	applymovement 0x6 MintGoCrazy
	sound 0x8A
	setvar 0x8004 0x2 @This controls how far the screen shakes vertically
	setvar 0x8005 0x0 @This controls how far the screen shakes horizontally
	setvar 0x8006 0x8 @This controls how long the overall animation lasts
	setvar 0x8007 0x4 @This controls how long one screen shake lasts
	special 0x136 @SPECIAL_SHAKE_SCREEN
	msgbox gText_Route25_BillsHouse_FunnyLunch_9_Mint MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	pause 0x8
	msgbox gText_Route25_BillsHouse_FunnyLunch_10_Bill MSG_KEEPOPEN
	applymovement 0x5 LookRight
	pause 0x4
	spritebehave 0x4 0xA
	spritebehave 0x5 0xA
	spritebehave 0x6 0xA
	goto LunchTalkMultichoice
	end
	
LunchMovePlayerFromTop:
	applymovement 0xFF LunchPlayerTopMove
	waitmovement 0x0
	return
	
LunchMovePlayerFromBottom:
	applymovement 0xFF LunchPlayerBottomMove
	waitmovement 0x0
	return
	
LunchMovePlayerFromLeft:
	applymovement 0xFF LunchPlayerLeftMove
	waitmovement 0x0
	return	
	
LunchMovePlayerFromRight:
	applymovement 0xFF LunchPlayerRightMove
	waitmovement 0x0
	return

LunchTalkMultichoice:
	setvar 0x8006 0x0
	loadpointer 0x0 sText_BillsLunch_ChatOption1
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 sText_BillsLunch_ChatOption2
	special 0x25
	setvar 0x8006 0x2
	loadpointer 0x0 sText_BillsLunch_ChatOption3
	special 0x25
	setvar 0x8006 0x3
	loadpointer 0x0 sText_BillsLunch_ChatOption4
	special 0x25
	setvar 0x8006 0x4
	loadpointer 0x0 sText_BillsLunch_ChatOption5
	special 0x25
	setvar 0x8006 0x5
	loadpointer 0x0 sText_BillsLunch_Done
	special 0x25
	preparemsg gText_Route25_BillsHouse_FunnyLunch_TopicSelection
	waitmsg
	multichoice 0x0 0x0 SIX_MULTICHOICE_OPTIONS 0x1
	compare LASTRESULT 0xA
	if greaterorequal _goto EventScript_BillsLunch_SpeedrunnerShameDialogue
	switch LASTRESULT
	case 0, EventScript_BillsLunch_Mint
	case 1, EventScript_BillsLunch_Misty
	case 2, EventScript_BillsLunch_Bill
	case 3, EventScript_BillsLunch_Us
	case 4, EventScript_BillsLunch_Lillie
	case 5, EventScript_BillsLunch_SpeedrunnerShameDialogue
	releaseall
	end
	
EventScript_BillsLunch_Mint:
	checkflag FLAG_LUNCH1_MINT
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH1_MINT
	pause 0x6
	applymovement 0x6 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_1_Mint MSG_KEEPOPEN
	applymovement 0x6 LookUp
	waitmovement 0x0
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_1_Mint_Split MSG_KEEPOPEN
	applymovement 0x1 QuestionMark
	sound 0x15
	pause 0x7
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_2_Bill MSG_KEEPOPEN
	applymovement 0x6 ShuffleUpwards
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_3_Mint MSG_KEEPOPEN
	applymovement 0x6 LookRight
	waitmovement 0x0
	applymovement 0x7 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_4_Misty MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_5_Bill MSG_KEEPOPEN
	applymovement 0x6 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_6_Mint MSG_KEEPOPEN
	applymovement 0x7 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_7_Misty MSG_KEEPOPEN
	applymovement 0x6 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_8_Mint MSG_KEEPOPEN
	applymovement 0x2 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_9_Lillie MSG_KEEPOPEN
	applymovement 0x6 MintInspectsLillie
	sound 0x15
	pause 0x7
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_10_Mint MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_11_Bill MSG_KEEPOPEN
	applymovement 0x6 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_12_Mint MSG_KEEPOPEN
	sound 0x8A
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_Bill_DotDotDot MSG_KEEPOPEN
	checksound
	waitmovement 0x0
	applymovement 0x2 MistySlowwwwSteppy
	sound 0x8A
	msgbox gText_Route25_BillsHouse_FunnyLunch_Lillie_DotDotDot MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_13_Misty MSG_KEEPOPEN
	applymovement 0x6 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_14_Mint MSG_KEEPOPEN
	applymovement 0x7 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_15_Misty MSG_KEEPOPEN
	applymovement 0x6 EagerHopRival
	sound 0x1C
	checksound
	sound 0x1C
	msgbox gText_Route25_BillsHouse_FunnyLunch_TCGIsland_16_Mint MSG_KEEPOPEN
	lockall
	goto EventScript_BillsLunch_EventCheck
	end
	
EventScript_BillsLunch_Misty:
	checkflag FLAG_LUNCH2_MISTY
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH2_MISTY
	applymovement 0x5 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_1_Rival MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_2_Misty MSG_KEEPOPEN
	applymovement 0x5 EagerHopRival
	sound 0x1C
	checksound
	pause 0x4
	sound 0x1C
	checksound
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_3_Rival MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_4_Misty MSG_KEEPOPEN
	applymovement 0x2 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_5_Lillie MSG_KEEPOPEN
	applymovement 0x7 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_6_Misty MSG_KEEPOPEN
	pause 0x3
	applymovement 0x5 Exclaim
	sound 0x15
	checksound
	pause 0xA
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_7_Rival MSG_KEEPOPEN
	applymovement 0x7 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_8_Misty MSG_KEEPOPEN
	applymovement 0x7 LookDown
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_8_MistySplit MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	pause 0x4
	applymovement 0x7 LookLeft
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_9_Bill MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_10_Misty MSG_KEEPOPEN
	applymovement 0x2 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_11_Lillie MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_12_Misty MSG_KEEPOPEN
	applymovement 0x5 RivalSteppy
	applymovement 0x2 LookLeft
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_13_Rival MSG_KEEPOPEN
	applymovement 0x2 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_StrongestTrainers_14_Lillie MSG_KEEPOPEN
	lockall
	goto EventScript_BillsLunch_EventCheck
	end
	
EventScript_BillsLunch_Bill:
	checkflag FLAG_LUNCH3_BILL
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH3_BILL
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_1_Bill MSG_KEEPOPEN
	applymovement 0x2 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_2_Lillie MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_3_Bill MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_4_Misty MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_5_Bill MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_6_Misty MSG_KEEPOPEN
	applymovement 0x1 BillIsFrantic
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_7_Bill MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_8_Misty MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_9_Bill MSG_KEEPOPEN
	applymovement 0x2 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_BillsPokemon_10_Lillie MSG_KEEPOPEN
	lockall
	goto EventScript_BillsLunch_EventCheck
	end
	
EventScript_BillsLunch_Us:
	checkflag FLAG_LUNCH4_PLAYERRIVAL
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH4_PLAYERRIVAL
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_1_Rival MSG_KEEPOPEN
	applymovement 0x6 LookUp
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_2_Mint MSG_KEEPOPEN
	applymovement 0x5 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_3_Rival MSG_KEEPOPEN
	applymovement 0x5 LookRight
	applymovement 0x6 LookRight
	pause 0x4
	applymovement 0x2 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_4_Lillie MSG_KEEPOPEN
	applymovement 0x7 LookUp
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_5_Misty MSG_KEEPOPEN
	applymovement 0x2 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_6_Lillie MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_7_Misty MSG_KEEPOPEN
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_8_Rival MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_9_Misty MSG_KEEPOPEN
	applymovement 0x7 LookUp
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_9_MistySplit MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_10_Bill MSG_KEEPOPEN
	applymovement 0x7 LookLeft
	applymovement 0x5 RivalDisappointed
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_11_Rival MSG_KEEPOPEN
	applymovement 0x6 LookUp
	checkflag FLAG_LUNCH1_MINT
	if NOT_SET _call RivalLunchMintNotTalkedTo
	checkflag FLAG_LUNCH1_MINT
	if SET _call RivalLunchMintTalkedTo
	applymovement 0x6 LookRight
	pause 0x4
	applymovement 0x2 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_13_Lillie MSG_KEEPOPEN
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_14_Rival MSG_KEEPOPEN
	lockall
	goto EventScript_BillsLunch_EventCheck
	end

RivalLunchMintNotTalkedTo:
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_12_Mint MSG_KEEPOPEN
	return
	
RivalLunchMintTalkedTo:
	msgbox gText_Route25_BillsHouse_FunnyLunch_AboutUs_12_Mint_AlreadyMentioned MSG_KEEPOPEN
	return

EventScript_BillsLunch_Lillie:
	checkflag FLAG_LUNCH5_LILLIE
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH5_LILLIE
	applymovement 0x7 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_1_Misty MSG_KEEPOPEN
	applymovement 0x2 RegularLeftFaceSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_2_Lillie MSG_KEEPOPEN
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_3_Rival MSG_KEEPOPEN
	applymovement 0x7 AngryMisty
	sound 0x1C
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_4_Misty MSG_KEEPOPEN
	applymovement 0x2 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_5_Lillie MSG_KEEPOPEN
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_6_Rival MSG_KEEPOPEN
	applymovement 0x2 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_7_Lillie MSG_KEEPOPEN
	applymovement 0x6 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_8_Mint MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_9_Bill MSG_KEEPOPEN
	applymovement 0x6 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_10_Mint MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_11_Misty MSG_KEEPOPEN
	applymovement 0x2 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_12_Lillie MSG_KEEPOPEN
	applymovement 0x7 LookUp
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_13_Misty MSG_KEEPOPEN
	applymovement 0x5 RegularSteppyRight
	pause 0x6
	msgbox gText_Route25_BillsHouse_FunnyLunch_LillieHistory_14_Rival MSG_KEEPOPEN
	applymovement 0x7 LookLeft
	lockall
	goto EventScript_BillsLunch_EventCheck
	end

EventScript_BillsLunch_AlreadyChoseThat:
	msgbox gText_Route25_BillsHouse_FunnyLunch_TopicSelectionAlreadyDiscussed MSG_KEEPOPEN
	lockall
	goto EventScript_BillsLunch_EventCheck
	end

EventScript_BillsLunch_SpeedrunnerShameDialogue:
	msgbox gText_Route25_BillsHouse_FunnyLunch_DoneTalking_AreYouSure MSG_YESNO
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_BillsLunch_End
	compare LASTRESULT 0x0
	if 0x1 _goto LunchTalkMultichoice
	end

EventScript_BillsLunch_EventCheck:
	checkflag FLAG_LUNCH1_MINT
	if NOT_SET _goto LunchTalkMultichoice
	checkflag FLAG_LUNCH2_MISTY
	if NOT_SET _goto LunchTalkMultichoice
	checkflag FLAG_LUNCH3_BILL
	if NOT_SET _goto LunchTalkMultichoice
	checkflag FLAG_LUNCH4_PLAYERRIVAL
	if NOT_SET _goto LunchTalkMultichoice
	checkflag FLAG_LUNCH5_LILLIE
	if NOT_SET _goto LunchTalkMultichoice
	goto LunchDenouement
	end

EventScript_BillsLunch_End:
	checkflag FLAG_LUNCH1_MINT
	if SET _goto SomeConvosButNotAll
	checkflag FLAG_LUNCH2_MISTY
	if SET _goto SomeConvosButNotAll
	checkflag FLAG_LUNCH3_BILL
	if SET _goto SomeConvosButNotAll
	checkflag FLAG_LUNCH4_PLAYERRIVAL
	if SET _goto SomeConvosButNotAll
	checkflag FLAG_LUNCH5_LILLIE
	if SET _goto SomeConvosButNotAll
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_SkippedEverything_Bill MSG_NORMAL
	goto LunchDenouementFade
	end
	
SomeConvosButNotAll:
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_AskedSomeStuffButNotAll_Bill MSG_NORMAL
	goto LunchDenouementFade
	end

LunchDenouementFade:
	lockall
	fadescreen 0x1
	pause 0x6
	msgbox gText_Route25_BillsHouse_FunnyLunch_FadeToBlack MSG_KEEPOPEN
	waitmsg
	fanfare 0x10C
	waitfanfare
	releaseall
	lockall
	pause 0x6
	fadescreen 0x0
	goto LunchDenouement
	end
	
LunchDenouement:
	lockall
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_1_Rival MSG_KEEPOPEN
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_2_Misty MSG_KEEPOPEN
	pause 0x7
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_3_Rival MSG_KEEPOPEN
	applymovement 0x7 MistySlowwwwSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_4_Misty MSG_NORMAL
	lockall
	applymovement 0x5 LookUp
	pause 0x3F
	applymovement 0x5 LookRight
	pause 0x13
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_5_Rival MSG_KEEPOPEN
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_6_Misty MSG_KEEPOPEN
	applymovement 0x1 LillieSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_7_Bill MSG_KEEPOPEN
	applymovement 0x5 RivalSteppy
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_8_Rival MSG_KEEPOPEN
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_9_Misty MSG_KEEPOPEN
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_10_Bill MSG_NORMAL
	fadescreen 0x1
	pause 0x8
	sound 0xCF
	checksound
	movesprite 0x1 0x4 0x4
	spritebehave 0x4 0xA
	spritebehave 0x5 0xA
	spritebehave 0x6 0xA
	lockall
	pause 0x24
	fadescreen 0x0
	applymovement 0x1 BillReenters
	pause 0x15
	applymovement 0x7 MistyAttentiveSteppy
	pause 0x4
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_11_Misty MSG_KEEPOPEN
	applymovement 0x1 BillUnreenters
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_12_Mint MSG_NORMAL
	setflag FLAG_BILLSCNPCFLAG
	hidesprite 0x1
	lockall
	sound 0xA4
	applymovement 0x6 MintLeavesTable1
	waitmovement 0x0
	pause 0x5
	setvar 0x8004 0x2 @This controls how far the screen shakes vertically
	setvar 0x8005 0x0 @This controls how far the screen shakes horizontally
	setvar 0x8006 0x8 @This controls how long the overall animation lasts
	setvar 0x8007 0x4 @This controls how long one screen shake lasts
	special 0x136 @SPECIAL_SHAKE_SCREEN
	sound 0x11
	applymovement 0x6 MintLeavesTable2
	waitmovement 0x0
	pause 0x7
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_13_Rival MSG_NORMAL
	sound 0x1C
	applymovement 0x5 RivalLeaves1
	waitmovement 0x0
	pause 0x18
	sound 0x11
	applymovement 0x5 RivalLeaves2
	waitmovement 0x0
	pause 0x1A
	applymovement 0x2 LillieLeavesTable
	pause 0x4
	sound 0xA
	applymovement 0x7 MistyLeavesTable1
	waitmovement 0x0
	pause 0xA
	applymovement 0xFF LookUp
	pause 0x4
	msgbox gText_Route25_BillsHouse_FunnyLunch_Conclusion_14_Misty MSG_NORMAL
	pause 0x8
	applymovement 0x7 MistyLeavesTable2
	waitmovement 0x0
	pause 0x6
	setflag FLAG_LUNCHDONE
	hidesprite 0x5
	hidesprite 0x6
	call SecretGardenOpen
	setvar 0x4093 0x0
	releaseall
	applymovement 0xFF LookDown
	end

SecretGardenOpen:
	setmaptile 0x3 0x1 0x17F 0x0
	setmaptile 0x3 0x2 0x290 0x0
	setmaptile 0x1 0x1 0x2C1 0x1
	setmaptile 0x1 0x2 0x2D6 0x1
	setmaptile 0xD 0x6 0x2C4 0x1
	setmaptile 0xD 0x7 0x2C4 0x1
	setmaptile 0xE 0x6 0x2C5 0x1
	setmaptile 0xE 0x7 0x2C5 0x1
	return

.global EventScript_DontLeaveLillie
EventScript_DontLeaveLillie:
	lockall
	applymovement 0xFF LookUp
	applymovement 0x2 LillieAngy
	sound 0x1C
	sound 0x1C
	waitmovement 0x0
	msgbox gText_Route25_BillsHouse_FunnyLunch_AfterLunch_LillieDontLeave MSG_NORMAL
	pause 0x8
	applymovement 0xFF MoveUp
	waitmovement 0x0
	releaseall
	end

.global EventScript_MistyStopsYa
EventScript_MistyStopsYa:
	checkflag FLAG_LUNCHDONE
	if NOT_SET _goto DontStopActually
	lockall
	applymovement 0x7 RegularSteppyRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_FinalAfter_1_Misty MSG_NORMAL
	applymovement 0x7 MoveRight
	pause 0x6
	applymovement 0xFF MoveLeft
	waitmovement 0x0
	pause 0xB
	msgbox gText_Route25_BillsHouse_FunnyLunch_FinalAfter_2_Misty MSG_NORMAL
	applymovement 0x7 MistyLeavesCottage
	waitmovement 0x0
	setflag FLAG_MISTYSCNPCFLAG
	hidesprite 0x7
	sound 0x9
	checksound
	applymovement 0x2 LillieWalksToYouExit
	waitmovement 0x0
	applymovement 0xFF LookRight
	msgbox gText_Route25_BillsHouse_FunnyLunch_FinalAfter_3_Lillie MSG_NORMAL
	applymovement 0x2 LillieActuallyExits
	waitmovement 0x0
	setflag FLAG_LILLIESCNPCFLAG
	setflag FLAG_NOTSOMEONESPC
	hidesprite 0x2
	sound 0x9
	checksound
	setvar 0x4093 0x1
	setvar 0x4094 0x1
	applymovement 0xFF LookUp
	end

DontStopActually:
	end

.global Eventscript_BillsGardenSign
Eventscript_BillsGardenSign:
	msgboxsign
	msgbox gText_Route25_BillsHouse_SecretGardenSign MSG_SIGN
	end

LookDown:
	.byte look_down
	.byte 0xFE
	
LookUp:
	.byte look_up
	.byte 0xFE
	
LookLeft:
	.byte look_left
	.byte 0xFE
	
LookRight:
	.byte look_right
	.byte 0xFE
	
MoveUp:
	.byte walk_up
	.byte 0xFE
	
MoveRight:
	.byte walk_right
	.byte 0xFE
	
MoveLeft:
	.byte walk_left
	.byte 0xFE

PlayerPositionDownFromRival:
	.byte walk_right
	.byte look_up
	.byte 0xFE
	
PlayerPositionDownMint:
	.byte walk_left
	.byte look_up
	.byte 0xFE

EagerHopRival:
	.byte 0x55
	.byte 0x55
	.byte 0xFE
	
EagerHopMint:
	.byte 0x54
	.byte 0x54
	.byte 0xFE
	
LillieAngy:
	.byte 0x52
	.byte 0x52
	.byte 0xFE

LillieSteppy:
	.byte 0x25
	.byte 0x25
	.byte 0x25
	.byte 0xFE
	
LillieCrossFirst:
	.byte look_up
	.byte 0x64
	.byte 0xFE	
	
LillieCross:
	.byte 0x64
	.byte 0xFE
	
MintSteppy1:
	.byte 0x27
	.byte 0x27
	.byte 0xFE
	
RivalSteppy:
	.byte 0x2C
	.byte 0x2C
	.byte 0xFE

Exclaim:
	.byte 0x62
	.byte 0xFE

PlayerRivalCentering1:
	.byte walk_right
	.byte look_up
	.byte 0xFE

PlayerRivalCentering2:
	.byte walk_down
	.byte walk_right
	.byte walk_right
	.byte look_up
	.byte 0xFE

PlayerMintCentering1:
	.byte walk_left
	.byte look_up
	.byte 0xFE
	.byte 0xFE

PlayerMintCentering2:
	.byte walk_down
	.byte walk_left
	.byte walk_left
	.byte look_up
	.byte 0xFE

RivalRun1:
	.byte 0x38
	.byte 0xFE

LillieAndPlayerPushed:
	.byte 0x39
	.byte look_up
	.byte 0xFE

RivalRun2:
	.byte 0x36
	.byte 0xFE
	
LillieInDaHouse:
	.byte walk_up
	.byte walk_up
	.byte walk_up
	.byte 0xFE

MintExcitey1:
	.byte walk_left
	.byte 0x52
	.byte 0xFE
	
MintExcitey2:
	.byte walk_down
	.byte 0xFE

LunchPlayerTopMove:
	.byte 0x35
	.byte 0x35
	.byte 0x38
	.byte 0x38
	.byte 0xFE
	
LunchPlayerBottomMove:
	.byte 0x38
	.byte 0x38
	.byte 0xFE
	
LunchPlayerLeftMove:
	.byte 0x35
	.byte 0x38
	.byte 0xFE
	
LunchPlayerRightMove:
	.byte 0x35
	.byte 0x38
	.byte 0x38
	.byte 0x38
	.byte 0xFE

RegularSteppyRight:
	.byte 0x28
	.byte 0x24
	.byte 0x28
	.byte 0xFE

MistySlowwwwSteppy:
	.byte 0x23
	.byte 0x23
	.byte 0xFE
	
MintGoCrazy:
	.byte 0x58
	.byte 0x2C
	.byte 0x2C
	.byte 0x2C
	.byte 0x2C
	.byte 0x2C
	.byte 0xFE
	
BillReenters:
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte 0xFE

MistyAttentiveSteppy:
	.byte 0x2B
	.byte 0x23
	.byte 0x2B
	.byte 0x2B
	.byte 0xFE

BillUnreenters:
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte 0xFE

MintLeavesTable1:
	.byte 0x50
	.byte 0x2B
	.byte 0x2B
	.byte 0x2B
	.byte 0x2B
	.byte 0x2B
	.byte 0xFE
	
MintLeavesTable2:
	.byte 0x37
	.byte 0x31
	.byte 0x31
	.byte 0x37
	.byte 0x37
	.byte 0x37
	.byte 0x37
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x37
	.byte 0x37
	.byte 0x37
	.byte 0xFE

RivalLeaves1:
	.byte 0x50
	.byte walk_left
	.byte walk_up
	.byte walk_left
	.byte 0xFE

RivalLeaves2:
	.byte 0x37
	.byte 0x37
	.byte 0x37
	.byte 0x37
	.byte 0x37
	.byte 0xFE

LillieLeavesTable:
	.byte walk_up
	.byte look_left
	.byte 0xFE

MistyLeavesTable1:
	.byte 0x51
	.byte walk_up
	.byte walk_up
	.byte walk_up
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte look_right
	.byte 0xFE
	
MistyLeavesTable2:
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte 0x37
	.byte 0x37
	.byte look_right
	.byte 0xFE
	
MistyLeavesCottage:
	.byte walk_up
	.byte walk_right
	.byte walk_up
	.byte walk_up
	.byte 0xFE

LillieWalksToYouExit:
	.byte walk_up
	.byte 0x37
	.byte 0x37
	.byte 0x33
	.byte 0x33
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte 0xFE

LillieActuallyExits:
	.byte walk_up
	.byte walk_left
	.byte walk_up
	.byte walk_up
	.byte 0xFE

QuestionMark:
	.byte 0x63
	.byte 0xFE

ShuffleUpwards:
	.byte 0x26
	.byte 0x2A
	.byte 0x26
	.byte 0x26
	.byte 0xFE

MintInspectsLillie:
	.byte 0x63
	.byte 0x24
	.byte 0x24
	.byte 0x24
	.byte 0xFE

RegularLeftFaceSteppy:
	.byte 0x27
	.byte 0x27
	.byte 0xFE

BillIsFrantic:
	.byte 0x29
	.byte 0x29
	.byte 0x29
	.byte 0x29
	.byte 0x29
	.byte 0xFE

AngryMisty:
	.byte 0x54
	.byte 0x2B
	.byte 0x2B
	.byte 0x2B
	.byte 0x2B
	.byte 0x2B
	.byte 0xFE

RivalDisappointed:
	.byte 0x24
	.byte 0x24
	.byte 0x24
	.byte 0x28
	.byte 0x28
	.byte 0xFE
