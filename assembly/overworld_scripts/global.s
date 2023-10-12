.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_Pokecenter_Services
EventScript_Pokecenter_Services:
	faceplayer
	lock
	msgbox gText_Global_Pokecenter_SecondaryNurse_Intro1 MSG_KEEPOPEN
	goto EventScript_Pokecenter_ServicesMultichoice
	
EventScript_Pokecenter_ServicesMultichoice:
	lock
	msgbox gText_Global_Pokecenter_SecondaryNurse_Intro2 MSG_KEEPOPEN
	multichoiceoption gText_GlobalPokecenter_SecondaryNurse_MoveRelearnerListText 0
	multichoiceoption gText_GlobalPokecenter_SecondaryNurse_NicknameListText 1
	multichoiceoption sRunSettingsCancel 2
	multichoice 0x0 0x0 THREE_MULTICHOICE_OPTIONS 0x0
	copyvar 0x4001 LASTRESULT
	compare 0x4001 0x0 
	if 0x1 _goto EventScript_Pokecenter_ServicesRelearner
	compare 0x4001 0x1
	if 0x1 _goto EventScript_Pokecenter_ServicesNickname
	compare 0x4001 0x2
	if 0x1 _goto EventScript_Pokecenter_ServicesCancel
	release
	end
	
EventScript_Pokecenter_ServicesRelearner:
	msgbox gText_GlobalPokecenter_SecondaryNurse_MoveRelearner MSG_NORMAL
	special 0xDB
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_Pokecenter_ServicesMultichoice
	special 0x148
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_PokeCenter_ServicesCantEgg
	compare 0x8005 0x0
	if 0x1 _goto EventScript_PokeCenter_ServicesCantRelearn
	goto MoveRelearnerScript

EventScript_PokeCenter_ServicesCantEgg:
	msgbox gText_GlobalPokecenter_SecondaryNurse_CantHelpEgg MSG_KEEPOPEN
	goto EventScript_Pokecenter_ServicesMultichoice

	@---------------
EventScript_PokeCenter_ServicesCantRelearn:
	msgbox gText_GlobalPokecenter_SecondaryNurse_MoveRelearner_No MSG_KEEPOPEN
	goto EventScript_Pokecenter_ServicesRelearner

	@---------------
MoveRelearnerScript:
	lock
	msgbox gText_GlobalPokecenter_SecondaryNurse_MoveRelearner_WhatMove MSG_KEEPOPEN
	special 0xE0
	waitstate
	compare 0x8004 0x0
	if 0x1 _goto EventScript_Pokecenter_ServicesCancel
	end

EventScript_Pokecenter_ServicesNickname:
	msgbox gText_GlobalPokecenter_SecondaryNurse_Nickname MSG_KEEPOPEN
	special 0x9F
	waitstate
	compare 0x8004 0x6
	if 0x0 _goto NameCheck
	compare 0x8004 0x6
	if 0x4 _goto EventScript_Pokecenter_ServicesCancel
	end

NameCheck:
	lock
	special2 LASTRESULT 0x147
	compare LASTRESULT 0x19C
	if 0x1 _goto EventScript_PokeCenter_ServicesCantEgg
	special 0x7C
	special 0x7D
	compare LASTRESULT 0x1
	if 0x1 _goto NameCheck_Cant
	special2 LASTRESULT 0x150
	special 0x7C
	compare LASTRESULT 0x1
	if 0x1 _goto NameCheck_Cant
	msgbox gText_GlobalPokecenter_SecondaryNurse_ConfirmNickname MSG_YESNO
	compare LASTRESULT 0x1
	if 0x1 _goto NameCheck_GoodToGo
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_Pokecenter_ServicesCancel
	end

NameCheck_Cant:
	msgbox gText_GlobalPokecenter_SecondaryNurse_NicknameTraded MSG_KEEPOPEN
	release
	end
	
	@---------------
NameCheck_GoodToGo:
	lock
	msgbox gText_GlobalPokecenter_SecondaryNurse_NicknameWhat MSG_KEEPOPEN
	call NameCheck_Fade
	special2 LASTRESULT 0x7B
	special 0x7C
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_NameDone
	msgbox gText_GlobalPokecenter_SecondaryNurse_NicknameSame MSG_KEEPOPEN
	release
	end

	@---------------
NameCheck_Fade:
	fadescreen 0x1
	special 0x9E
	waitstate
	return

EventScript_NameDone:
	msgbox gText_GlobalPokecenter_SecondaryNurse_NicknameComplete MSG_NORMAL
	release
	end

EventScript_Pokecenter_ServicesCancel:
	msgbox gText_GlobalPokecenter_SecondaryNurse_Bye MSG_NORMAL
	release
	end
