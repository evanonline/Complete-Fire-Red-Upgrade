.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route7_InfielderDelbert
EventScript_Route7_InfielderDelbert:
    trainerbattle0 0x0 0xC 0x0 gText_Route7_InfielderDelbert_Before gText_Route7_InfielderDelbert_Lose
    msgbox gText_Route7_InfielderDelbert_After MSG_FACE
    end

