.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_TWO_OPPONENT, 0x909
.equ FLAG_TAG_BATTLE, 0x908
.equ VAR_SECOND_OPPONENT, 0x5010
.equ VAR_PARTNER, 0x5011
.equ VAR_PARTNER_BACKSPRITE, 0x5012
.equ SPECIAL_LOAD_SECOND_DEFEAT_TEXT, 0xAC

.equ FLAG_BILL_BILLSGARDEN, 0x0B0
.equ FLAG_LILLIE_BILLSGARDEN, 0x0B1
.equ FLAG_BILLSGARDEN_NPCS, 0x0B2
.equ FLAG_BILLSCNPCFLAG, 0x0E9
.equ FLAG_LILLIESCNPCFLAG, 0x0EB
.equ FLAG_DIDNTCLEARGARDEN, 0x0B3

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_BillsGarden_Bill
EventScript_BillsGarden_Bill:
	msgbox gText_BillsGarden_BeforeDoubleBattle_Bill MSG_FACE
	end

.global EventScript_BillsGarden_Lillie
EventScript_BillsGarden_Lillie:
	msgbox gText_BillsGarden_BeforeDoubleBattle_Lillie MSG_FACE
	end

.global EventScript_BillsGarden_Mint
EventScript_BillsGarden_Mint:
	msgbox gText_BillsGarden_BeforeDoubleBattle_Mint MSG_FACE
	end

.global EventScript_BillsGarden_Rival
EventScript_BillsGarden_Rival:
	checkflag FLAG_DIDNTCLEARGARDEN
	if SET _goto EventScript_BillsGarden_RivalLost
	msgbox gText_BillsGarden_BeforeDoubleBattle_Rival MSG_FACE
	end
	
EventScript_BillsGarden_RivalLost:
	msgbox gText_BillsGarden_Rival_LostDoubleBattle MSG_FACE
	end
	
.global EventScript_BillsGarden_Misty
EventScript_BillsGarden_Misty:
	checkflag FLAG_DIDNTCLEARGARDEN
	if SET _goto MistyFailTalk
	faceplayer
	applymovement 0x1 LookLeft
	applymovement 0x2 LookUp
	applymovement 0x4 LookUp
	applymovement 0x5 LookUp
	msgbox gText_BillsGarden_DoubleBattleFightStart_1_Misty MSG_NORMAL
	call EventScript_Healing
	msgbox gText_BillsGarden_DoubleBattleFightStart_1_MistySplit1 MSG_NORMAL
	applymovement 0x3 LookDown
	compare PLAYERFACING 0x1 @down
	if 0x1 _call PlayerMove1
	compare PLAYERFACING 0x2 @up
	if 0x1 _call PlayerMove2
	compare PLAYERFACING 0x4 @right
	if 0x1 _call PlayerMove3
	pause 0x8
	applymovement 0x1 LookDown
	applymovement 0x2 LookLeft
	applymovement 0x4 LookRight
	applymovement 0x5 LookLeft
	pause 0x7
	applymovement 0x3 DownwardSteppy
	msgbox gText_BillsGarden_DoubleBattleFightStart_1_MistySplit2 MSG_KEEPOPEN
	applymovement 0x2 LeftwardSteppy
	msgbox gText_BillsGarden_DoubleBattleFightStart_2_Lillie MSG_KEEPOPEN
	applymovement 0x3 Exclaim
	sound 0x15
	pause 0x6
	msgbox gText_BillsGarden_DoubleBattleFightStart_3_Misty MSG_KEEPOPEN
	applymovement 0x4 RightwardSteppy
	msgbox gText_BillsGarden_DoubleBattleFightStart_4_Rival MSG_KEEPOPEN
	applymovement 0x3 DownwardSteppy
	msgbox gText_BillsGarden_DoubleBattleFightStart_5_Misty MSG_KEEPOPEN
	applymovement 0x2 LeftwardSteppy
	msgbox gText_BillsGarden_DoubleBattleFightStart_6_Lillie MSG_KEEPOPEN
	applymovement 0x3 DownwardSteppy
	msgbox gText_BillsGarden_DoubleBattleFightStart_7_Misty MSG_KEEPOPEN
	applymovement 0x5 MintRun1
	sound 0x11
	msgbox gText_BillsGarden_DoubleBattleFightStart_8_Mint MSG_KEEPOPEN
	applymovement 0x3 DownwardSteppy
	msgbox gText_BillsGarden_DoubleBattleFightStart_9_Misty MSG_KEEPOPEN
	applymovement 0x5 MintSteppyHonored
	sound 0x1C
	checksound
	pause 0x3
	sound 0x1C
	waitmovement 0x0
	pause 0x4
	msgbox gText_BillsGarden_DoubleBattleFightStart_10_Mint MSG_KEEPOPEN
	applymovement 0x3 DownwardSteppy
	sound 0x17
	msgbox gText_BillsGarden_DoubleBattleFightStart_11_Misty MSG_NORMAL
	applymovement 0x5 MintReturn2
	waitmovement 0x0
	pause 0x5
	applymovement 0x3 DownwardSteppy
	msgbox gText_BillsGarden_DoubleBattleFightStart_11_MistySplit MSG_KEEPOPEN
	applymovement 0xFF LookDown
	applymovement 0x4 RivalFrantic1
	msgbox gText_BillsGarden_DoubleBattleFightStart_12_Rival MSG_KEEPOPEN
	applymovement 0xFF LookUp
	applymovement 0x3 DownwardSteppy
	msgbox gText_BillsGarden_DoubleBattleFightStart_13_Misty MSG_KEEPOPEN
	applymovement 0xFF LookDown
	applymovement 0x4 RivalFrantic2
	msgbox gText_BillsGarden_DoubleBattleFightStart_14_Rival MSG_KEEPOPEN
	applymovement 0x3 DownwardSteppy
	applymovement 0xFF LookRight
	msgbox gText_BillsGarden_DoubleBattleFightStart_15_Misty MSG_NORMAL
	applymovement 0x4 RivalReturn
	waitmovement 0x0
	pause 0x8
	setflag FLAG_DIDNTCLEARGARDEN
	goto LillieMintBattle
	end

MistyFailTalk:
	faceplayer
	msgbox gText_BillsGarden_LostReturn_1_Misty MSG_NORMAL
	call EventScript_Healing
	msgbox gText_BillsGarden_LostReturn_2_Misty MSG_NORMAL
	applymovement 0x3 LookDown
	compare PLAYERFACING 0x1 @down
	if 0x1 _call PlayerMove1
	compare PLAYERFACING 0x2 @up
	if 0x1 _call PlayerMove2
	compare PLAYERFACING 0x4 @right
	if 0x1 _call PlayerMove3
	pause 0x8
	applymovement 0x4 LookUp
	msgbox gText_BillsGarden_LostReturn_3_Rival MSG_NORMAL
	applymovement 0x4 LookRight
	pause 0x8
	setflag FLAG_DIDNTCLEARGARDEN
	goto LillieMintBattle
	end

LillieMintBattle:
	setflag FLAG_TWO_OPPONENT @Setup battle against two opponents
	setflag FLAG_TAG_BATTLE @Setup battle with partner
	setvar VAR_SECOND_OPPONENT 0x2B @Mint Staryu
	setvar VAR_PARTNER 0x27 @same as rival battle from Route 24
	setvar VAR_PARTNER_BACKSPRITE 0x9 @Rival’s backsprite
	loadpointer 0x0 gText_BillsGarden_DoubleBattle_MintLose
	special SPECIAL_LOAD_SECOND_DEFEAT_TEXT
	trainerbattle3 0x3 0x2C 0x0 gText_BillsGarden_DoubleBattle_LillieLose @Lillie team
	goto MistysTestWon
	end
	
MistysTestWon:
	clearflag FLAG_DIDNTCLEARGARDEN
	pause 0x3
	applymovement 0x3 DownwardSteppy
	msgbox gText_BillsGarden_AfterStoryBattle_1_Misty MSG_KEEPOPEN
	applymovement 0x4 RivalCelebrateJumpy
	sound 0x1C
	checksound
	pause 0x3
	sound 0x1C
	waitmovement 0x0
	pause 0x4
	msgbox gText_BillsGarden_AfterStoryBattle_2_Rival MSG_KEEPOPEN
	applymovement 0x3 DownwardSteppy
	msgbox gText_BillsGarden_AfterStoryBattle_3_Misty MSG_KEEPOPEN
	applymovement 0x5 LookUp
	msgbox gText_BillsGarden_AfterStoryBattle_4_Mint MSG_NORMAL
	applymovement 0x5 MintBails
	sound 0x11
	checksound
	pause 0x10
	applymovement 0x3 DownwardSteppy
	msgbox gText_BillsGarden_AfterStoryBattle_5_Misty MSG_NORMAL
	applymovement 0x3 ExitStageLeft
	waitmovement 0x0
	pause 0xD
	applymovement 0xFF LookDown
	applymovement 0x4 RivalFrantic1
	waitmovement 0x0
	msgbox gText_BillsGarden_AfterStoryBattle_6_Rival MSG_NORMAL
	applymovement 0xFF LookLeft
	applymovement 0x4 ExitStageLeft
	waitmovement 0x0
	pause 0x7
	applymovement 0xFF LookRight
	applymovement 0x1 DownwardSteppy
	msgbox gText_BillsGarden_AfterStoryBattle_7_Bill MSG_KEEPOPEN
	applymovement 0x2 LookUp
	msgbox gText_BillsGarden_AfterStoryBattle_8_Lillie MSG_KEEPOPEN
	applymovement 0x2 LookLeft
	msgbox gText_BillsGarden_AfterStoryBattle_8_LillieSplit MSG_NORMAL
	applymovement 0x1 ExitStageLeft
	pause 0x2
	applymovement 0x2 ExitStageLillie
	waitmovement 0x0
	setflag FLAG_BILL_BILLSGARDEN
	setflag FLAG_LILLIE_BILLSGARDEN
	setflag FLAG_BILLSGARDEN_NPCS
	clearflag FLAG_BILLSCNPCFLAG
	clearflag FLAG_LILLIESCNPCFLAG
	hidesprite 1
	hidesprite 2
	hidesprite 3
	hidesprite 4
	hidesprite 5
	pause 0x19
	applymovement 0xFF LookDown
 	end
	
PlayerMove1:
	applymovement 0xFF PlayerMove1Movement
	waitmovement 0x0
	return
	
PlayerMove2:
	applymovement 0xFF PlayerMove2Movement
	waitmovement 0x0
	return

PlayerMove3:
	applymovement 0xFF PlayerMove3Movement
	waitmovement 0x0
	return

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

	
PlayerMove1Movement:
	.byte walk_left
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte look_right
	.byte 0xFE

PlayerMove2Movement:
	.byte walk_down
	.byte walk_left
	.byte look_right
	.byte 0xFE

PlayerMove3Movement:
	.byte walk_down
	.byte walk_down
	.byte look_right
	.byte 0xFE

DownwardSteppy:
	.byte 0x25
	.byte 0x25
	.byte 0x25
	.byte 0xFE

LeftwardSteppy:
	.byte 0x27
	.byte 0x27
	.byte 0x27
	.byte 0xFE

RightwardSteppy:
	.byte 0x28
	.byte 0x28
	.byte 0x28
	.byte 0xFE

Exclaim:
	.byte 0x62
	.byte 0xFE

MintRun1:
	.byte 0x27
	.byte 0x33
	.byte 0x33
	.byte 0x36
	.byte 0x2A
	.byte 0x2A
	.byte 0x2A
	.byte 0xFE
	
MintSteppyHonored:
	.byte 0x53
	.byte 0x53
	.byte 0x26
	.byte 0xFE
	
MintReturn2:
	.byte 0x35
	.byte 0x34
	.byte 0x34
	.byte look_left
	.byte 0xFE
	
RivalFrantic1:
	.byte 0x26
	.byte 0x26
	.byte 0x26
	.byte 0x26
	.byte 0xFE
	
RivalFrantic2:
	.byte 0x38
	.byte 0x2A
	.byte 0x2A
	.byte 0x2A
	.byte 0x2A
	.byte 0x2A
	.byte 0x2A
	.byte 0xFE

RivalReturn:
	.byte walk_left
	.byte look_right
	.byte 0xFE

RivalCelebrateJumpy:
	.byte 0x55
	.byte 0x55
	.byte look_up
	.byte 0xFE
	
MintBails:
	.byte 0x36
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x36
	.byte 0x36
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0xFE
	
ExitStageLeft:
	.byte walk_left
	.byte walk_left
	.byte walk_up
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte 0xFE
	
ExitStageLillie:
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte 0xFE
