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
	
.global EventScript_VermilionCity_CitySign
EventScript_VermilionCity_CitySign:
	msgbox gText_Vermilion_City_Sign MSG_SIGN
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

.global EventScript_VermilionCity_FanClubOwner
EventScript_VermilionCity_FanClubOwner:
	msgbox gText_VermilionCity_FanClubOwner MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_Sceptile
EventScript_VermilionCity_NPC_Sceptile:
	cry SPECIES_SCEPTILE 0x0
	msgbox gText_VermilionCity_Sceptile MSG_FACE
	end	

.global EventScript_VermilionCity_NPC_Yamper
EventScript_VermilionCity_NPC_Yamper:
	cry SPECIES_YAMPER 0x0
	msgbox gText_VermilionCity_Yamper MSG_FACE
	end	

.global EventScript_VermilionCity_NPC_SceptileOwner
EventScript_VermilionCity_NPC_SceptileOwner:
	msgbox gText_VermilionCityNPC_SceptileOwner MSG_FACE
	end

.global EventScript_VermilionCity_NPC_YamperOwner
EventScript_VermilionCity_NPC_YamperOwner:
	msgbox gText_VermilionCityNPC_YamperOwner MSG_FACE
	end

