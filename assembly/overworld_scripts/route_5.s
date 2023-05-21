.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route5_ClownJeeves
EventScript_Route5_ClownJeeves:
    trainerbattle0 0x0 0x20 0x0 gText_Route5_ClownJeeves_Before gText_Route5_ClownJeeves_Lose
    msgbox gText_Route5_ClownJeeves_After MSG_FACE
    end
