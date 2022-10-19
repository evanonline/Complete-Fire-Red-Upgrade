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

.global EventScript_SaffronCity_CitySign
EventScript_SaffronCity_CitySign:
	msgbox gText_Saffron_City_Sign MSG_SIGN
	end
