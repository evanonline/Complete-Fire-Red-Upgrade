.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route25_BackpackerJaney
EventScript_Route25_BackpackerJaney:
    trainerbattle0 0x0 40 0x0 gText_Route25_BackpackerJaney_Before gText_Route25_BackpackerJaney_Lose
    msgbox gText_Route25_BackpackerJaney_After MSG_FACE
    end

.global EventScript_Route25_LassIphigenia
EventScript_Route25_LassIphigenia:
    trainerbattle0 0x0 41 0x0 gText_Route25_LassIphigenia_Before gText_Route25_LassIphigenia_Lose
    msgbox gText_Route25_LassIphigenia_After MSG_FACE
    end

.global EventScript_Route25_PokeKidJamie
EventScript_Route25_PokeKidJamie:
    trainerbattle0 0x0 42 0x0 gText_Route25_PokeKidJamie_Before gText_Route25_PokeKidJamie_Lose
    msgbox gText_Route25_PokeKidJamie_After MSG_FACE
    end
