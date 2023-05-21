.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_TAG_BATTLE, 0x908
.equ VAR_PARTNER, 0x5011
.equ VAR_PARTNER_BACKSPRITE, 0x5012
.equ FLAG_CHOSESTARTER1, 0x960
.equ FLAG_CHOSESTARTER2, 0x961
.equ FLAG_CHOSESTARTER3, 0x962
.equ FLAG_DEPTSIB_INTERIOR_HIDE, 0x968 @Hides sib when you get to floor 3, the gavin floor
.equ FLAG_DEPTSTORE_ROCKETEVENT, 0x969 @Set on entry to the dept. store for the first time. Hides shopkeepers and regular customers (except the floor 1 and 3 NPCs). If clear, removes the obstacle boxes and restores music to normal.
.equ FLAG_SIB_CELADONDEPT_ROOF, 0x96B @For Sib, Pelipper & Rocket Prize Master on roof, extra dialogue from sib on floor 5 if you threw
.equ FLAG_CELADONDEPT_ROOF2, 0x96C @Person ID to hide the rockets in the store
.equ FLAG_CELADON_GYMOPEN, 0x96D @Delivered the Energy Drink. Also person ID for gym trainer

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_DeptStore_Floor1
gMapScripts_DeptStore_Floor1:
   mapscript MAP_SCRIPT_ON_LOAD EventScript_ChangeSibSprite_CeladonDeptFloor1
   .byte MAP_SCRIPT_TERMIN

EventScript_ChangeSibSprite_CeladonDeptFloor1:
	checkflag FLAG_CELADON_GYMOPEN
	if SET _goto CeladonDeptIsNormalNow
	setflag FLAG_DEPTSTORE_ROCKETEVENT
	@playsong2 0x166 @@playsong2 0x166 is supposed to be setting up music used while Team Rocket is taking over. Currently disabled until a better solution exists, as the music cuts out between floors because it is not being set on a header level
	checkflag FLAG_DEPTSIB_INTERIOR_HIDE
	if SET _call EventScript_Floor1RocketGotBeat
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry_DeptFloor1
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy_DeptFloor1
    end

CeladonDeptIsNormalNow:
	clearflag FLAG_DEPTSTORE_ROCKETEVENT
	setmaptile 0x6 0x2 0x295 0x0
	setmaptile 0x9 0x2 0x28A 0x0
	setmaptile 0x9 0x1 0x28B 0x0
	special 0x8E
	hidesprite 2
	hidesprite 4
	hidesprite 5
	hidesprite 6
	hidesprite 7
	end

EventScript_SetSibNPCAsSherry_DeptFloor1:
    setvar 0x5028 + 0x2 7
    end

EventScript_SetSibNPCAsBrandy_DeptFloor1:
    setvar 0x5028 + 0x2 0
    end

EventScript_Floor1RocketGotBeat:
	spritebehave 0x3 0x8
	hidesprite 2
	hidesprite 4
	hidesprite 5
	return

.global EventScript_DeptStore_Floor2
gMapScripts_DeptStore_Floor2:
	mapscript MAP_SCRIPT_ON_LOAD EventScript_CeladonDeptFloor2
	end

EventScript_CeladonDeptFloor2:
	checkflag FLAG_DEPTSTORE_ROCKETEVENT
	if NOT_SET _goto CeladonDeptFloor2TilesNormal
	@playsong2 0x166 @@playsong2 0x166 is supposed to be setting up music used while Team Rocket is taking over. Currently disabled until a better solution exists, as the music cuts out between floors because it is not being set on a header level
	end

CeladonDeptFloor2TilesNormal:
	setmaptile 0x5 0x2 0x294 0x0
	setmaptile 0x8 0x2 0x28A 0x0
	setmaptile 0x8 0x1 0x28B 0x0
	setmaptile 0x5 0x3 0x281 0x0
	setmaptile 0x6 0x2 0x290 0x0
	setmaptile 0x6 0x4 0x289 0x0
	setmaptile 0x7 0x4 0x289 0x0
	setmaptile 0x5 0x5 0x2C0 0x0
	setmaptile 0x6 0x5 0x2C0 0x0
	setmaptile 0x6 0x6 0x2C0 0x0
	setmaptile 0x7 0x6 0x2C0 0x0
	setmaptile 0x8 0x6 0x2C0 0x0
	setmaptile 0x6 0x7 0x2C0 0x0
	setmaptile 0x5 0x9 0x2C0 0x0
	special 0x8E
	end

.global EventScript_DeptStore_Floor3
gMapScripts_DeptStore_Floor3:
	mapscript MAP_SCRIPT_ON_TRANSITION EventScript_CeladonDeptFloor3
	mapscript MAP_SCRIPT_ON_LOAD EventScript_CeladonDeptFloor3Floortiles
	.byte MAP_SCRIPT_TERMIN

EventScript_CeladonDeptFloor3:
	@checkflag FLAG_DEPTSTORE_ROCKETEVENT
	@if NOT_SET _goto NormalMusicFloor3
	@playsong2 0x166 @@playsong2 0x166 is supposed to be setting up music used while Team Rocket is taking over. Currently disabled until a better solution exists, as the music cuts out between floors because it is not being set on a header level
	setflag 0x968
	hidesprite 2
	hidesprite 3
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry_DeptFloor3
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy_DeptFloor3
    end

EventScript_CeladonDeptFloor3Floortiles:
	checkflag FLAG_DEPTSTORE_ROCKETEVENT
	if NOT_SET _goto CeladonDeptFloor3TilesNormal
	end

@NormalMusicFloor3:
	@end
	
CeladonDeptFloor3TilesNormal:
	setmaptile 0x6 0x2 0x291 0x0
	special 0x8E
	end

EventScript_SetSibNPCAsSherry_DeptFloor3:
    setvar 0x5028 + 0x3 7
    end

EventScript_SetSibNPCAsBrandy_DeptFloor3:
    setvar 0x5028 + 0x3 0
    end

.global EventScript_DeptStore_Floor4
gMapScripts_DeptStore_Floor4:
	mapscript MAP_SCRIPT_ON_LOAD EventScript_CeladonDeptFloor4
	end
	
EventScript_CeladonDeptFloor4:
	checkflag FLAG_DEPTSTORE_ROCKETEVENT
	if NOT_SET _goto CeladonDeptFloor4TilesNormal
	@playsong2 0x166 @@playsong2 0x166 is supposed to be setting up music used while Team Rocket is taking over. Currently disabled until a better solution exists, as the music cuts out between floors because it is not being set on a header level
	end

CeladonDeptFloor4TilesNormal:
	setmaptile 0x7 0x2 0x296 0x0
	setmaptile 0x5 0x2 0x294 0x0
	setmaptile 0x6 0x2 0x292 0x0
	setmaptile 0x6 0x3 0x281 0x0
	setmaptile 0x6 0x4 0x289 0x0
	setmaptile 0x5 0x5 0x2C0 0x0
	setmaptile 0x6 0x6 0x309 0x0
	setmaptile 0x8 0x8 0x2C4 0x0
	setmaptile 0xA 0xB 0x2C0 0x0
	special 0x8E
	end

.global EventScript_DeptStore_Floor5
gMapScripts_DeptStore_Floor5:
	mapscript MAP_SCRIPT_ON_LOAD EventScript_CeladonDeptFloor5
	end
	
EventScript_CeladonDeptFloor5:
	checkflag FLAG_DEPTSTORE_ROCKETEVENT
	if NOT_SET _goto CeladonDeptFloor5TilesNormal
	@playsong2 0x166 @@playsong2 0x166 is supposed to be setting up music used while Team Rocket is taking over. Currently disabled until a better solution exists, as the music cuts out between floors because it is not being set on a header level
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry_DeptFloor5
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy_DeptFloor5
    end

EventScript_SetSibNPCAsSherry_DeptFloor5:
    setvar 0x5028 + 0x4 7
    end

EventScript_SetSibNPCAsBrandy_DeptFloor5:
    setvar 0x5028 + 0x4 0
    end	
	
CeladonDeptFloor5TilesNormal:
	setmaptile 0x7 0x2 0x296 0x0
	setmaptile 0x5 0x3 0x281 0x0
	setmaptile 0x6 0x2 0x293 0x0
	setmaptile 0x6 0x3 0x281 0x0
	setmaptile 0x6 0x4 0x289 0x0
	setmaptile 0x7 0x4 0x289 0x0
	setmaptile 0x6 0x5 0x2C0 0x0
	setmaptile 0x6 0x6 0x2C0 0x0
	setmaptile 0x4 0x7 0x2C0 0x0
	setmaptile 0x7 0x7 0x317 0x0
	special 0x8E
	end
	
.global EventScript_DeptStore_RoofEvent
gMapScripts_DeptStore_RoofEvent:
	mapscript MAP_SCRIPT_ON_TRANSITION EventScript_CeladonDeptRoof
	mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScript_CeladonDeptRoof_RocketBattle
	.byte MAP_SCRIPT_TERMIN

EventScript_CeladonDeptRoof:
	@checkflag FLAG_DEPTSTORE_ROCKETEVENT
	@if SET _call MusicForTheTransition @@playsong2 0x166 is supposed to be setting up music used while Team Rocket is taking over. Currently disabled until a better solution exists, as the music cuts out between floors because it is not being set on a header level 
	setflag FLAG_SIB_CELADONDEPT_ROOF
	hidesprite 4
	hidesprite 5
	hidesprite 6
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry_DeptRoof
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy_DeptRoof
    end

@MusicForTheTransition:
	@playsong2 0x166 @@playsong2 0x166 is supposed to be setting up music used while Team Rocket is taking over. Currently disabled until a better solution exists, as the music cuts out between floors because it is not being set on a header level
	@return

EventScript_SetSibNPCAsSherry_DeptRoof:
    setvar 0x5028 + 0x4 7
    end

EventScript_SetSibNPCAsBrandy_DeptRoof:
    setvar 0x5028 + 0x4 0
    end

LevelScript_CeladonDeptRoof_RocketBattle:
	levelscript 0x4090, 0, LevelScripts_CeladonDeptRoof_RocketBattleP2
	.hword LEVEL_SCRIPT_TERMIN

LevelScripts_CeladonDeptRoof_RocketBattleP2:
	applymovement 0xFF WalkLeft3
	lockall
	fadeoutbgm 1
	pause 0x20
	sound 0x9
	showsprite 4
	pause 0x8
	applymovement 0xFF LookRight
	waitmovement 0x0
	pause 0x24
	applymovement 0x4 SibHop
	sound 0x1C
	pause 0x4
	sound 0x7
	waitmovement 0x0
	pause 0x8
	applymovement 0xFF LookLeft
	applymovement 0x4 SibRoofMove
	waitmovement 0x0
	special 0x113
	applymovement 0x7F WalkLeft3
	waitmovement 0x0
	msgbox gText_CeladonDeptStore_RocketsRooftop_ChieAgain MSG_NORMAL
	applymovement 0x1 RocketSteppyUp
	pause 0x15
	msgbox gText_CeladonDeptStore_RocketsRooftop_JamesIntro MSG_KEEPOPEN
	applymovement 0x2 RocketSteppyUp
	pause 0x9
	msgbox gText_CeladonDeptStore_RocketsRooftop_JessieIntro MSG_KEEPOPEN
	applymovement 0x3 SibsSteppy
	msgbox gText_CeladonDeptStore_RocketRooftop_ChieAgainAgain1 MSG_NORMAL
	applymovement 0x3 GruntChieLeaves1
	waitmovement 0x0
	applymovement 0x3 ExclaimGeneral
	sound 0x15
	pause 0x14
	msgbox gText_CeladonDeptStore_RocketRooftop_ChieAgainAgain2 MSG_NORMAL
	applymovement 0x3 GruntChieLeaves2
	sound 0x91
	pause 0x20
	sound 0xBD
	waitmovement 0x0 
	sound 0x9
	hidesprite 3
	pause 0x20
	applymovement 0xFF WalkLeft3
	applymovement 0x4 WalkLeft3
	applymovement 0x7F WalkLeft2
	waitmovement 0x0
	pause 0x9
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _call EventScript_SetSibNPCAsSherry_RocketWhomst1
    compare LASTRESULT 0x1
    if 0x1 _call EventScript_SetSibNPCAsBrandy_RocketWhomst1
	pause 0x5
	applymovement 0x2 RocketSteppyUp
	pause 0x9
	msgbox gText_CeladonDeptStore_JessieReveal_1 MSG_KEEPOPEN
	applymovement 0x1 RocketSteppyUp
	pause 0x9
	msgbox gText_CeladonDeptStore_JamesReveal_1 MSG_KEEPOPEN
	applymovement 0x4 SibsSteppy
	pause 0x9
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _call EventScript_SetSibNPCAsSherry_RocketWhomst2
    compare LASTRESULT 0x1
    if 0x1 _call EventScript_SetSibNPCAsBrandy_RocketWhomst2
	playsong 0x161 0x0
	pause 0x30
	applymovement 0x1 RocketPirouette1
	sound 0x71
	pause 0x9
	sound 0x71
	pause 0x9
	sound 0x71
	waitmovement 0x0
	msgbox gText_CeladonDeptStore_JamesReveal_2 MSG_KEEPOPEN
	applymovement 0x2 RocketPirouette2
	sound 0x71
	applymovement 0x7F WalkRight
	pause 0x9
	sound 0x71
	pause 0x9
	sound 0x71
	pause 0x12
	msgbox gText_CeladonDeptStore_JessieReveal_2 MSG_NORMAL
	pause 0x35
	msgbox gText_CeladonDeptStore_TRMotto1 MSG_KEEPOPEN
	applymovement 0x1 MottoAnimOne
	applymovement 0x2 MottoAnimOne
	waitmovement 0x0
	msgbox gText_CeladonDeptStore_TRMotto2 MSG_KEEPOPEN
	applymovement 0xFF LookDown
	applymovement 0x4 LookUp
	pause 0x25
	sound 0x15
	applymovement 0xFF QuestionMark
	applymovement 0x4 QuestionMark
	waitmovement 0x0
	pause 0x26
	applymovement 0xFF LookLeft
	applymovement 0x4 LookLeft
	pause 0x10
	msgbox gText_CeladonDeptStore_TRMotto3 MSG_KEEPOPEN
	applymovement 0x1 MottoAnim2_1
	applymovement 0x2 MottoAnim2_2
	waitmovement 0x0
	applymovement 0xFF LookUp
	applymovement 0x4 LookUp
	msgbox gText_CeladonDeptStore_TRMotto4 MSG_KEEPOPEN
	applymovement 0x1 MottoAnim3_Right
	applymovement 0x2 MottoAnim3_Left
	waitmovement 0x0
	applymovement 0x2 WalkDown
	msgbox gText_CeladonDeptStore_TRMotto5 MSG_KEEPOPEN
	applymovement 0x2 MottoRetract
	waitmovement 0x0
	applymovement 0x2 MottoAnim3_Right
	applymovement 0x1 MottoAnim3_Left
	waitmovement 0x0
	applymovement 0x1 WalkDown
	waitmovement 0x0
	msgbox gText_CeladonDeptStore_TRMotto6 MSG_KEEPOPEN
	applymovement 0x1 MottoRetract
	waitmovement 0x0
	msgbox gText_CeladonDeptStore_TRMotto7 MSG_KEEPOPEN
	msgbox gText_CeladonDeptStore_TRMotto8 MSG_NORMAL
	pause 0x40
	msgbox gText_CeladonDeptStore_TRBeat MSG_KEEPOPEN
	applymovement 0x1 LookRight
	applymovement 0x2 LookLeft
	waitmovement 0x0
	msgbox gText_CeladonDeptStore_JamesWaitNoPokemon1 MSG_KEEPOPEN
	msgbox gText_CeladonDeptStore_JessieWaitNoPokemon1 MSG_KEEPOPEN
	applymovement 0x1 JamesJump
	sound 0x1C
	msgbox gText_CeladonDeptStore_JamesWaitNoPokemon2 MSG_KEEPOPEN
	msgbox gText_CeladonDeptStore_JessieWaitNoPokemon2 MSG_KEEPOPEN
	applymovement 0x1 JamesJump
	sound 0x1C
	waitmovement 0x0
	applymovement 0x1 JamesJump
	sound 0x1C
	msgbox gText_CeladonDeptStore_JamesWaitNoPokemon3 MSG_KEEPOPEN
	applymovement 0x2 SibsSteppy
	msgbox gText_CeladonDeptStore_JessieWaitNoPokemon3 MSG_KEEPOPEN
	msgbox gText_CeladonDeptStore_JamesWaitNoPokemon4 MSG_KEEPOPEN
	applymovement 0x1 LookDown
	applymovement 0x2 LookDown
	msgbox gText_CeladonDeptStore_JessieWaitNoPokemon4 MSG_NORMAL
	applymovement 0x1 LookRight
	applymovement 0x2 LookLeft
	sound 0x69
	checksound
	sound 0x38
	checksound
	sound 0x39
	checksound
	pause 0x10
	sound 0x19
	pause 0x21
	sound 0x36
	pause 0x30
	showsprite 5
	applymovement 0x5 PelipperSweep
	sound 0x97
	pause 0x5
	sound 0x7E
	pause 0x19
	sound 0x47
	applymovement 0x1 PushedByPelipper
	applymovement 0x2 PushedByPelipper
	waitmovement 0x0
	pause 0x5
	applymovement 0x5 LookDown
	waitmovement 0x0
	pause 0x30
	cry SPECIES_PELIPPER 0x0
	pause 0x40
	showsprite 6
	sound 0xF
	applymovement 0x5 PelipperBails
	pause 0x9
	sound 0x25
	pause 0x21
	hidesprite 5
	applymovement 0x2 LookDown
	msgbox gText_CeladonDeptStore_BeholdThePrizeMaster1 MSG_KEEPOPEN
	applymovement 0x2 LookLeft
	msgbox gText_CeladonDeptStore_BeholdThePrizeMaster2 MSG_KEEPOPEN
	applymovement 0x1 SibsSteppy
	msgbox gText_CeladonDeptStore_JamesGachaPulls MSG_NORMAL
	applymovement 0x1 Down2Gacha
	applymovement 0x2 Down2Gacha
	pause 0x8
	applymovement 0xFF PushedByTR
	sound 0x7
	waitmovement 0x0
	pause 0x10
	sound 0x63
	checksound
	pause 0x7
	sound 0x31
	checksound
	applymovement 0x2 JessieInPosition
	waitmovement 0x0
	applymovement 0x1 JamesInPosition1
	pause 0x16
	sound 0x63
	checksound
	pause 0x7
	sound 0x31
	checksound
	applymovement 0x1 JamesInPosition2
	waitmovement 0x0
	pause 0x10
	applymovement 0x1 MottoAnim3_Right
	applymovement 0x2 MottoAnim3_Left
	waitmovement 0x0
	msgbox gText_CeladonDeptStore_JessieReadyToGo MSG_KEEPOPEN
	applymovement 0xFF LookRight
	applymovement 0x4 LookLeft
	waitmovement 0x0
	special 0x114
	pause 0x15
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SibSherryVsDeptRocketsFight
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SibBrandyVsDeptRocketsFight
	end
	
EventScript_SetSibNPCAsSherry_RocketWhomst1:
	msgbox gText_CeladonDeptStore_RocketRooftop_SibSherry1 MSG_NORMAL
	return

EventScript_SetSibNPCAsBrandy_RocketWhomst1:
	msgbox gText_CeladonDeptStore_RocketRooftop_SibBrandy1 MSG_NORMAL
	return
	
EventScript_SetSibNPCAsSherry_RocketWhomst2:
	msgbox gText_CeladonDeptStore_RocketRooftop_SibSherry2 MSG_NORMAL
	return

EventScript_SetSibNPCAsBrandy_RocketWhomst2:
	msgbox gText_CeladonDeptStore_RocketRooftop_SibBrandy2 MSG_NORMAL
	return

EventScript_SibSherryVsDeptRocketsFight:
	msgbox gText_CeladonDeptStore_RocketRooftop_SibSherry3 MSG_NORMAL
	applymovement 0xFF LookUp
	applymovement 0x4 LookUp
	waitmovement 0x0
	pause 0x15
	setflag FLAG_TAG_BATTLE 
	setvar VAR_PARTNER 0x1E @Sherry partner 
	setvar VAR_PARTNER_BACKSPRITE 0x1 @Sherry Backsprite
	special 0x0
	trainerbattle3 0x3 29 0x0 gText_CeladonDeptStore_RocketsLose
	goto EventScript_AfterRocketRoof
	return

EventScript_SibBrandyVsDeptRocketsFight:
	msgbox gText_CeladonDeptStore_RocketRooftop_SibBrandy3 MSG_NORMAL
	applymovement 0xFF LookUp
	applymovement 0x4 LookUp
	waitmovement 0x0
	pause 0x15
	setflag FLAG_TAG_BATTLE 
	setvar VAR_PARTNER 0x1F @Brandy partner 
	setvar VAR_PARTNER_BACKSPRITE 0x0 @Brandy Backsprite
	special 0x0
	trainerbattle3 0x3 29 0x0 gText_CeladonDeptStore_RocketsLose
	goto EventScript_AfterRocketRoof
	return
	
EventScript_AfterRocketRoof:
	clearflag FLAG_TAG_BATTLE
	setvar 0x4090 0x1
	msgbox gText_CeladonDeptStore_RocketsAfter MSG_KEEPOPEN
	applymovement 0x1 RocketTanty
	pause 0x3
	applymovement 0x2 RocketTanty
	msgbox gText_CeladonDeptStore_JessieLost1 MSG_KEEPOPEN
	applymovement 0x4 RocketSteppyUp
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _call EventScript_CeladonSibSherryWhat
    compare LASTRESULT 0x1
    if 0x1 _call EventScript_CeladonSibBrandyWhat
	msgbox gText_CeladonDeptStore_JessieLost2 MSG_KEEPOPEN
	applymovement 0x1 RocketTanty
	msgbox gText_CeladonDeptStore_JamesLost2 MSG_NORMAL
	applymovement 0x1 JamesShoveReady
	applymovement 0x2 JessieShoveReady
	waitmovement 0x0
	pause 0x17
	call RocketsShovePrize
	msgbox gText_CeladonDeptStore_JamesLost3 MSG_NORMAL
	call RocketsShovePrize
	pause 0x31
	call RocketsShovePrize
	pause 0x34
	call RocketsShovePrize
	fadescreen 0x1
	pause 0x16
	setflag FLAG_CELADONDEPT_ROOF2
	hidesprite 1
	hidesprite 2
	hidesprite 6
	applymovement 0xFF LookRight
	applymovement 0x4 LookRight
	msgbox gText_CeladonDeptStore_FadeToBlack MSG_NORMAL
	fadescreen 0x0
	pause 0x36
	applymovement 0x4 LookLeft
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_CeladonSibSherryStarterNamedrop
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_CeladonSibBrandyStarterNamedrop
	end
	
RocketsShovePrize:
	applymovement 0x1 PrizeMasterShove
	applymovement 0x2 PrizeMasterShove
	applymovement 0x6 PrizeMasterItselfShove
	sound 0xCF
	waitmovement 0x0
	return

EventScript_CeladonSibSherryWhat:
	msgbox gText_CeladonDeptStore_SherryConfused MSG_KEEPOPEN
	return

EventScript_CeladonSibBrandyWhat:
	msgbox gText_CeladonDeptStore_BrandyConfused MSG_KEEPOPEN
	return
	
EventScript_CeladonSibSherryStarterNamedrop:
	checkflag 0x940
	if SET _goto SherryRandoDialogue
	checkflag FLAG_CHOSESTARTER1
	if SET _goto ChoseRelicanthSherry
	checkflag FLAG_CHOSESTARTER2
	if SET _goto ChoseSigilyphSherry
	checkflag FLAG_CHOSESTARTER3
	if SET _goto ChosePassimianSherry
	end
	
EventScript_CeladonSibBrandyStarterNamedrop:
	checkflag 0x940
	if SET _goto BrandoDialogue
	checkflag FLAG_CHOSESTARTER1
	if SET _goto ChoseRelicanthBrandy
	checkflag FLAG_CHOSESTARTER2
	if SET _goto ChoseSigilyphBrandy
	checkflag FLAG_CHOSESTARTER3
	if SET _goto ChosePassimianBrandy
	end
	
ChoseRelicanthSherry:
	msgbox gText_CeladonDeptStore_SherryAfterLeave_PlayerChoseRelicanth MSG_KEEPOPEN
	goto RocketRoofEventFinal
	end
	
ChoseSigilyphSherry:
	msgbox gText_CeladonDeptStore_SherryAfterLeave_PlayerChoseSigilyph MSG_KEEPOPEN
	goto RocketRoofEventFinal
	end
	
ChosePassimianSherry:
	msgbox gText_CeladonDeptStore_SherryAfterLeave_PlayerChosePassimian MSG_KEEPOPEN
	goto RocketRoofEventFinal
	end
	
ChoseRelicanthBrandy:
	msgbox gText_CeladonDeptStore_BrandyAfterLeave_PlayerChoseRelicanth MSG_KEEPOPEN
	goto RocketRoofEventFinal
	end
	
ChoseSigilyphBrandy:
	msgbox gText_CeladonDeptStore_BrandyAfterLeave_PlayerChoseSigilyph MSG_KEEPOPEN
	goto RocketRoofEventFinal
	end
	
ChosePassimianBrandy:
	msgbox gText_CeladonDeptStore_BrandyAfterLeave_PlayerChosePassimian MSG_KEEPOPEN
	goto RocketRoofEventFinal
	end

SherryRandoDialogue:
	msgbox gText_CeladonDeptStore_SherryAfterLeave_Rando MSG_KEEPOPEN
	goto RocketRoofEventFinal
	end

BrandoDialogue:
	msgbox gText_CeladonDeptStore_BrandyAfterLeave_Rando MSG_KEEPOPEN
	goto RocketRoofEventFinal
	end

RocketRoofEventFinal:
	msgbox gText_CeladonDeptStore_SibAfterRocketRoofWin MSG_NORMAL
	applymovement 0x4 WalkUp3
	waitmovement 0x0
	pause 0x15
	sound 0x63
	checksound
	pause 0x10
	applymovement 0x4 WalkDown3
	waitmovement 0x0
	applymovement 0x4 LookLeft
	pause 0x15
	giveitem ITEM_ENERGY_DRINK 0x1 MSG_OBTAIN
	checkgender
	compare LASTRESULT 0x0
    if 0x1 _call EventScript_CeladonRoofSibSherryReallyFinal
    compare LASTRESULT 0x1
    if 0x1 _call EventScript_CeladonRoofSibBrandyReallyFinal
	checkflag 0x940
	if NOT_SET _goto RelicanthCheck
	goto ReallyReallyFinalAndLeave
	end

EventScript_CeladonRoofSibSherryReallyFinal:
	msgbox gText_CeladonDeptStore_SherryAfterWinLeave1 MSG_KEEPOPEN
	return
	
EventScript_CeladonRoofSibBrandyReallyFinal:
	msgbox gText_CeladonDeptStore_BrandyAfterWinLeave1 MSG_KEEPOPEN
	return
	
RelicanthCheck:
	checkflag FLAG_CHOSESTARTER3
	if SET _call RelicanthDialogue
	goto ReallyReallyFinalAndLeave
	end
	
RelicanthDialogue:
	msgbox gText_CeladonDeptStore_PlayerChosePassimianSoOopsIHaveRelicanth MSG_KEEPOPEN
	return
	
ReallyReallyFinalAndLeave:
	msgbox gText_CeladonDeptStore_SibAfterWinLeave2 MSG_NORMAL
	applymovement 0x4 SibWalksOut
	waitmovement 0x0
	pause 0x5
	sound 0x9
	hidesprite 4
	releaseall
	end

.global EventScript_CeladonDept_Floor1CustomerService
EventScript_CeladonDept_Floor1CustomerService:
	checkflag 0x96D
	if SET _goto EventScript_CeladonDept_Floor1CustomerService_Angry
	msgbox gText_CeladonDeptStore_RocketEvent_CustomerService MSG_FACE
	end

EventScript_CeladonDept_Floor1CustomerService_Angry:
	msgbox gText_CeladonDeptStore_RocketEvent_CustomerService_Angry MSG_FACE
	end

.global EventScript_CeladonDept_SherryBrandy_1F
EventScript_CeladonDept_SherryBrandy_1F:
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_CeladonDept_Sherry_1F
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_CeladonDept_Brandy_1F
    end
	
EventScript_CeladonDept_Sherry_1F:
	msgbox gText_CeladonDeptStore_SibBattle1F_Sherry MSG_NORMAL
	end	
	
EventScript_CeladonDept_Brandy_1F:
	msgbox gText_CeladonDeptStore_SibBattle1F_Brandy MSG_NORMAL
	end
	
.global EventScript_CeladonDept_1FRocketBattlingSib
EventScript_CeladonDept_1FRocketBattlingSib:
	checkflag 0x968
	if SET _goto RocketBemoaningHisFate
	msgbox gText_CeladonDeptStore_1FRocketBattlingSib MSG_NORMAL
	end

RocketBemoaningHisFate:
	faceplayer
	msgbox gText_CeladonDeptStore_1FRocketBattlingSib_AfterNotSurviving MSG_KEEPOPEN
	applymovement 0x3 RocketTanty
	pause 0x10
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_CeladonDept_RocketComplainSherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_CeladonDept_RocketComplainBrandy
	end
	
EventScript_CeladonDept_RocketComplainSherry:
	msgbox gText_CeladonDeptStore_1FRocketBattlingSib_LostSherry MSG_NORMAL
	end

EventScript_CeladonDept_RocketComplainBrandy:
	msgbox gText_CeladonDeptStore_1FRocketBattlingSib_LostBrandy MSG_NORMAL
	end
	
.global EventScript_CeladonDeptStore_RocketsArctozolt
EventScript_CeladonDeptStore_RocketsArctozolt:
	cry SPECIES_ARCTOZOLT 0x0
	msgbox gText_CeladonDeptStore_RocketArctozolt MSG_NORMAL
	end	
	
.global EventScript_CeladonDeptStore_SibsPokemon
EventScript_CeladonDeptStore_SibsPokemon:
	cry SPECIES_CHINGLING 0x0
	msgbox gText_CeladonDeptStore_SherrysChingling MSG_NORMAL
	end

.global EventScript_CeladonDept_1FBattlingRocket
EventScript_CeladonDept_1FBattlingRocket:
    trainerbattle0 0x0 22 0x0 gText_CeladonDeptStore_RocketEvent_FirstRocket_Before gText_CeladonDeptStore_RocketEvent_FirstRocket_Lose
	msgbox gText_CeladonDeptStore_RocketEvent_FirstRocket_After MSG_NORMAL
	end

.global EventScript_CeladonDept_ElevatorClosed
EventScript_CeladonDept_ElevatorClosed:
	setvar 0x408E 0x0
	lockall
	applymovement 0xFF LookUp
	waitmovement 0x0
	msgbox gText_CeladonDeptStore_RocketEvent_Elevator MSG_NORMAL
	applymovement 0xFF WalkDown
	waitmovement 0x0
	releaseall
	end
	
.global EventScript_CeladonDept_2FRocket_1
EventScript_CeladonDept_2FRocket_1:
    trainerbattle0 0x0 23 0x0 gText_CeladonDeptStore_RocketEvent_NextRocket_Before gText_CeladonDeptStore_RocketEvent_NextRocket_Lose
	msgbox gText_CeladonDeptStore_RocketEvent_NextRocket_After MSG_NORMAL
	end
	
.global EventScript_CeladonDept_2FRocket_2
EventScript_CeladonDept_2FRocket_2:
    trainerbattle0 0x0 24 0x0 gText_CeladonDeptStore_RocketEvent_Rocket3_Before gText_CeladonDeptStore_RocketEvent_Rocket3_Lose
	msgbox gText_CeladonDeptStore_RocketEvent_Rocket3_After MSG_NORMAL
	end
		
.global EventScript_CeladonDept_4FRocket_1
EventScript_CeladonDept_4FRocket_1:
    trainerbattle0 0x0 25 0x0 gText_CeladonDeptStore_DeptStoreRockets_4FRocket1_Before gText_CeladonDeptStore_DeptStoreRockets_4FRocket1_Lose
	msgbox gText_CeladonDeptStore_DeptStoreRockets_4FRocket1_After MSG_NORMAL
	end
			
.global EventScript_CeladonDept_4FRocket_2
EventScript_CeladonDept_4FRocket_2:
    trainerbattle0 0x0 26 0x0 gText_CeladonDeptStore_DeptStoreRockets_4FRocket2_Before gText_CeladonDeptStore_DeptStoreRockets_4FRocket2_Lose
	msgbox gText_CeladonDeptStore_DeptStoreRockets_4FRocket2_After MSG_NORMAL
	end

.global EventScript_CeladonDept_5FRocket_1
EventScript_CeladonDept_5FRocket_1:
    trainerbattle0 0x0 27 0x0 gText_CeladonDeptStore_DeptStoreRockets_5FRocket1_Before gText_CeladonDeptStore_DeptStoreRockets_5FRocket1_Lose
	msgbox gText_CeladonDeptStore_DeptStoreRockets_5FRocket1_After MSG_NORMAL
	end
	
.global EventScript_CeladonDept_5FRocket_2
EventScript_CeladonDept_5FRocket_2:
    trainerbattle0 0x0 28 0x0 gText_CeladonDeptStore_DeptStoreRockets_5FRocket2_Before gText_CeladonDeptStore_DeptStoreRockets_5FRocket2_Lose
	msgbox gText_CeladonDeptStore_DeptStoreRockets_5FRocket2_After MSG_NORMAL
	end

.global EventScript_CeladonDept_GavinsBigDebut1
EventScript_CeladonDept_GavinsBigDebut1:
	call GavinsBigDebutStart
	applymovement 0xFF PlayerWalkToGavin1
	goto GavinsBigDebutContinued
	end
	
.global EventScript_CeladonDept_GavinsBigDebut2
EventScript_CeladonDept_GavinsBigDebut2:
	call GavinsBigDebutStart
	applymovement 0xFF PlayerWalkToGavin2
	goto GavinsBigDebutContinued
	end

GavinsBigDebutStart:
	sound 0x9
	lockall
	showsprite 2
	applymovement 0x2 WalkLeft
	msgbox gText_CeladonCity_DeptStoreRockets_GarchompGavinIntro1 MSG_KEEPOPEN
	applymovement 0x2 GavinMove1
	waitmovement 0x0
	return

GavinsBigDebutContinued:
	msgbox gText_CeladonCity_DeptStoreRockets_GarchompGavinIntro2 MSG_KEEPOPEN
	applymovement 0x2 GavinMove2
	waitmovement 0x0
	msgbox gText_CeladonCity_DeptStoreRockets_GarchompGavinIntro3 MSG_KEEPOPEN
	applymovement 0x2 GavinNotice
	pause 0x2
	sound 0x15
	pause 0x10
	applymovement 0x2 GavinsMadDash
	waitmovement 0x0
	applymovement 0xFF LookLeft
	msgbox gText_CeladonCity_DeptStoreRockets_GarchompGavinNext MSG_NORMAL
	showsprite 3
	sound 0x9
	applymovement 0x3 WalkLeft
	pause 0x5
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _call SherryLine1
    compare LASTRESULT 0x1
    if 0x1 _call BrandyLine1
	applymovement 0x2 GavinsSteppy
	msgbox gText_CeladonCity_DeptStoreRockets_GarchompGavin3 MSG_KEEPOPEN
	applymovement 0x3 QuestionMark
	sound 0x15
	pause 0x9
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _call SherryLine2
    compare LASTRESULT 0x1
    if 0x1 _call BrandyLine2
	applymovement 0x2 GavinsSteppy
	msgbox gText_CeladonCity_DeptStoreRockets_GarchompGavin4 MSG_NORMAL
	applymovement 0x2 WalkRight
	waitmovement 0x0
	trainerbattle3 0x3 8 0x0 gText_CeladonCity_DeptStoreRockets_GarchompGavin_Loss
	applymovement 0x2 GavinsJumps
	sound 0x1C
	waitmovement 0x0
	msgbox gText_CeladonCity_DeptStoreRockets_GarchompGavin_After MSG_KEEPOPEN
	applymovement 0x3 WalkLeft2
	waitmovement 0x0
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _call SherryLine3
    compare LASTRESULT 0x1
    if 0x1 _call BrandyLine3
	applymovement 0x2 GavinsSteppy
	msgbox gText_CeladonCity_DeptStoreRockets_GarchompGavin_After2 MSG_KEEPOPEN
	applymovement 0x3 SibsSteppy
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _call SherryLine4
    compare LASTRESULT 0x1
    if 0x1 _call BrandyLine4
	msgbox gText_CeladonCity_DeptStoreRockets_GarchompGavin_Revenge MSG_NORMAL
	applymovement 0x2 GavinLeavesTheWayHeCame
	waitmovement 0x0
	sound 0x9
	hidesprite 2
	pause 0x30
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _call SherryLine5
    compare LASTRESULT 0x1
    if 0x1 _call BrandyLine5
	applymovement 0x3 SibGoesToFloor4
	waitmovement 0x0
	sound 0x9
	hidesprite 3
	setvar 0x408F 0x1
	releaseall
	end

SherryLine1:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinSherry1 MSG_KEEPOPEN
	return

BrandyLine1:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinBrandy1 MSG_KEEPOPEN
	return

SherryLine2:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinSherry2 MSG_KEEPOPEN
	return

BrandyLine2:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinBrandy2 MSG_KEEPOPEN
	return
	
SherryLine3:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinSherry3 MSG_KEEPOPEN
	return

BrandyLine3:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinBrandy3 MSG_KEEPOPEN
	return	
	
SherryLine4:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinSherry4 MSG_KEEPOPEN
	return

BrandyLine4:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinBrandy4 MSG_KEEPOPEN
	return
	
SherryLine5:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinSherry5 MSG_NORMAL
	return

BrandyLine5:
	msgbox gText_CeladonCity_DeptStoreRockets_GavinBrandy5 MSG_NORMAL
	return

.global EventScript_CeladonDept_3FAttendant
EventScript_CeladonDept_3FAttendant:
	checkflag 0x96D
	if SET _goto EventScript_CeladonDept_3FAttendant_GamerRage
	msgbox gText_CeladonCity_DeptStoreRockets_TVGameShopCounter MSG_FACE
	end

EventScript_CeladonDept_3FAttendant_GamerRage:
	msgbox gText_CeladonCity_DeptStoreRockets_TVGameShopCounter_Angry MSG_FACE
	end

.global EventScript_CeladonDept_SibChilling5F
EventScript_CeladonDept_SibChilling5F:
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_CeladonDept_SibChilling5F_Sherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_CeladonDept_SibChilling5F_Brandy
    end

EventScript_CeladonDept_SibChilling5F_Sherry:
	checkflag FLAG_SIB_CELADONDEPT_ROOF
	if 0x1 _goto SherryThinksYouThrew
	msgbox gText_CeladonDeptStore_SibFloor5_Sherry MSG_FACE
	end

EventScript_CeladonDept_SibChilling5F_Brandy:
	checkflag FLAG_SIB_CELADONDEPT_ROOF
	if 0x1 _goto BrandyThinksYouThrew
	msgbox gText_CeladonDeptStore_SibFloor5_Brandy MSG_FACE
	end

SherryThinksYouThrew:
	msgbox gText_CeladonDeptStore_SibFloor5_Sherry_YouThrew MSG_FACE
	end

BrandyThinksYouThrew:
	msgbox gText_CeladonDeptStore_SibFloor5_Brandy_YouThrew MSG_FACE
	end

.global EventScript_CeladonDept_ShamedRocket
EventScript_CeladonDept_ShamedRocket:
	msgbox gText_CeladonDeptStore_ShamedRocket MSG_NORMAL
	end
	
.global EventScript_CeladonDept_Floor1_RegularNPC1
EventScript_CeladonDept_Floor1_RegularNPC1:
	msgbox gText_CeladonDept_Floor1_RegularNPC1 MSG_FACE
	end		
	
.global EventScript_CeladonDept_Floor2_RegularNPC1
EventScript_CeladonDept_Floor2_RegularNPC1:
	msgbox gText_CeladonDept_Floor2_RegularNPC1 MSG_FACE
	end		
		
.global EventScript_CeladonDept_Floor2_RegularNPC2
EventScript_CeladonDept_Floor2_RegularNPC2:
	msgbox gText_CeladonDept_Floor2_RegularNPC2 MSG_FACE
	end		

.global EventScript_CeladonDept_Floor4_RegularNPC1
EventScript_CeladonDept_Floor4_RegularNPC1:
	msgbox gText_CeladonDept_Floor4_RegularNPC1 MSG_FACE
	end	
		
.global EventScript_CeladonDept_Roof_RegularNPC1
EventScript_CeladonDept_Roof_RegularNPC1:
	msgbox gText_CeladonDept_Roof_RegularNPC1_TwerpMode MSG_FACE
	end

.global EventScript_CeladonDept_Chisps
EventScript_CeladonDept_Chisps:
	msgbox gText_CeladonCity_DeptStore_Chisps MSG_FACE
	end

.global EventScript_CeladonDept_2F_PokeBallsVendor
EventScript_CeladonDept_2F_PokeBallsVendor:
	lock
	faceplayer
	preparemsg gText_CeladonCity_DeptStoreMerchantHiTwerp1
	waitmsg
	pokemart EventScript_CeladonDept_PokeBalls_1
	msgbox gText_CeladonCity_DeptStoreMerchantByeTwerp1 MSG_NORMAL
	release
	end

.global EventScript_CeladonDept_2F_ConvenienceVendor
EventScript_CeladonDept_2F_ConvenienceVendor:
	lock
	faceplayer
	preparemsg gText_CeladonCity_DeptStoreMerchantHiTwerp2
	waitmsg
	pokemart EventScript_CeladonDept_ConvenienceItems_1
	msgbox gText_CeladonCity_DeptStoreMerchantByeTwerp2 MSG_NORMAL
	release
	end
	
.global EventScript_CeladonDept_4F_EvoItemsGiftsVendor
EventScript_CeladonDept_4F_EvoItemsGiftsVendor:
	lock
	faceplayer
	preparemsg gText_CeladonCity_DeptStoreMerchantHiTwerp1
	waitmsg
	pokemart EventScripts_CeladonDept_GiftsEvoItems_1
	msgbox gText_CeladonCity_DeptStoreMerchantByeTwerp2 MSG_NORMAL
	release
	end
	
.global EventScript_CeladonDept_5F_VitaminsPowerItemsVendor
EventScript_CeladonDept_5F_VitaminsPowerItemsVendor:
	lock
	faceplayer
	preparemsg gText_CeladonCity_DeptStoreMerchantEVs
	waitmsg
	pokemart EventScripts_CeladonDept_VitaminsPower
	msgbox gText_CeladonCity_DeptStoreMerchant_ByeNotHater MSG_NORMAL
	release
	end
	
.global EventScript_CeladonDept_5F_BattleItemsVendor
EventScript_CeladonDept_5F_BattleItemsVendor:
	lock
	faceplayer
	preparemsg gText_CeladonCity_DeptStoreMerchantBattleItems
	waitmsg
	pokemart EventScripts_CeladonDept_XItems
	msgbox gText_CeladonCity_DeptStoreMerchant_ByeNotHater MSG_NORMAL
	release
	end
	
EventScript_CeladonDept_PokeBalls_1:
	.hword ITEM_POKE_BALL
	.hword ITEM_NET_BALL
	.hword ITEM_NEST_BALL
	.hword ITEM_HEAL_BALL
	.hword 0x0
	
EventScript_CeladonDept_PokeBalls_2:
	.hword ITEM_POKE_BALL
	.hword ITEM_GREAT_BALL
	.hword ITEM_ULTRA_BALL
	.hword ITEM_MASTER_BALL
	.hword ITEM_NET_BALL
	.hword ITEM_DIVE_BALL
	.hword ITEM_NEST_BALL
	.hword ITEM_REPEAT_BALL
	.hword ITEM_TIMER_BALL
	.hword ITEM_LUXURY_BALL
	.hword ITEM_DUSK_BALL
	.hword ITEM_HEAL_BALL
	.hword ITEM_QUICK_BALL
	.hword ITEM_DREAM_BALL
	.hword ITEM_BEAST_BALL
	.hword ITEM_FAST_BALL
	.hword ITEM_LEVEL_BALL
	.hword ITEM_LURE_BALL
	.hword ITEM_HEAVY_BALL
	.hword ITEM_LOVE_BALL
	.hword ITEM_FRIEND_BALL
	.hword ITEM_MOON_BALL
	.hword 0x0

@@@Safari & Sport Balls are in Fuchsia	

EventScript_CeladonDept_ConvenienceItems_1:
	.hword ITEM_POTION
	.hword ITEM_ANTIDOTE
	.hword ITEM_PARALYZE_HEAL
	.hword ITEM_AWAKENING
	.hword ITEM_REPEL
	.hword 0x0
	
EventScripts_CeladonDept_GiftsEvoItems_1:
	.hword ITEM_POKE_DOLL
	.hword ITEM_RETRO_MAIL
	.hword ITEM_SHADOW_MAIL
	.hword 0x0
	
EventScripts_CeladonDept_VitaminsPower:
	.hword ITEM_HP_UP
	.hword ITEM_PROTEIN
	.hword ITEM_IRON
	.hword ITEM_CALCIUM
	.hword ITEM_ZINC
	.hword ITEM_CARBOS
	.hword ITEM_POWER_BRACER
	.hword ITEM_POWER_BELT
	.hword ITEM_POWER_LENS
	.hword ITEM_POWER_BAND
	.hword ITEM_POWER_ANKLET
	.hword ITEM_POWER_WEIGHT
	.hword ITEM_MACHO_BRACE
	.hword 0x0

EventScripts_CeladonDept_XItems:
	.hword ITEM_X_ATTACK
	.hword ITEM_X_DEFEND
	.hword ITEM_X_SPEED
	.hword ITEM_X_SPECIAL
	.hword ITEM_X_ACCURACY
	.hword ITEM_GUARD_SPEC
	.hword ITEM_DIRE_HIT
	.hword 0x0
		
LookUp:
	.byte look_up
	.byte 0xFE
	
LookDown:
	.byte look_down
	.byte 0xFE
	
LookLeft:
	.byte look_left
	.byte 0xFE
	
LookRight:
	.byte look_right
	.byte 0xFE

WalkUp3:
	.byte walk_up
	.byte walk_up
	.byte walk_up
	.byte 0xFE

WalkDown:
	.byte walk_down
	.byte 0xFE

WalkDown3:
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte 0xFE

WalkRight:
	.byte walk_right
	.byte 0xFE

WalkLeft:
	.byte walk_left
	.byte 0xFE
	
WalkLeft2:
	.byte walk_left
	.byte walk_left
	.byte 0xFE
	
WalkLeft3:
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte 0xFE
	
WalkRight2:
	.byte walk_right
	.byte walk_right
	.byte 0xFE	
	
WalkRight3:
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte 0xFE	

QuestionMark:
	.byte 0x63
	.byte 0xFE

GavinMove1:
	.byte walk_left
	.byte walk_down
	.byte 0xFE

GavinMove2:
	.byte 0x4C
	.byte walk_up
	.byte 0x4D
	.byte 0xFE

PlayerWalkToGavin1:
	.byte walk_right
	.byte 0xFE

PlayerWalkToGavin2:
	.byte walk_right
	.byte walk_up
	.byte walk_right
	.byte 0xFE

GavinNotice:
	.byte look_left
	.byte 0x19
	.byte exclaim
	.byte 0xFE
	
ExclaimGeneral:
	.byte exclaim
	.byte 0xFE

GavinsMadDash:
	.byte 0x31
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x32
	.byte look_right
	.byte 0xFE

SibGoesToFloor4:
	.byte walk_down
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_up
	.byte walk_left
	.byte 0xFE

GavinsSteppy:
	.byte 0x24
	.byte 0x24
	.byte 0xFE

GavinsJumps:
	.byte 0x54
	.byte 0xFE

SibsSteppy:
	.byte 0x27
	.byte 0x27
	.byte 0xFE

SibHop:
	.byte 0x7E
	.byte 0xFE

RocketSteppyUp:
	.byte 0x26
	.byte 0x26
	.byte 0xFE

GavinLeavesTheWayHeCame:
	.byte 0x31
	.byte 0x34
	.byte 0x34
	.byte 0x34
	.byte 0x34
	.byte 0x32
	.byte 0x34
	.byte 0x34
	.byte 0xFE
	
SibRoofMove:
	.byte walk_left
	.byte walk_down
	.byte walk_left
	.byte 0xFE

GruntChieLeaves1:
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_right
	.byte walk_right
	.byte 0xFE

GruntChieLeaves2:
	.byte 0x2C
	.byte 0x2C
	.byte 0x2C
	.byte 0x2C
	.byte 0x2C
	.byte 0x32
	.byte 0x34
	.byte 0x34
	.byte 0x34
	.byte 0x34
	.byte 0x35
	.byte 0x34
	.byte 0xFE

RocketPirouette1:
	.byte 0x97
	.byte 0x97
	.byte 0x97
	.byte 0x94
	.byte 0x94
	.byte 0x94
	.byte 0x94
	.byte look_right
	.byte 0xFE
	
RocketPirouette2:
	.byte 0x97
	.byte 0x97
	.byte 0x97
	.byte 0x94
	.byte 0x94
	.byte 0x94
	.byte 0x97
	.byte look_right
	.byte 0xFE

MottoAnimOne:
	.byte 0x97
	.byte 0x96
	.byte 0xFE

MottoAnim2_1:
	.byte 0x95
	.byte 0x95
	.byte look_down
	.byte 0xFE

MottoAnim2_2:
	.byte 0x95
	.byte 0x97
	.byte look_down
	.byte 0xFE

MottoAnim3_Right:
	.byte 0x97
	.byte look_down
	.byte 0xFE	
	
MottoAnim3_Left:
	.byte 0x96
	.byte look_down
	.byte 0xFE

MottoRetract:
	.byte 0x4C
	.byte walk_up
	.byte 0x4D
	.byte 0xFE

JamesJump:
	.byte 0x55
	.byte 0xFE
	
PelipperSweep:
	.byte 0x38
	.byte 0x38
	.byte 0x38
	.byte 0x38
	.byte 0x38
	.byte 0x38
	.byte 0x38
	.byte 0x38
	.byte 0x38
	.byte 0xFE

PushedByPelipper:
	.byte 0x97
	.byte 0x97
	.byte 0x97
	.byte look_left
	.byte 0xFE

PelipperBails:
	.byte 0x35
	.byte 0x35
	.byte 0x35
	.byte 0x35
	.byte 0x35
	.byte 0x35
	.byte 0x35
	.byte 0xFE

Down2Gacha:
	.byte 0x31
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte look_up
	.byte 0xFE
	
PushedByTR:
	.byte 0x4C
	.byte 0x37
	.byte 0x35
	.byte 0x4D
	.byte 0xFE

JessieInPosition:
	.byte walk_right
	.byte look_down
	.byte 0xFE

JamesInPosition1:
	.byte walk_right
	.byte look_up
	.byte 0xFE

JamesInPosition2:
	.byte look_down
	.byte 0xFE

RocketTanty:
	.byte 0x25
	.byte 0x25
	.byte 0x25
	.byte 0xFE

JessieShoveReady:
	.byte walk_left
	.byte walk_up
	.byte look_right
	.byte 0xFE
	
JamesShoveReady:
	.byte walk_up
	.byte look_left
	.byte 0xFE
	
PrizeMasterShove:
	.byte 0x4C
	.byte 0xF
	.byte 0x4D
	.byte 0xFE
	
PrizeMasterItselfShove:
	.byte 0x4C
	.byte 0xF
	.byte 0x4D
	.byte 0xFE

SibWalksOut:
	.byte walk_up
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte 0xFE
