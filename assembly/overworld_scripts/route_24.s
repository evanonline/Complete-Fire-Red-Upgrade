.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route24_LassJarabe
EventScript_Route24_LassJarabe:
    trainerbattle0 0x0 0x21 0x0 gText_Route24_LassJarabe_Before gText_Route24_LassJarabe_Lose
    msgbox gText_Route24_LassJarabe_After MSG_FACE
    end

.global EventScript_Route24_BirdkeeperAntipasto
EventScript_Route24_BirdkeeperAntipasto:
    trainerbattle0 0x0 0x22 0x0 gText_Route24_BirdkeeperAntipasto_Before gText_Route24_BirdkeeperAntipasto_Lose
    msgbox gText_Route24_BirdkeeperAntipasto_After MSG_FACE
    end

.global EventScript_Route24_YoungsterSeltzer
EventScript_Route24_YoungsterSeltzer:
    trainerbattle0 0x0 0x23 0x0 gText_Route24_YoungsterSeltzer_Before gText_Route24_YoungsterSeltzer_Lose
    msgbox gText_Route24_YoungsterSeltzer_After MSG_FACE
    end

.global EventScript_Route24_BattleGirlMaslina
EventScript_Route24_BattleGirlMaslina:
    trainerbattle0 0x0 0x24 0x0 gText_Route24_BattleGirlMaslina_Before gText_Route24_BattleGirlMaslina_Lose
    msgbox gText_Route24_BattleGirlMaslina_After MSG_FACE
    end
	
.global EventScript_Route24_PicnickerOatmeal
EventScript_Route24_PicnickerOatmeal:
    trainerbattle0 0x0 0x25 0x0 gText_Route24_PicnickerOatmeal_Before gText_Route24_PicnickerOatmeal_Lose
    msgbox gText_Route24_PicnickerOatmeal_After MSG_FACE
    end
