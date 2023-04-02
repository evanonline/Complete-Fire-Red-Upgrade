.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_ROTOMI, 0x4A7
.equ FLAG_SEENRIMETRICK, 0x4A8
.equ FLAG_CHOSESTARTER1, 0x960
.equ FLAG_CHOSESTARTER2, 0x961
.equ FLAG_CHOSESTARTER3, 0x962
.equ SP_DAILY_EVENT, 0xA0
.equ SP_UPDATE_TIME_IN_VARS, 0xA1
.equ SP_GET_TIME_DIFFERENCE, 0xA2
.equ VAR_DAILY_EVENT, 0x50D2 @Also uses 0x50D3

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_CeladonCitySibSprite_Outside
gMapScripts_CeladonCitySibSprite_Outside:
   mapscript MAP_SCRIPT_ON_TRANSITION EventScript_ChangeSibSprite_CeladonOutside
   .byte MAP_SCRIPT_TERMIN

EventScript_ChangeSibSprite_CeladonOutside:
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry_CeladonOutside
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy_CeladonOutside
    end

EventScript_SetSibNPCAsSherry_CeladonOutside:
    setvar 0x5028 + 0x6 7
    end

EventScript_SetSibNPCAsBrandy_CeladonOutside:
    setvar 0x5028 + 0x6 0
    end

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
		
.global EventScript_CeladonCity_NotStupidAboutRGroup
EventScript_CeladonCity_NotStupidAboutRGroup:
	msgbox gText_CeladonCity_RGroupNotStupid MSG_FACE
	end
		
.global EventScript_CeladonCity_GrassHint
EventScript_CeladonCity_GrassHint:
	msgbox gText_CeladonCity_GrassHint MSG_FACE
	end

.global EventScript_CeladonCity_CondominiumsSign
EventScript_CeladonCity_CondominiumsSign:
	signmsg
	msgbox gText_CeladonCity_CondominiumsSign MSG_SIGN
	end
	
.global EventScript_CeladonCity_RestaurantSign
EventScript_CeladonCity_RestaurantSign:
	signmsg
	msgbox gText_CeladonCity_RestaurantSign MSG_SIGN
	end
	
.global EventScript_CeladonCity_HotelSign
EventScript_CeladonCity_HotelSign:
	signmsg
	msgbox gText_CeladonCity_HotelSign MSG_SIGN
	end

.global EventScript_CeladonCity_HomemadePickles
EventScript_CeladonCity_HomemadePickles:
	msgbox gText_CeladonCity_HomemadePickles MSG_FACE
	applymovement 0x4 LookRight
	end
	
.global EventScript_CeladonCity_BurgerManStatue
EventScript_CeladonCity_BurgerManStatue:
	msgbox gText_CeladonCity_RestaurantStatue MSG_NORMAL
	end
	
.global EventScript_CeladonCity_MayleneInspiredSquatter
EventScript_CeladonCity_MayleneInspiredSquatter:
	msgbox gText_CeladonCity_Restaurant_MayleneInspiredSquatter MSG_FACE
	applymovement 0x3 LookRight
	end

.global EventScript_CeladonCity_IonoSoda
EventScript_CeladonCity_IonoSoda:
	msgbox gText_CeladonCity_Restaurant_IonoSoda MSG_FACE
	end
	
.global EventScript_CeladonCity_IonoBurgerLore
EventScript_CeladonCity_IonoBurgerLore:
	msgbox gText_CeladonCity_RestaurantStaff_TooBusy MSG_FACE
	end

.global EventScript_CeladonCity_MayleneAutograph
EventScript_CeladonCity_MayleneAutograph:
	msgbox gText_CeladonCity_RestaurantMayleneSign1 MSG_KEEPOPEN
	signmsg
	msgbox gText_CeladonCity_RestaurantMayleneSign2 MSG_SIGN
	end

.global EventScript_CeladonCity_GameCornerLootbox
EventScript_CeladonCity_GameCornerLootbox:
	msgbox gText_CeladonCity_GameCornerSnoverwatch MSG_FACE
	applymovement 0x8 LookRight 
	end
	
.global EventScript_CeladonCity_GameCornerBackpacker
EventScript_CeladonCity_GameCornerBackpacker:
	msgbox gText_CeladonCity_GameCornerBackpacker MSG_FACE
	applymovement 0x7 LookLeft 
	end
	
.global EventScript_CeladonCity_ESRB
EventScript_CeladonCity_ESRB:
	msgbox gText_CeladonCity_ESRB MSG_FACE
	applymovement 0x6 LookLeft 
	end
	
.global EventScript_CeladonCity_MrGameLore
EventScript_CeladonCity_MrGameLore:
	msgbox gText_CeladonCity_GameCorner_GameLovingMan MSG_FACE
	applymovement 0x9 LookLeft 
	end

.global EventScript_CeladonCity_RocketGuardGameCorner
EventScript_CeladonCity_RocketGuardGameCorner:
	checkflag 0x026D
	if SET _goto EventScript_CeladonCity_RocketGuardGameCorner_Bemused
	msgbox gText_CeladonCity_GameCorner_RGroupGuard MSG_FACE
	end
	
EventScript_CeladonCity_RocketGuardGameCorner_Bemused:
	msgbox gText_CeladonCity_GameCorner_RGroupGuardOpenedStairs MSG_FACE
	end

.global EventScript_CeladonCity_PrizeHouseMay
EventScript_CeladonCity_PrizeHouseMay:
	msgbox gText_CeladonCity_GameCorner_May MSG_FACE
	end

.global EventScript_CeladonCity_VoltorbFlipKid
EventScript_CeladonCity_VoltorbFlipKid:
	msgbox gText_CeladonCity_MissingVoltorbFlip MSG_FACE
	end

.global EventScript_CeladonCity_RGroupNoEntry1
EventScript_CeladonCity_RGroupNoEntry1:
	msgbox gText_CeladonCity_RGroupBigShipment MSG_FACE
	end
	
.global EventScript_CeladonCity_RGroupNoEntry2
EventScript_CeladonCity_RGroupNoEntry2:
	msgbox gText_CeladonCity_RGroupBigShipment MSG_FACE
	end
	
.global EventScript_CeladonCity_RGroupGameCornerPromoter
EventScript_CeladonCity_RGroupGameCornerPromoter:
	msgbox gText_CeladonCity_RGroupGameCornerPromoter MSG_FACE
	end	
	
.global EventScript_CeladonCity_RGroupMemberFirstOne
EventScript_CeladonCity_RGroupMemberFirstOne:
	msgbox gText_CeladonCity_RGroupMemberFirstOne MSG_FACE
	end
	
.global EventScript_CeladonCity_CondominiumsInteriorSign
EventScript_CeladonCity_CondominiumsInteriorSign:
	signmsg
	msgbox gText_CeladonCity_CeladonCondominiumManagerSuite MSG_SIGN
	end

.global EventScript_CeladonCity_Manager
EventScript_CeladonCity_Manager:
	msgbox gText_CeladonCity_FreshOuttaTea MSG_FACE
	end

.global EventScript_CeladonCity_GameFreakFan
EventScript_CeladonCity_GameFreakFan:
	msgbox gText_CeladonCity_GameFreakFan MSG_FACE
	end
	
.global EventScript_CeladonCity_Quilladin
EventScript_CeladonCity_Quilladin:
	cry SPECIES_QUILLADIN 0x0
	msgbox gText_CeladonCity_QuilladinNoises MSG_FACE
	end
	
.global EventScript_CeladonCity_HGrowlithe
EventScript_CeladonCity_HGrowlithe:
	cry SPECIES_GROWLITHE 0x0
	msgbox gText_CeladonCity_GrowlitheNoises MSG_FACE
	end
	
.global EventScript_CeladonCity_GameCornerSign
EventScript_CeladonCity_GameCornerSign:
	signmsg
	msgbox gText_CeladonCity_GameCornerSign MSG_SIGN
	end
	
.global EventScript_CeladonCity_PrizeExchangeSign
EventScript_CeladonCity_PrizeExchangeSign:
	signmsg
	msgbox gText_CeladonCity_PrizeExchange MSG_SIGN
	end

.global EventScript_CeladonCity_SceptileNoises
EventScript_CeladonCity_SceptileNoises:
	cry SPECIES_SCEPTILE 0x0
	msgbox gText_CeladonCity_BerriesSceptile MSG_FACE
	applymovement 0x9 LookUp
	end
	
.global EventScript_CeladonCity_BerriesGuy
EventScript_CeladonCity_BerriesGuy:
	setvar 0x8000 VAR_DAILY_EVENT
	setvar 0x8001 0x0
	special2 LASTRESULT SP_DAILY_EVENT
	compare LASTRESULT 0x0
	if equal _goto EventScript_ComeBackTomorrow
	setvar 0x8000 VAR_DAILY_EVENT
	special SP_UPDATE_TIME_IN_VARS
	faceplayer
	msgbox gText_CeladonCity_BerriesGuy1 MSG_KEEPOPEN
    random 0x4
    compare 0x800D 0x0 
	if 0x1 _goto EventScript_RandoBerry1
	compare 0x800D 0x1
	if 0x1 _goto EventScript_RandoBerry2
	compare 0x800D 0x2
	if 0x1 _goto EventScript_RandoBerry3
	compare 0x800D 0x3 
	if 0x1 _goto EventScript_RandoBerry4
	compare 0x800D 0x4
	if 0x1 _goto EventScript_RandoBerry5
	end
	
EventScript_RandoBerry1:
	giveitem ITEM_CHESTO_BERRY 0x1 MSG_OBTAIN
	msgbox gText_CeladonCity_BerriesGuy2 MSG_NORMAL
	end

EventScript_RandoBerry2:
	giveitem ITEM_FIGY_BERRY 0x1 MSG_OBTAIN
	msgbox gText_CeladonCity_BerriesGuy2 MSG_NORMAL
	end

EventScript_RandoBerry3:
	giveitem ITEM_KASIB_BERRY 0x1 MSG_OBTAIN
	msgbox gText_CeladonCity_BerriesGuy2 MSG_NORMAL
	end

EventScript_RandoBerry4:
	giveitem ITEM_CHERI_BERRY 0x1 MSG_OBTAIN
	msgbox gText_CeladonCity_BerriesGuy2 MSG_NORMAL
	end

EventScript_RandoBerry5:
	giveitem ITEM_ASPEAR_BERRY 0x1 MSG_OBTAIN
	msgbox gText_CeladonCity_BerriesGuy2 MSG_NORMAL
	end

EventScript_ComeBackTomorrow:
	setvar 0x8000 VAR_DAILY_EVENT
	setvar 0x8001 0x1
	special2 LASTRESULT SP_GET_TIME_DIFFERENCE
	buffernumber 0x0 LASTRESULT
	msgbox gText_CeladonCity_BerriesGuy2 MSG_FACE
	end

.global EventScript_CeladonCity_SibEncounter
EventScript_CeladonCity_SibEncounter:
	setvar 0x408D 0x1
	end

.global EventScript_CeladonCity_donkeykongismyfavoritemarvelsuperhero
EventScript_CeladonCity_donkeykongismyfavoritemarvelsuperhero:
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
	
LookUp:
	.byte look_up
	.byte 0xFE
	
RimeTrick:
	.byte 0x56
	.byte 0xFE
