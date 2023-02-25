.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_SaffronCity_ThrohRanger
EventScript_SaffronCity_ThrohRanger:
	msgbox gText_SaffronCity_ThrohRanger MSG_FACE
	end
	
.global EventScript_SaffronCity_ThrohGranny
EventScript_SaffronCity_ThrohGranny:
	msgbox gText_SaffronCity_ThrohGranny MSG_FACE
	end
	
.global EventScript_SaffronCity_Throh1
EventScript_SaffronCity_Throh1:
	cry SPECIES_THROH 0x0
	msgbox gText_SaffronCity_Throh MSG_FACE
	end

.global EventScript_SaffronCity_Throh2
EventScript_SaffronCity_Throh2:
	cry SPECIES_THROH 0x0
	msgbox gText_SaffronCity_Throh2 MSG_FACE
	end
	
Guard_LooksRightMovesDown:
	applymovement 0xFF EventScript_Saffron_LookRight
	msgbox gText_SaffronCity_GuardGateFirst MSG_NORMAL
	applymovement 0xFF EventScript_Saffron_WalkDown
	waitmovement 0x0
	end

Guard_LooksLeftMovesUp:
	applymovement 0xFF EventScript_Saffron_LookLeft
	msgbox gText_SaffronCity_GuardGateFirst MSG_NORMAL
	applymovement 0xFF EventScript_Saffron_WalkUp
	waitmovement 0x0
	end
	
Guard_LooksUpMovesLeft:
	applymovement 0xFF EventScript_Saffron_LookUp
	msgbox gText_SaffronCity_GuardGateFirst MSG_NORMAL
	applymovement 0xFF EventScript_Saffron_WalkLeft
	waitmovement 0x0
	end
	
Guard_LooksUpMovesRight:
	applymovement 0xFF EventScript_Saffron_LookUp
	msgbox gText_SaffronCity_GuardGateFirst MSG_NORMAL
	applymovement 0xFF EventScript_Saffron_WalkRight
	waitmovement 0x0
	end

EventScript_Saffron_WalkDown:
	.byte walk_down
	.byte 0xFE

EventScript_Saffron_WalkUp:
	.byte walk_up
	.byte 0xFE

EventScript_Saffron_WalkLeft:
	.byte walk_left
	.byte 0xFE

EventScript_Saffron_WalkRight:
	.byte walk_right
	.byte 0xFE
	
EventScript_Saffron_LookDown:
	.byte look_down
	.byte 0xFE

EventScript_Saffron_LookUp:
	.byte look_up
	.byte 0xFE

EventScript_Saffron_LookLeft:
	.byte look_left
	.byte 0xFE

EventScript_Saffron_LookRight:
	.byte look_right
	.byte 0xFE	
	