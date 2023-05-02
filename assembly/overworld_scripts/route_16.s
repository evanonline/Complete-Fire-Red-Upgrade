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

.global EventScript_Route16_CynthiasRecordPlayer
EventScript_Route16_CynthiasRecordPlayer:
	msgbox gText_Route16_CynthiasRecordPlayer MSG_NORMAL
	end
	
.global EventScript_Route16_CynthiasSink
EventScript_Route16_CynthiasSink:
	msgbox gText_Route16_CynthiasSink MSG_NORMAL
	end
	
.global EventScript_Route16_CynthiasTV
EventScript_Route16_CynthiasTV:
	msgbox gText_Route16_CynthiasTV MSG_KEEPOPEN
	signmsg
	msgbox gText_Route16_RoxieMsg MSG_SIGN
	end

.global EventScript_Route16_OldGuy
EventScript_Route16_OldGuy:
	checkflag 0x96C
	if SET _goto EventScript_Route16_OldGuyAngry
	msgbox gText_Route16_OldGuyInGatehouse MSG_FACE
	end
	
EventScript_Route16_OldGuyAngry:
	msgbox gText_Route16_OldGuyInGatehouse_Angry MSG_FACE
	end

.global EventScript_Route16_LeftBinoculars
EventScript_Route16_LeftBinoculars:
	msgbox gText_Route16_LeftBinoculars MSG_NORMAL
	end

.global EventScript_Route16_RightBinoculars
EventScript_Route16_RightBinoculars:
	msgbox gText_Route16_RightBinoculars MSG_NORMAL
	end
	
.global EventScript_Route16_CyclingRoadClosed
EventScript_Route16_CyclingRoadClosed:
	call BlockCyclingRoad_1
	call BlockCyclingRoad_2
	end
	
.global EventScript_Route16_CyclingRoadClosed_WalkUp1
EventScript_Route16_CyclingRoadClosed_WalkUp1:
	call BlockCyclingRoad_1
	applymovement 0xFF WalkUp1
	waitmovement 0x0
	call BlockCyclingRoad_2
	end
	
.global EventScript_Route16_CyclingRoadClosed_WalkUp2
EventScript_Route16_CyclingRoadClosed_WalkUp2:
	call BlockCyclingRoad_1
	applymovement 0xFF WalkUp2
	waitmovement 0x0
	call BlockCyclingRoad_2
	end
	
BlockCyclingRoad_1:
	lockall
	setvar 0x4001 0x0
	msgbox gText_Route16_GuardStops MSG_KEEPOPEN
	applymovement 0xFF LookUp
	waitmovement 0x0
	return

BlockCyclingRoad_2:
	pause 0x7
	msgbox gText_Route16_DontComeInCyclingRoad MSG_NORMAL
	applymovement 0xFF WalkRight
	waitmovement 0x0
	releaseall
	return

WalkRight:
	.byte walk_right
	.byte 0xFE
	
WalkUp1:
	.byte walk_up
	.byte 0xFE

WalkUp2:
	.byte walk_up
	.byte walk_up
	.byte 0xFE

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
