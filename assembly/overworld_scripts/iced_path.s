.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_IcedPath_ExplainNPC1
EventScript_IcedPath_ExplainNPC1:
	msgbox gText_IcedPath_IcePathExplain1 MSG_FACE
	end

.global EventScript_IcedPath_ExplainNPC2
EventScript_IcedPath_ExplainNPC2:
	msgbox gText_IcedPath_IcePathExplain2 MSG_FACE
	end

.global EventScript_IcedPath_DirectionsSign
EventScript_IcedPath_DirectionsSign:
	msgbox gText_IcedPath_DirectionsSign MSG_SIGN
	end

.global EventScript_IcedPath_DiveHintNPC
EventScript_IcedPath_DiveHintNPC:
	msgbox gText_IcedPath_DiveHint MSG_SIGN
	end
	
.global EventScript_IcedPath_SwimmerFrancine
EventScript_IcedPath_SwimmerFrancine:
	trainerbattle0 0x0 0x5 0x0 gText_IcedPath_SwimmerFrancine_Before gText_IcedPath_SwimmerFrancine_Lose
    msgbox gText_IcedPath_SwimmerFrancine_After MSG_NORMAL
	end

.global EventScript_IcedPath_CamperTroy
EventScript_IcedPath_CamperTroy:
	trainerbattle0 0x0 0x6 0x0 gText_IcedPath_CamperTroy_Before gText_IcedPath_CamperTroy_Lose
    msgbox gText_IcedPath_CamperTroy_After MSG_NORMAL
	end

.global EventScript_IcedPath_CamperRoss
EventScript_IcedPath_CamperRoss:
	trainerbattle0 0x0 0x7 0x0 gText_IcedPath_CamperRoss_Before gText_IcedPath_CamperRoss_Lose
    msgbox gText_IcedPath_CamperRoss_After MSG_NORMAL
	end
