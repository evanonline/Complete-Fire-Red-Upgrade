.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_VISQUEZ_IS_HOME, 0x995

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionCity_NPC_Tree
EventScript_VermilionCity_NPC_Tree:
	msgbox gText_VermilionCityNPC_CutTreeGone MSG_FACE
	end

.global EventScript_VermilionCity_NPC_Pollution
EventScript_VermilionCity_NPC_Pollution:
	msgbox gText_VermilionCityNPC_Pollution MSG_FACE
	end

.global EventScript_VermilionCity_NPC_Sitizen
EventScript_VermilionCity_NPC_Sitizen:
	msgbox gText_VermilionCityNPC_Sitizen MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_SailorSSAnne
EventScript_VermilionCity_NPC_SailorSSAnne:
	msgbox gText_VermilionCityNPC_SailorSSAnne MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_CalebsFriend
EventScript_VermilionCity_NPC_CalebsFriend:
	msgbox gText_VermilionCityNPC_CalebVsAnnihilape MSG_FACE
	end	

.global EventScript_VermilionCity_NPC_CoolLass
EventScript_VermilionCity_NPC_CoolLass:
	msgbox gText_VermilionCityNPC_CoolLass MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_NamesHater
EventScript_VermilionCity_NPC_NamesHater:
	msgbox gText_VermilionCityNPC_NamesHater MSG_FACE
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

.global EventScript_VermilionCity_NPC_FishingGuru
EventScript_VermilionCity_NPC_FishingGuru:
	msgbox gText_VermilionCityNPC_FishingGuru MSG_FACE
	end

.global EventScript_VermilionCity_NPC_TypesSame
EventScript_VermilionCity_NPC_TypesSame:
	msgbox gText_VermilionCityNPC_TypesSame MSG_FACE
	end

.global EventScript_VermilionCity_NPC_HighExpectations
EventScript_VermilionCity_NPC_HighExpectations:
	msgbox gText_VermilionCityNPC_HighExpectations MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_PaldeaSandwichCritic
EventScript_VermilionCity_NPC_PaldeaSandwichCritic:
	msgbox gText_VermilionCityNPC_PaldeaSandwichCritic MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_PaldeaLetter
EventScript_VermilionCity_NPC_PaldeaLetter:
	msgbox gText_VermilionCityNPC_PaldeaLetter MSG_SIGN
	end

.global EventScript_VermilionCity_NPC_EvioliteDiscovery
EventScript_VermilionCity_NPC_EvioliteDiscovery:
	msgbox gText_VermilionCityNPC_EvioliteDiscovery MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_SadTinkatonExpert
EventScript_VermilionCity_NPC_SadTinkatonExpert:
	msgbox gText_VermilionCityNPC_SadTinkatonExpert MSG_FACE
	end

.global EventScript_VermilionCity_NPC_Primeape
EventScript_VermilionCity_NPC_Primeape:
	cry SPECIES_PRIMEAPE 0x0
	msgbox gText_VermilionCityNPC_PrimeapeChatter MSG_FACE
	end

.global EventScript_VermilionCity_NPC_TeamRocketRemember
EventScript_VermilionCity_NPC_TeamRocketRemember:
	msgbox gText_VermilionCityNPC_TeamRocketMemory MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_MoneyCountingGirl
EventScript_VermilionCity_NPC_MoneyCountingGirl:
	msgbox gText_VermilionCityNPC_MoneySucks MSG_FACE
	end
		
.global EventScript_VermilionCity_Sign
EventScript_VermilionCity_Sign:
	msgbox gText_Vermilion_City_Sign MSG_SIGN
	end		
	
.global EventScript_VermilionPortDirections_Sign
EventScript_VermilionPortDirections_Sign:
	msgbox gText_VermilionPortSign MSG_SIGN
	end
	
