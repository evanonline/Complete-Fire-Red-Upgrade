.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route5_ClownJeeves
EventScript_Route5_ClownJeeves:
    trainerbattle0 0x0 34 0x0 gText_Route5_ClownJeeves_Before gText_Route5_ClownJeeves_Lose
	special2 LASTRESULT 0x39
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_Route5_ClownJeeves_Rematch
    msgbox gText_Route5_ClownJeeves_After MSG_NORMAL
    end
	
EventScript_Route5_ClownJeeves_Rematch:
	trainerbattle5 0x5 35 0x0 gText_Route5_ClownJeeves_BeforeRematch gText_Route5_ClownJeeves_LoseRematch
	msgbox gText_maruyamatest2 MSG_NORMAL
	end

.global EventScript_Route5_ZakBagon
EventScript_Route5_ZakBagon:
	msgbox gText_Route5_ZakBagonBeforeMeeting MSG_FACE
	end
	
.global EventScript_Route5_SecondaryGuy
EventScript_Route5_SecondaryGuy:
	msgbox gText_Route5_SecondaryMember MSG_FACE
	end
	
.global EventScript_Route5_CameraMan
EventScript_Route5_CameraMan:
	msgbox gText_Route5_CameraMan MSG_FACE
	end
	
.global EventScript_Route5_ExternalOperator
EventScript_Route5_ExternalOperator:
	msgbox gText_Route5_ExternalOperator MSG_FACE
	end
	