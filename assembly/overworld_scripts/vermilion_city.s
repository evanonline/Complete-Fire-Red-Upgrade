.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_VISQUEZ_IS_HOME, 0x995

.global EventScript_GymSignVermilion
EventScript_GymSignVermilion_LtSurge:
	checkflag FLAG_VISQUEZ_IS_HOME
	if 0x1 _goto EventScript_GymSignVermilion_Visquez
	msgbox gText_Vermilion_Gym_Sign_1 MSG_SIGN
	end
	
EventScript_GymSignVermilion_Visquez:
	msgbox gText_Vermilion_Gym_Sign_2 MSG_SIGN
	end

.global EventScript_VermilionCity_NPC_Tree
EventScript_VermilionCity_NPC_Tree:
	msgbox gText_VermilionCityNPC_CutTreeGone MSG_FACE
	end

.global EventScript_VermilionCity_NPC_Sitizen
EventScript_VermilionCity_NPC_Sitizen:
	msgbox gText_VermilionCityNPC_Sitizen MSG_FACE
	end

.global EventScript_VermilionCity_NPC_NostalgiaKid
EventScript_VermilionCity_NPC_NostalgiaKid:
	msgbox gText_VermilionCityNPC_Nostalgic MSG_FACE
	end
