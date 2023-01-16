.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_BRENDANFIRST_SPOKEN, 0x95C

.global EventScript_Route6_IcePathSign
EventScript_Route6_IcePathSign:
	msgbox gText_Route6_IcePathSign MSG_SIGN
	end

.global EventScript_Route6_BrendanFirstAppear
EventScript_Route6_BrendanFirstAppear:
	@call EventScript_NameBrendan
	checkflag FLAG_BRENDANFIRST_SPOKEN
	if SET _goto EventScript_Route6_BrendanFirstAppear_Talk2
	msgbox gText_Route6_BrendanFirstAppear MSG_FACE
	setflag FLAG_BRENDANFIRST_SPOKEN
	@callasm 0x8FB0101
	release
	end
	
EventScript_Route6_BrendanFirstAppear_Talk2:
	msgbox gText_Route6_BrendanFirstAppear_FollowUp MSG_FACE
	@callasm 0x8FB0101
	release
	end
	
.global EventScript_Route6_SwirlixHater
EventScript_Route6_SwirlixHater:
	msgbox gText_Route6_SwirlixHater MSG_FACE
	end
	
.global EventScript_Route6_SwirlixBreeder
EventScript_Route6_SwirlixBreeder:
	msgbox gText_Route6_SwirlixBreeder MSG_FACE
	end
	
.global EventScript_Route6_DNSExplainer
EventScript_Route6_DNSExplainer:
	special2 LASTRESULT 0xAD
	compare LASTRESULT 0x3
	if 0x0 _goto EventScript_Route6_DNSExplainer_Day
	msgbox gText_Zigzagoon_DNS_Night MSG_FACE
	end

EventScript_Route6_DNSExplainer_Day:
	msgbox gText_Zigzagoon_DNS_Day MSG_FACE
	end

.global EventScript_Route6_BugCatcherHorace
EventScript_Route6_BugCatcherHorace:
    trainerbattle0 0x0 0x2 0x0 gText_Route6_BugCatcherHorace_Before gText_Route6_BugCatcherHorace_Lose
    msgbox gText_Route6_BugCatcherHorace_After MSG_NORMAL
    end
	
.global EventScript_Route6_YoungsterMaruyama
EventScript_Route6_YoungsterMaruyama:
    trainerbattle0 0x0 0x3 0x0 gText_Route6_YoungsterMaruyama_Before gText_Route6_YoungsterMaruyama_Lose
    msgbox gText_Route6_YoungsterMaruyama_After MSG_NORMAL
    end
	
EventScript_Route6_YoungsterMaruyama2:
	trainerbattle0 0x0 0xB 0x0 gText_Route6_YoungsterMaruyama_VsSeeker gText_Route6_YoungsterMaruyama_Lose
	msgbox gText_Route6_YoungsterMaruyama_After MSG_NORMAL
	end
