.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_ROTOMI, 0x4A7
.equ FLAG_SEENRIMETRICK, 0x4A8

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_CeladonCity_GameFreakNPC_0
EventScript_CeladonCity_GameFreakNPC_0:
	msgbox gText_CeladonCity_GameFreak_0 MSG_FACE
	end
	
.global EventScript_CeladonCity_GameFreakNPC_2
EventScript_CeladonCity_GameFreakNPC_2:
	msgbox gText_CeladonCity_GameFreak_2 MSG_FACE
	end
	
.global EventScript_CeladonCity_GameFreakNPC_3
EventScript_CeladonCity_GameFreakNPC_3:
	msgbox gText_CeladonCity_GameFreak_3 MSG_FACE
	end

.global EventScript_CeladonCity_HotelRotomi
EventScript_CeladonCity_HotelRotomi:
	checkflag FLAG_ROTOMI
	if SET _goto EventScript_ReleaseEnd
	sound 0x2
	msgbox gText_CeladonCity_HotelInvisiblePC MSG_FACE
	setflag FLAG_ROTOMI
	hidesprite 3
	wildbattle SPECIES_ROTOM_ROTOMI 5 0x0
	release
	end

.global EventScript_CeladonCity_ScaredCozyGuy
EventScript_CeladonCity_ScaredCozyGuy:
	checkflag FLAG_ROTOMI
	if SET _goto EventScript_CeladonCity_NoLongerScaredCozyGuy
	msgbox gText_CeladonCity_HotelWeirdFeeling MSG_FACE
	end
	
EventScript_CeladonCity_NoLongerScaredCozyGuy:
	msgbox gText_CeladonCity_HotelWeirdFeeling_Gone MSG_FACE
	end
	
.global EventScript_CeladonCity_HotelMatron
EventScript_CeladonCity_HotelMatron:
	checkflag FLAG_ROTOMI
	if SET _goto EventScript_CeladonCity_HotelMatron_Rotomi
	msgbox gText_CeladonCity_HotelMatron MSG_FACE
	end
	
EventScript_CeladonCity_HotelMatron_Rotomi:
	msgbox gText_CeladonCity_HotelMatron_Rotomi MSG_FACE
	end

.global EventScript_CeladonCity_HmmPokemon
EventScript_CeladonCity_HmmPokemon:
	msgbox gText_CeladonCity_NPC1 MSG_NORMAL
	end

.global EventScript_CeladonCity_PokecenterRime
EventScript_CeladonCity_PokecenterRime:
	cry SPECIES_MR_RIME 0x0
	msgbox gText_CeladonCity_RimeCry MSG_FACE
	end

.global EventScript_CeladonCity_PokecenterRimeTrickGuy
EventScript_CeladonCity_PokecenterRimeTrickGuy:
	lock
	faceplayer
	msgbox gText_CeladonCity_Pokecenter_RimeTrick MSG_KEEPOPEN
	checkflag FLAG_SEENRIMETRICK
	if SET _goto EventScript_CeladonCity_RimeTrickPriceHigher
	showmoney 0x14 0x0 0x00
	msgbox gText_CeladonCity_Pokecenter_RimeTrickCost MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto EventScript_CheckMoneyRimeTrick1
	msgbox gText_CeladonCity_Pokecenter_RimeTrickNo MSG_FACE
	hidemoney 0x14 0x0
	release
	end
	
EventScript_CheckMoneyRimeTrick1:
	checkmoney 398 0x0
	compare LASTRESULT 0x1
	if lessthan _goto EventScript_CeladonRimeTrick_NoCash1
	removemoney 398
	updatemoney 0x14 0x0
	sound 0x40
	msgbox gText_CeladonCity_Pokecenter_RimeTrickYes MSG_FACE
	call RimePerformance
	msgbox gText_CeladonCity_Pokecenter_RimeTrickAfter MSG_FACE
	setflag FLAG_SEENRIMETRICK
	release
	end

EventScript_CeladonRimeTrick_NoCash1:
	msgbox gText_CeladonCity_Pokecenter_RimeTrickNoMoney1 MSG_FACE
	hidemoney 0x14 0x0
	release
	end

EventScript_CeladonCity_RimeTrickPriceHigher:
	showmoney 0x14 0x0 0x00
	msgbox gText_CeladonCity_Pokecenter_RimeTrickCostRepeat MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto EventScript_CheckMoneyRimeTrick2
	msgbox gText_CeladonCity_Pokecenter_RimeTrickNo MSG_FACE
	hidemoney 0x14 0x0
	release
	end

EventScript_CheckMoneyRimeTrick2:
	checkmoney 2000 0x0
	compare LASTRESULT 0x1
	if lessthan _goto EventScript_CeladonRimeTrick_NoCash2
	removemoney 2000
	updatemoney 0x14 0x0
	sound 0x40
	msgbox gText_CeladonCity_Pokecenter_RimeTrickYes MSG_FACE
	call RimePerformance
	msgbox gText_CeladonCity_Pokecenter_RimeTrickAfter MSG_FACE
	sound 0x15
	applymovement 0x1 LookNurse
	pause 0x20
	msgbox gText_CeladonCity_CenterNursePleaseStop MSG_NORMAL
	pause 0x10
	applymovement 0x1 LookDown
	pause 0x5
	release
	end
	
EventScript_CeladonRimeTrick_NoCash2:
	msgbox gText_CeladonCity_Pokecenter_RimeTrickNoMoney2 MSG_FACE
	hidemoney 0x14 0x0
	release
	end
	
RimePerformance:
	hidemoney 0x14 0x0
	fadesong 0x1
	applymovement 0x2 LookLeft
	pause 0x60
	applymovement 0x3 RimeTrick
	sound 0x1C
	waitmovement 0x0
	cry SPECIES_MR_RIME 0x0
	pause 0x10
	fadedefault
	pause 0x20
	applymovement 0x3 LookDown
	applymovement 0x2 LookDown
	return
	
.global EventScript_CeladonCity_CyclingRoadTalk
EventScript_CeladonCity_CyclingRoadTalk:
	msgbox gText_CeladonCity_CyclingRoad_Closed MSG_FACE
	end
	
.global EventScript_CeladonCity_GirlCommentary
EventScript_CeladonCity_GirlCommentary:
	msgbox gText_CeladonCity_TalkingAboutGirl MSG_FACE
	end
	
.global EventScript_CeladonCity_RGroupClassy
EventScript_CeladonCity_RGroupClassy:
	msgbox gText_CeladonCity_RGroupAwesome MSG_FACE
	end
		
.global EventScript_CeladonCity_GrassHint
EventScript_CeladonCity_GrassHint:
	msgbox gText_CeladonCity_GrassHint MSG_FACE
	end

.global EventScript_CeladonCity_CondominiumsSign
EventScript_CeladonCity_CondominiumsSign:
	signmsg
	msgbox gTextCeladonCity_CondominiumsSign MSG_SIGN
	end
	
.global EventScript_CeladonCity_RestaurantSign
EventScript_CeladonCity_RestaurantSign:
	signmsg
	msgbox gTextCeladonCity_RestaurantSign MSG_SIGN
	end
	
.global EventScript_CeladonCity_HotelSign
EventScript_CeladonCity_HotelSign:
	signmsg
	msgbox gTextCeladonCity_HotelSign MSG_SIGN
	end

.global EventScript_CeladonCity_HomemadePickles
EventScript_CeladonCity_HomemadePickles:
	msgbox gTextCeladonCity_HomemadePickles MSG_FACE
	applymovement 0x3 LookRight
	end
	
.global EventScript_CeladonCity_MayleneInspiredSquatter
EventScript_CeladonCity_MayleneInspiredSquatter:
	msgbox gTextCeladonCity_Restaurant_MayleneInspiredSquatter MSG_FACE
	applymovement 0x3 LookRight
	end

.global EventScript_CeladonCity_IonoSoda
EventScript_CeladonCity_IonoSoda:
	msgbox gTextCeladonCity_Restaurant_IonoSoda MSG_FACE
	end
	
.global EventScript_CeladonCity_IonoBurgerLore
EventScript_CeladonCity_IonoBurgerLore:
	msgbox gTextCeladonCity_RestaurantStaff_TooBusy MSG_FACE
	end

LookLeft:
	.byte look_left
	.byte 0xFE	

LookRight:
	.byte look_right
	.byte 0xFE	

LookNurse:
	.byte 0x64
	.byte look_left
	.byte 0xFE

LookDown:
	.byte look_down
	.byte 0xFE
	
RimeTrick:
	.byte 0x56
	.byte 0xFE
