.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Route24_LassJarabe
EventScript_Route24_LassJarabe:
    trainerbattle0 0x0 33 0x0 gText_Route24_LassJarabe_Before gText_Route24_LassJarabe_Lose
    msgbox gText_Route24_LassJarabe_After MSG_FACE
    end

.global EventScript_Route24_BirdkeeperAntipasto
EventScript_Route24_BirdkeeperAntipasto:
    trainerbattle0 0x0 21 0x0 gText_Route24_BirdkeeperAntipasto_Before gText_Route24_BirdkeeperAntipasto_Lose
    msgbox gText_Route24_BirdkeeperAntipasto_After MSG_FACE
    end

.global EventScript_Route24_YoungsterSeltzer
EventScript_Route24_YoungsterSeltzer:
    trainerbattle0 0x0 22 0x0 gText_Route24_YoungsterSeltzer_Before gText_Route24_YoungsterSeltzer_Lose
    msgbox gText_Route24_YoungsterSeltzer_After MSG_FACE
    end

.global EventScript_Route24_BattleGirlMaslina
EventScript_Route24_BattleGirlMaslina:
    trainerbattle0 0x0 36 0x0 gText_Route24_BattleGirlMaslina_Before gText_Route24_BattleGirlMaslina_Lose
    msgbox gText_Route24_BattleGirlMaslina_After MSG_FACE
    end
	
.global EventScript_Route24_PicnickerOatmeal
EventScript_Route24_PicnickerOatmeal:
    trainerbattle0 0x0 37 0x0 gText_Route24_PicnickerOatmeal_Before gText_Route24_PicnickerOatmeal_Lose
    msgbox gText_Route24_PicnickerOatmeal_After MSG_FACE
    end
	
.global EventScript_Route24_CamperShane
EventScript_Route24_CamperShane:
    trainerbattle0 0x0 38 0x0 gText_Route24_CamperShane_Before gText_Route24_CamperShane_Lose
    msgbox gText_Route24_CamperShane_After MSG_FACE
    end

.global EventScript_Rival2_Tile1
EventScript_Rival2_Tile1:
	applymovement 0xFF WalkRight
	goto EventScript_Route24_Rival2
	end
	
.global EventScript_Rival2_Tile2
EventScript_Rival2_Tile2:	
	applymovement 0xFF LookRight
	goto EventScript_Route24_Rival2
	end

.global EventScript_Route24_Rival2
EventScript_Route24_Rival2:
	faceplayer
	msgbox gText_Route24_RivalBattle_Before MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Rival2_YesDialogue
	msgbox gText_Route24_RivalBattle_No MSG_NORMAL
	goto EventScript_Rival2Battle
	end
	
EventScript_Rival2_YesDialogue:
	msgbox gText_Route24_RivalBattle_Yes MSG_NORMAL
	goto EventScript_Rival2Battle
	end
	
EventScript_Rival2Battle:
	trainerbattle3 0x3 39 0x0 gText_Route24_Rival_Loss
	msgbox gText_Route24_Rival_AfterBattle MSG_NORMAL
	clearflag 0x0E0
	showsprite 0x9
	movesprite 0x9 0x0A 0x17
	applymovement 0x9 LookUp
	sound 0xB8
	checksound
	pause 0x14
	msgbox gText_Route24_Rival_RunNoise MSG_NORMAL
	sound 0x11
	applymovement 0x9 BigZoomies
	waitmovement 0x0
	pause 0x8
	msgbox gText_Route24_MintRunsUp MSG_NORMAL
	pause 0x18
	applymovement 0x1 LookUp
	waitmovement 0x0
	msgbox gText_Route24_Rival_MintRanBy MSG_NORMAL
	sound 0x11
	applymovement 0x1 BigZoomies
	waitmovement 0x0
	pause 0x16
	setflag 0x0E0
	setflag 0x031
	hidesprite 0x1
	hidesprite 0x9
	setvar 0x406B 0x1
	applymovement 0xFF LookUp
	end

LookUp:
	.byte look_up
	.byte 0xFE	
	
LookRight:
	.byte look_right
	.byte 0xFE
		
WalkRight:
	.byte walk_right
	.byte 0xFE

BigZoomies:
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0xFE
