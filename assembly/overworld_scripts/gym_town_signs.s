.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_VISQUEZ_IS_HOME, 0x995

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionCity_CitySign
EventScript_VermilionCity_CitySign:
	msgbox gText_Vermilion_City_Sign MSG_SIGN
	end
	
.global EventScript_CeladonCity_CitySign
EventScript_CeladonCity_CitySign:
	msgbox gText_Celadon_City_Sign MSG_SIGN
	end
	
.global EventScript_CeruleanCity_CitySign
EventScript_CeruleanCity_CitySign:
	msgbox gText_Cerulean_City_Sign MSG_SIGN
	end

.global EventScript_SaffronCity_CitySign
EventScript_SaffronCity_CitySign:
	msgbox gText_Saffron_City_Sign MSG_SIGN
	end
	
.global EventScript_LavenderTown_CitySign
EventScript_LavenderTown_CitySign:
	msgbox gText_Lavender_Town_Sign MSG_SIGN
	end

.global EventScript_PewterCity_CitySign
EventScript_PewterCity_CitySign:
	msgbox gText_Pewter_City_Sign MSG_SIGN
	end
	
.global EventScript_ViridianCity_CitySign
EventScript_ViridianCity_CitySign:
	msgbox gText_Viridian_City_Sign MSG_SIGN
	end
	
.global EventScript_PalletCity_CitySign
EventScript_PalletCity_CitySign:
	msgbox gText_Pallet_City_Sign MSG_SIGN
	end
	
.global EventScript_CinnabarIsland_CitySign
EventScript_CinnabarIsland_CitySign:
	msgbox gText_Cinnabar_Island_Sign MSG_SIGN
	end
	
.global EventScript_FuchsiaCity_CitySign
EventScript_FuchsiaCity_CitySign:
	msgbox gText_Fuchsia_City_Sign MSG_SIGN
	end

.global EventScript_IndigoPlateau_CitySign
EventScript_IndigoPlateau_CitySign:
	msgbox gText_Indigo_Plateau_Sign MSG_SIGN
	end

.global EventScript_OneIsland_Sign
EventScript_OneIsland_Sign:
	msgbox gText_One_Island_Sign MSG_SIGN
	end
	
.global EventScript_TwoIsland_Sign
EventScript_TwoIsland_Sign:
	msgbox gText_Two_Island_Sign MSG_SIGN
	end	
	
.global EventScript_ThreeIsland_Sign
EventScript_ThreeIsland_Sign:
	msgbox gText_Three_Island_Sign MSG_SIGN
	end	
	
.global EventScript_FourIsland_Sign
EventScript_FourIsland_Sign:
	msgbox gText_Four_Island_Sign MSG_SIGN
	end
	
.global EventScript_FiveIsland_Sign
EventScript_FiveIsland_Sign:
	msgbox gText_Five_Island_Sign MSG_SIGN
	end
	
.global EventScript_SixIsland_Sign
EventScript_SixIsland_Sign:
	msgbox gText_Six_Island_Sign MSG_SIGN
	end
	
.global EventScript_SevenIsland_Sign
EventScript_SevenIsland_Sign:
	msgbox gText_Seven_Island_Sign MSG_SIGN
	end

.global EventScript_GymSignVermilion
EventScript_GymSign_Vermilion:
	checkflag FLAG_VISQUEZ_IS_HOME
	if 0x1 _goto EventScript_GymSignVermilion_2
	msgbox gText_Vermilion_Gym_Sign_1 MSG_SIGN
	end

EventScript_GymSignVermilion_2:
	msgbox gText_Vermilion_Gym_Sign_2 MSG_SIGN
	end
	
EventScript_GymSign_Celadon:
	msgbox gText_Celadon_Gym_Sign MSG_SIGN
	end
	
EventScript_GymSign_Cerulean:
	msgbox gText_Cerulean_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Saffron:
	msgbox gText_Saffron_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Pewter:
	msgbox gText_Pewter_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Cinnabar:
	msgbox gText_Cinnabar_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Fuchsia:
	msgbox gText_Fuchsia_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Viridian:
	msgbox gText_Viridian_Gym_Sign MSG_SIGN
	end
