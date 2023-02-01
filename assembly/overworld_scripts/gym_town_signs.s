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
	msgboxsign
	msgbox gText_Vermilion_City_Sign MSG_SIGN
	end
	
.global EventScript_CeladonCity_CitySign
EventScript_CeladonCity_CitySign:
	msgboxsign
	msgbox gText_Celadon_City_Sign MSG_SIGN
	end
	
.global EventScript_CeruleanCity_CitySign
EventScript_CeruleanCity_CitySign:
	msgboxsign
	msgbox gText_Cerulean_City_Sign MSG_SIGN
	end

.global EventScript_SaffronCity_CitySign
EventScript_SaffronCity_CitySign:
	msgboxsign
	msgbox gText_Saffron_City_Sign MSG_SIGN
	end
	
.global EventScript_LavenderTown_CitySign
EventScript_LavenderTown_CitySign:
	msgboxsign
	msgbox gText_Lavender_Town_Sign MSG_SIGN
	end

.global EventScript_PewterCity_CitySign
EventScript_PewterCity_CitySign:
	msgboxsign
	msgbox gText_Pewter_City_Sign MSG_SIGN
	end
	
.global EventScript_ViridianCity_CitySign
EventScript_ViridianCity_CitySign:
	msgboxsign
	msgbox gText_Viridian_City_Sign MSG_SIGN
	end
	
.global EventScript_PalletCity_CitySign
EventScript_PalletCity_CitySign:
	msgboxsign
	msgbox gText_Pallet_City_Sign MSG_SIGN
	end
	
.global EventScript_CinnabarIsland_CitySign
EventScript_CinnabarIsland_CitySign:
	msgboxsign
	msgbox gText_Cinnabar_Island_Sign MSG_SIGN
	end
	
.global EventScript_FuchsiaCity_CitySign
EventScript_FuchsiaCity_CitySign:
	msgboxsign
	msgbox gText_Fuchsia_City_Sign MSG_SIGN
	end

.global EventScript_IndigoPlateau_CitySign
EventScript_IndigoPlateau_CitySign:
	msgboxsign
	msgbox gText_Indigo_Plateau_Sign MSG_SIGN
	end

.global EventScript_OneIsland_Sign
EventScript_OneIsland_Sign:
	msgboxsign
	msgbox gText_One_Island_Sign MSG_SIGN
	end
	
.global EventScript_TwoIsland_Sign
EventScript_TwoIsland_Sign:
	msgboxsign
	msgbox gText_Two_Island_Sign MSG_SIGN
	end	
	
.global EventScript_ThreeIsland_Sign
EventScript_ThreeIsland_Sign:
	msgboxsign
	msgbox gText_Three_Island_Sign MSG_SIGN
	end	
	
.global EventScript_FourIsland_Sign
EventScript_FourIsland_Sign:
	msgboxsign
	msgbox gText_Four_Island_Sign MSG_SIGN
	end
	
.global EventScript_FiveIsland_Sign
EventScript_FiveIsland_Sign:
	msgboxsign
	msgbox gText_Five_Island_Sign MSG_SIGN
	end
	
.global EventScript_SixIsland_Sign
EventScript_SixIsland_Sign:
	msgboxsign
	msgbox gText_Six_Island_Sign MSG_SIGN
	end
	
.global EventScript_SevenIsland_Sign
EventScript_SevenIsland_Sign:
	msgboxsign
	msgbox gText_Seven_Island_Sign MSG_SIGN
	end

.global EventScript_GymSignVermilion
EventScript_GymSign_Vermilion:
	checkflag FLAG_VISQUEZ_IS_HOME
	if 0x1 _goto EventScript_GymSignVermilion_2
	msgboxsign
	msgbox gText_Vermilion_Gym_Sign_1 MSG_SIGN
	end

EventScript_GymSignVermilion_2:
	msgboxsign
	msgbox gText_Vermilion_Gym_Sign_2 MSG_SIGN
	end
	
EventScript_GymSign_Celadon:
	msgboxsign
	msgbox gText_Celadon_Gym_Sign MSG_SIGN
	end
	
EventScript_GymSign_Cerulean:
	msgboxsign
	msgbox gText_Cerulean_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Saffron:
	msgboxsign
	msgbox gText_Saffron_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Pewter:
	msgboxsign
	msgbox gText_Pewter_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Cinnabar:
	msgboxsign
	msgbox gText_Cinnabar_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Fuchsia:
	msgboxsign
	msgbox gText_Fuchsia_Gym_Sign MSG_SIGN
	end

EventScript_GymSign_Viridian:
	msgboxsign
	msgbox gText_Viridian_Gym_Sign MSG_SIGN
	end
