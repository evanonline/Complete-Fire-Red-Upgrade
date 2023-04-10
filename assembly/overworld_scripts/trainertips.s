.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_TrainerTips_Nuzlocke
EventScript_TrainerTips_Nuzlocke:
	signmsg
	msgbox gText_TrainerTips_Nuzlocke MSG_SIGN
	end

.global EventScript_TrainerTips_WildCharge
EventScript_TrainerTips_WildCharge:
	signmsg
	msgbox gText_TrainerTips_WildCharge MSG_SIGN
	end

.global EventScript_TrainerTips_EVs
EventScript_TrainerTips_EVs:
	signmsg
	msgbox gText_TrainerTips_EVs MSG_SIGN
	end

.global EventScript_TrainerTips_ShiftVsSet
EventScript_TrainerTips_ShiftVsSet:
	signmsg
	msgbox gText_TrainerTips_ShiftVsSet MSG_SIGN
	end

.global EventScript_TrainerTips_PalletOriginalTip
EventScript_TrainerTips_PalletOriginalTip:
	signmsg
	msgbox gText_TrainerTips_PalletStartMenu MSG_SIGN
	end

.global EventScript_TrainerTips_Stats
EventScript_TrainerTips_Stats:
	signmsg
	msgbox gText_TrainerTips_Stats MSG_SIGN
	end
