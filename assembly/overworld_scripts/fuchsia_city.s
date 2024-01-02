.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_FuchsiaCity_SadPennantMan
EventScript_FuchsiaCity_SadPennantMan:
	msgbox gText_FuchsiaPennants MSG_FACE
	end

.global EventScript_FuchsiaCity_Safaribooks
EventScript_FuchsiaCity_Safaribooks:
	lockall
	msgbox gText_FuchsiaSafaribooks MSG_NORMAL
	end
