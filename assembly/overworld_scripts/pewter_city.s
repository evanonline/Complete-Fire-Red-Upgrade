.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_SMART_STRIKE_TM, 0x992

.global EventScript_PewterCity_HouseHusband1
EventScript_PewterCity_HouseHusband1:
	msgbox gText_PewterHouseHusband1 MSG_FACE
	release
	end
	
.global EventScript_PewterCity_HouseHusband2
EventScript_PewterCity_HouseHusband2:
	lock
	faceplayer
	checkflag FLAG_SMART_STRIKE_TM
	if 0x1 _goto EventScript_PewterCity_HouseHusband2_AfterSmartStrike
	msgbox gText_PewterHouseHusband2BeforeTM MSG_KEEPOPEN
	fanfare 0x101
	msgbox gText_RecieveSmartStrike MSG_KEEPOPEN
	waitfanfare 
	additem ITEM_TM106 0x1
	setflag FLAG_SMART_STRIKE_TM
	msgbox gText_AfterGaveTM106 MSG_NORMAL
	release
	end

EventScript_PewterCity_HouseHusband2_AfterSmartStrike:
	msgbox gText_PewterHouseHusband2AfterTM MSG_FACE
	release
	end

.global EventScript_PewterCity_SickGrandpa
EventScript_PewterCity_SickGrandpa:
	lockall
	msgbox gText_PewterCity_SickGrandpa MSG_NORMAL
	releaseall
	end	

.global EventScript_PewterCity_GrandpasKid
EventScript_PewterCity_GrandpasKid:
	msgbox gText_PewterCity_GrandpasKid MSG_FACE
	end	
	
.global EventScript_PewterCity_PewterMunchies
EventScript_PewterCity_PewterMunchies:
	msgbox gText_PewterMunchiesNPC MSG_FACE
	end
	
.global EventScript_PewterCity_PokeMartToiletWeirdo
EventScript_PewterCity_PokeMartToiletWeirdo:
	msgbox gText_PewterToiletWeirdoNPC MSG_FACE
	end

.global EventScript_PewterCity_GymTourGuide
EventScript_PewterCity_GymTourGuide:
	checkflag 0x2E
	if SET _goto TourGuideAfter
	call TourGuideUniversalMovement
	applymovement 0x5 GuidePlayerDownwardsWalk0
	pause 0x1
	applymovement 0xFF GuidePlayerDownwardsWalk0
	waitmovement 0x0
	applymovement 0x5 LookRight
	applymovement 0xFF LookLeft
	waitmovement 0x0
	pause 0x7
	goto PewterTour
	end

.global EventScript_PewterCity_GymTourGuide_Tile1
EventScript_PewterCity_GymTourGuide_Tile1:
	applymovement 0xFF LookUp
	call TourGuideUniversalMovement
	applymovement 0x5 GuidePlayerDownwardsWalk0
	pause 0x1
	waitmovement 0x0
	applymovement 0x5 LookRight
	applymovement 0xFF LookLeft
	waitmovement 0x0
	pause 0x7
	goto PewterTour
	end

.global EventScript_PewterCity_GymTourGuide_Tile2
EventScript_PewterCity_GymTourGuide_Tile2:
	applymovement 0xFF LookUp
	call TourGuideUniversalMovement
	applymovement 0x5 GuidePlayerDownwardsWalk0
	waitmovement 0x0
	pause 0x1
	applymovement 0xFF WalkUpOne
	waitmovement 0x0
	applymovement 0x5 LookRight
	applymovement 0xFF LookLeft
	waitmovement 0x0
	pause 0x7
	goto PewterTour
	end

.global EventScript_PewterCity_GymTourGuide_Tile3
EventScript_PewterCity_GymTourGuide_Tile3:
	applymovement 0xFF LookUp
	call TourGuideUniversalMovement
	applymovement 0x5 GuidePlayerDownwardsWalk0
	pause 0x1
	applymovement 0xFF WalkUpTwo
	waitmovement 0x0
	applymovement 0x5 LookRight
	applymovement 0xFF LookLeft
	waitmovement 0x0
	pause 0x7
	goto PewterTour
	end

TourGuideUniversalMovement:
	pause 0xC
	sound 0x15
	applymovement 0x5 GymGuideLooksAtYou
	pause 0x12
	msgbox gText_PewterCity_TourGuide_FirstTime_1 MSG_NORMAL
	setvar 0x406C 0x1
	pause 0x2
	playsong 0x110 0x0
	return
	
PewterTour:
	pause 0x5
	applymovement 0x5 TourJokeFunnyGuide
	applymovement 0xFF TourJokeFunnyPlayer
	waitmovement 0x0
	pause 0x6
	applymovement 0x5 LookRight
	msgbox gText_PewterCity_TourGuide_FirstTime_2 MSG_NORMAL
	applymovement 0x5 TourGuideLeaves
	waitmovement 0x0
	fadedefault
	applymovement 0xFF LookDown
	pause 0xC
	movesprite2 0x5 0x2A 0x14
	setflag 0x2E
	releaseall
	end
	
TourGuideAfter:
	msgbox gText_PewterCity_TourGuide_AfterGuided MSG_FACE
	end
	
LookLeft:
	.byte look_left
	.byte 0xFE

LookRight:
	.byte look_right
	.byte 0xFE

LookUp:
	.byte look_up
	.byte 0xFE

LookDown:
	.byte look_down
	.byte 0xFE
	
GymGuideLooksAtYou:
	.byte 0x4A
	.byte exclaim
	.byte 0xFE

GuidePlayerDownwardsWalk0:
	.byte walk_left
	.byte walk_down
	.byte 0xFE
	
WalkUpOne:
	.byte walk_up
	.byte 0xFE

WalkUpTwo:
	.byte walk_up
	.byte walk_up
	.byte 0xFE

TourGuideLeaves:
	.byte walk_down
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte 0xFE
	
TourJokeFunnyGuide:
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
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
	.byte walk_left
	.byte walk_up
	.byte walk_up
	.byte walk_up
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_down
	.byte walk_down
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte 0xFE

TourJokeFunnyPlayer:
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
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
	.byte walk_left
	.byte walk_up
	.byte walk_up
	.byte walk_up
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_down
	.byte walk_down
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte walk_left
	.byte 0xFE
