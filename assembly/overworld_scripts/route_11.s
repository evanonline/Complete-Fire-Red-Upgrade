.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

EventScript_Route11_SnorlaxRuinManiac:
	msgbox gText_Route11_SnorlaxRuinManiac1 MSG_NORMAL
	end

EventScript_Route11_Snorlax:
	cry SPECIES_SNORLAX 0x0
	msgbox gText_Route11_SnorlaxMumbles MSG_NORMAL
	end
	