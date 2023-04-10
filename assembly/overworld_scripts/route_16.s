.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route16_CyclingRoadSign
EventScript_Route16_CyclingRoadSign:
	signmsg
	msgbox gText_Route16_CyclingRoad_Sign MSG_SIGN
	end

.global EventScript_Route16_Gatehouse_TimeReminder
EventScript_Route16_Gatehouse_TimeReminder:
	msgbox gText_Route16_Gatehouse_TimeReminder MSG_FACE
	end
	
.global EventScript_Route16_Gatehouse_AthletesFoot
EventScript_Route16_Gatehouse_AthletesFoot:
	msgbox gText_Route16_Gatehouse_AthletesFoot MSG_FACE
	end
	
.global EventScript_Route16_Gatehouse_FuchsiaSad
EventScript_Route16_Gatehouse_FuchsiaSad:
	msgbox gText_Route16_Gatehouse_FuchsiaSad MSG_FACE
	end

LookLeft:
	.byte look_left
	.byte 0xFE	

LookRight:
	.byte look_right
	.byte 0xFE	
	
LookDown:
	.byte look_down
	.byte 0xFE
	
LookUp:
	.byte look_up
	.byte 0xFE
