.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route4_Pokecenter_LeftFool
EventScript_Route4_Pokecenter_LeftFool:
	lockall
	msgbox gText_Route4_Pokecenter_Fool_Left MSG_NORMAL
	releaseall
	end
	
.global EventScript_Route4_Pokecenter_RightFool
EventScript_Route4_Pokecenter_RightFool:
	lockall
	msgbox gText_Route4_Pokecenter_Fool_Right MSG_NORMAL
	releaseall
	end
	