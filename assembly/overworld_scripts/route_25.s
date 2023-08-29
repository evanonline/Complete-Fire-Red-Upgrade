.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_BILLROUTE25, 0x0DF
.equ FLAG_EVERYONEELSEROUTE25, 0x0E2
.equ FLAG_LUNCH1_MINT, 0x0E3
.equ FLAG_LUNCH2_MISTY, 0x0E4
.equ FLAG_LUNCH3_BILL, 0x0E5
.equ FLAG_LUNCH4_PLAYERRIVAL, 0x0E6
.equ FLAG_LUNCH5_LILLIE, 0x0E7
.equ FLAG_LUNCHDONE, 0x0E8

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route25_MapScript
gMapScripts_Route25:
    mapscript MAP_SCRIPT_ON_TRANSITION, EventScript_Route25_MapScript
    .byte MAP_SCRIPT_TERMIN

EventScript_Route25_MapScript:
	setflag FLAG_BILLROUTE25
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
	applymovement 0x2 LillieSteppy
	msgbox gText_Route25_BillsHouse_LillieTalk MSG_NORMAL
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
	msgbox gText_Route25_BillsHouse_BillStart MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Route25_BillsHouse_BeginLunch
	msgbox gText_Route25_BillsHouse_BillStart_No MSG_NORMAL
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
	lockall
	preparemsg gText_Route25_BillsHouse_FunnyLunch_TopicSelection
	waitmsg
	pause 0x3
	setvar 0x8004 0x0
	setvar 0x8000 0x2 
	setvar 0x8001 0x3
	special 0x158
	waitstate
	compare LASTRESULT 0xA
	if greaterorequal _goto EventScript_BillsLunch_SpeedrunnerShameDialogue
	switch LASTRESULT
	case 0, EventScript_BillsLunch_Mint
	case 1, EventScript_BillsLunch_Misty
	case 2, EventScript_BillsLunch_Bill
	case 3, EventScript_BillsLunch_Us
	case 4, EventScript_BillsLunch_Lillie
	case 5, EventScript_BillsLunch_SpeedrunnerShameDialogue
	release
	releaseall
	end
	
EventScript_BillsLunch_Mint:
	checkflag FLAG_LUNCH1_MINT
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH1_MINT
	msgbox gText_Route25_BillsHouse_FunnyLunch_Placeholder1 MSG_KEEPOPEN
	goto LunchTalkMultichoice
	end
	
EventScript_BillsLunch_Misty:
	checkflag FLAG_LUNCH2_MISTY
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH2_MISTY
	msgbox gText_Route25_BillsHouse_FunnyLunch_Placeholder2 MSG_NORMAL
	goto LunchTalkMultichoice
	end
	
EventScript_BillsLunch_Bill:
	checkflag FLAG_LUNCH3_BILL
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH3_BILL
	msgbox gText_Route25_BillsHouse_FunnyLunch_Placeholder3 MSG_NORMAL
	goto LunchTalkMultichoice
	end
	
EventScript_BillsLunch_Us:
	checkflag FLAG_LUNCH4_PLAYERRIVAL
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH4_PLAYERRIVAL
	msgbox gText_Route25_BillsHouse_FunnyLunch_Placeholder4 MSG_NORMAL
	goto LunchTalkMultichoice
	end
	
EventScript_BillsLunch_Lillie:
	checkflag FLAG_LUNCH5_LILLIE
	if 0x1 _goto EventScript_BillsLunch_AlreadyChoseThat
	setflag FLAG_LUNCH5_LILLIE
	msgbox gText_Route25_BillsHouse_FunnyLunch_Placeholder5 MSG_NORMAL
	goto LunchTalkMultichoice
	end

EventScript_BillsLunch_AlreadyChoseThat:
	msgbox gText_Route25_BillsHouse_FunnyLunch_TopicSelectionAlreadyDiscussed MSG_KEEPOPEN
	goto LunchTalkMultichoice
	end

EventScript_BillsLunch_SpeedrunnerShameDialogue:
	msgbox gText_Route25_BillsHouse_FunnyLunch_DoneTalking_AreYouSure MSG_YESNO
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
