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
	msgbox gText_PewterHouseHusband2BeforeTM MSG_FACE
	fanfare 0x101
	msgbox gText_RecieveSmartStrike MSG_FACE
	waitfanfare 
	additem ITEM_TM106 0x1
	setflag FLAG_SMART_STRIKE_TM
	msgbox gText_AfterGaveTM106 MSG_FACE
	release
	end

EventScript_PewterCity_HouseHusband2_AfterSmartStrike:
	msgbox gText_PewterHouseHusband2AfterTM MSG_FACE
	release
	end
	