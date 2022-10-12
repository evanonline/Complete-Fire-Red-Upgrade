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

.global EventScript_IcePath_DirectionsSign
EventScript_IcePath_DirectionsSign:
	msgbox gText_IcedPath_DirectionsSign MSG_SIGN
	end
