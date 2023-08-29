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
.equ FLAG_CELADONDEPT_ROOF2, 0x96C @Person ID to hide the rockets in the store
.equ FLAG_CELADON_GYMOPEN, 0x96D 
.equ FLAG_GOT_COIN_CASE, 0x243
.equ SP_DAILY_EVENT, 0xA0
.equ SP_UPDATE_TIME_IN_VARS, 0xA1
.equ SP_GET_TIME_DIFFERENCE, 0xA2
.equ VAR_DAILY_EVENT, 0x50D2 @Also uses 0x50D3

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_CeladonCitySibSprite_Outside
gMapScripts_CeladonCitySibSprite_Outside:
   mapscript MAP_SCRIPT_ON_LOAD EventScript_ChangeSibSprite_CeladonOutside
   .byte MAP_SCRIPT_TERMIN

EventScript_ChangeSibSprite_CeladonOutside:
	checkflag 0x966
	if SET _call HideSibSprite
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry_CeladonOutside
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy_CeladonOutside
    end

HideSibSprite:
	setflag 0x966
	hidesprite 7
	return

EventScript_SetSibNPCAsSherry_CeladonOutside:
    setvar 0x5028 + 0x6 7
    end

EventScript_SetSibNPCAsBrandy_CeladonOutside:
    setvar 0x5028 + 0x6 0
    end

.global EventScript_CeladonCitySibSprite_InsideCeladonPokeCenter
gMapScripts_CeladonCitySibSprite_InsidePokeCenter:
   mapscript MAP_SCRIPT_ON_LOAD EventScript_ChangeSibSprite_InsideCeladonPokeCenter
   .byte MAP_SCRIPT_TERMIN

EventScript_ChangeSibSprite_InsideCeladonPokeCenter:
	setflag 0x96A
	hidesprite 6
	checkflag 0x967
	if SET _goto SibSpriteCeladonPokeCenter_Gone
	checkflag 0x966
	if SET _goto SibSpriteCeladonPokeCenter
	end
	
SibSpriteCeladonPokeCenter:
	clearflag 0x96A
	showsprite 6
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry_CeladonPokeCenter
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy_CeladonPokeCenter
    end
	
SibSpriteCeladonPokeCenter_Gone:
	end
	
EventScript_SetSibNPCAsSherry_CeladonPokeCenter:
    setvar 0x5028 + 0x5 7
    end

EventScript_SetSibNPCAsBrandy_CeladonPokeCenter:
    setvar 0x5028 + 0x5 0
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
	checkflag FLAG_CELADONDEPT_ROOF2
	if SET _goto EventScript_CeladonCity_RGroupClassy_Angry
	msgbox gText_CeladonCity_RGroupAwesome MSG_FACE
	end
	
EventScript_CeladonCity_RGroupClassy_Angry:
	msgbox gText_CeladonCity_RGroupAwesome_WhatDidYouDo MSG_FACE
	end
		
.global EventScript_CeladonCity_NotStupidAboutRGroup
EventScript_CeladonCity_NotStupidAboutRGroup:
	checkflag FLAG_CELADONDEPT_ROOF2
	if SET _goto EventScript_CeladonCity_NotStupidAboutRGroup_Angry
	msgbox gText_CeladonCity_RGroupNotStupid MSG_FACE
	end

EventScript_CeladonCity_NotStupidAboutRGroup_Angry:
	msgbox gText_CeladonCity_RGroupNotStupid_WhatDidYouDo MSG_FACE
	end

.global EventScript_CeladonCity_GrassHint
EventScript_CeladonCity_GrassHint:
	checkflag FLAG_CELADONDEPT_ROOF2
	if SET _goto EventScript_CeladonCity_GrassHint_Angry
	msgbox gText_CeladonCity_GrassHint MSG_FACE
	end

EventScript_CeladonCity_GrassHint_Angry:
	msgbox gText_CeladonCity_GrassHint_Angry MSG_FACE
	end

.global EventScript_CeladonCity_CondominiumsSign
EventScript_CeladonCity_CondominiumsSign:
	signmsg
	msgbox gText_CeladonCity_CondominiumsSign MSG_SIGN
	end
	
.global EventScript_CeladonCity_CondominiumsGraffiti
EventScript_Celadoncity_CondominiumsGraffiti:
	msgbox gText_CeladonCondominiums_Graffiti MSG_NORMAL
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
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@Game Corner coin attendants@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@	
	
.global EventScript_CeladonCity_GameCornerAttendant1
EventScript_CeladonCity_GameCornerAttendant1:
	checkflag FLAG_GOT_COIN_CASE
	if SET _goto GotCoinCaseAlready
	checkflag FLAG_CELADONDEPT_ROOF2
	if NOT_SET _call AttendantNormalMsg
	checkflag FLAG_CELADONDEPT_ROOF2
	if SET _call AttendantTwerpMsg
	giveitem ITEM_COIN_CASE 0x1 MSG_OBTAIN
	setflag FLAG_GOT_COIN_CASE
	checkflag FLAG_CELADONDEPT_ROOF2
	if NOT_SET _call AttendantNormalDoneMsg
	checkflag FLAG_CELADONDEPT_ROOF2
	if SET _call AttendantTwerpDoneMsg
	end

AttendantNormalMsg:
	msgbox gText_CeladonCity_GameCorner_Welcome MSG_KEEPOPEN
	return

AttendantTwerpMsg:
	msgbox gText_CeladonCity_GameCorner_WelcomeTwerp MSG_KEEPOPEN
	return

AttendantNormalDoneMsg:
	msgbox gText_CeladonCity_GameCorner_GotCoinCase MSG_NORMAL
	return

AttendantTwerpDoneMsg:
	msgbox gText_CeladonCity_GameCorner_GotCoinCaseTwerp MSG_NORMAL
	return

GotCoinCaseAlready:
	checkflag FLAG_CELADONDEPT_ROOF2
	if NOT_SET _call AttendantNormalDoneMsg
	checkflag FLAG_CELADONDEPT_ROOF2
	if SET _call AttendantTwerpDoneMsg
	end
	
@@@other attendant just uses vanilla scripts currently - need to review scrolling multichoice scripts later with skeli doc

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_CeladonCity_GameCornerLootbox
EventScript_CeladonCity_GameCornerLootbox:
	msgbox gText_CeladonCity_GameCornerSnoverwatch MSG_FACE
	applymovement 0x8 LookRight 
	end
	
.global EventScript_CeladonCity_GameCornerDragonTamer
EventScript_CeladonCity_GameCornerDragonTamer:
	msgbox gText_CeladonCity_GameCornerDragonTamer MSG_FACE
	applymovement 0x4 LookLeft
	end	
	
.global EventScript_CeladonCity_GameCornerGamblin
EventScript_CeladonCity_GameCornerGamblin:
	msgbox gText_CeladonCity_GameCornerGambler MSG_FACE
	applymovement 0x3 LookLeft
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

.global EventScript_CeladonCity_RGroupGameCornerPromoter
EventScript_CeladonCity_RGroupGameCornerPromoter:
	checkflag FLAG_CELADONDEPT_ROOF2
	if SET _goto EventScript_CeladonCity_RGroupGameCornerPromoter_Angry
	msgbox gText_CeladonCity_RGroupGameCornerPromoter MSG_FACE
	end	

EventScript_CeladonCity_RGroupGameCornerPromoter_Angry:
	msgbox gText_CeladonCity_RGroupGameCornerPromoter_Angry MSG_FACE
	end	

.global EventScript_CeladonCity_RGroupMemberFirstOne
EventScript_CeladonCity_RGroupMemberFirstOne:
	checkflag FLAG_CELADONDEPT_ROOF2
	if SET _goto EventScript_CeladonCity_RGroupMemberFirstOne_Angry
	msgbox gText_CeladonCity_RGroupMemberFirstOne MSG_FACE
	end
	
EventScript_CeladonCity_RGroupMemberFirstOne_Angry:
	msgbox gText_CeladonCity_RGroupMemberFirstOne_Angry MSG_FACE
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
	applymovement 0x10 LookUp
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

.global EventScript_CeladonCity_donkeykongismyfavoritemarvelsuperherotoo
EventScript_CeladonCity_donkeykongismyfavoritemarvelsuperherotoo:
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SherryBriefAppearance_CeladonPokeCenter
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_BrandyBriefAppearance_CeladonPokeCenter
    end

EventScript_SherryBriefAppearance_CeladonPokeCenter:
	msgbox gText_CeladonCity_Pokecenter_Sib_Sherry MSG_NORMAL
	end

EventScript_BrandyBriefAppearance_CeladonPokeCenter:
	msgbox gText_CeladonCity_Pokecenter_Sib_Brandy MSG_NORMAL
	end

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Main story@@@@@@@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_CeladonCity_SibEncounter1Start_1
EventScript_CeladonCity_SibEncounter1Start_1:
	lockall
	call EventScript_CeladonCity_SibEncounterScriptStart
	applymovement 0xFF PlayerWalk_Gym1
	waitmovement 0x0
	goto CeladonSibFight_TeamCheck
	end

.global EventScript_CeladonCity_SibEncounter1Start_2
EventScript_CeladonCity_SibEncounter1Start_2:
	lockall
	call EventScript_CeladonCity_SibEncounterScriptStart
	applymovement 0xFF PlayerWalk_Gym2
	waitmovement 0x0
	goto CeladonSibFight_TeamCheck
	end

.global EventScript_CeladonCity_SibEncounter1Start_3
EventScript_CeladonCity_SibEncounter1Start_3:
	lockall
	call EventScript_CeladonCity_SibEncounterScriptStart
	applymovement 0xFF PlayerWalk_Gym3
	waitmovement 0x0
	goto CeladonSibFight_TeamCheck
	end

.global EventScript_CeladonCity_SibEncounter1Start_4
EventScript_CeladonCity_SibEncounter1Start_4:
	lockall
	call EventScript_CeladonCity_SibEncounterScriptStart
	applymovement 0xFF PlayerWalk_Gym4
	waitmovement 0x0
	goto CeladonSibFight_TeamCheck
	end

EventScript_CeladonCity_SibEncounterScriptStart:
	lockall
	applymovement 0x7 ExclaimAnim
	sound 0x15
	waitmovement 0x0
	pause 0x10
	applymovement 0x7 SibWalk_Gym
	return

CeladonSibFight_TeamCheck:
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_CeladonCity_SibEncounter1_Sherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_CeladonCity_SibEncounter1_Brandy
	end

EventScript_CeladonCity_SibEncounter1_Sherry:
	msgbox gText_CeladonCity_SibEncounterSherry MSG_NORMAL
	checkflag FLAG_CHOSESTARTER1
	if SET _goto CeladonSibFight1_SherryFight_StarterRelicanth
	checkflag FLAG_CHOSESTARTER2
	if SET _goto CeladonSibFight1_SherryFight_StarterSigilyph
	checkflag FLAG_CHOSESTARTER3
	if SET _goto CeladonSibFight1_SherryFight_StarterPassimian
	end
	
EventScript_CeladonCity_SibEncounter1_Brandy:
	msgbox gText_CeladonCity_SibEncounterBrandy MSG_NORMAL
	checkflag FLAG_CHOSESTARTER1
	if SET _goto CeladonSibFight1_BrandyFight_StarterRelicanth
	checkflag FLAG_CHOSESTARTER2
	if SET _goto CeladonSibFight1_BrandyFight_StarterSigilyph
	checkflag FLAG_CHOSESTARTER3
	if SET _goto CeladonSibFight1_BrandyFight_StarterPassimian
	end
	
CeladonSibFight1_SherryFight_StarterRelicanth: @Starter was Relicanth, sib is Sherry and uses Sigilyph
	trainerbattle3 0x3 19 0x0 gText_CeladonCity_SibFightYouWon
	goto EventScript_CeladonCity_AfterSibFight_Sherry_ErikaGymExplainer
	end

CeladonSibFight1_SherryFight_StarterSigilyph: @Starter was Sigilyph, sib is Sherry and uses Passimian
	trainerbattle3 0x3 20 0x0 gText_CeladonCity_SibFightYouWon
	goto EventScript_CeladonCity_AfterSibFight_Sherry_ErikaGymExplainer
	end
	
CeladonSibFight1_SherryFight_StarterPassimian: @Starter was Passimian, sib is Sherry and uses Relicanth
	trainerbattle3 0x3 21 0x0 gText_CeladonCity_SibFightYouWon
	goto EventScript_CeladonCity_AfterSibFight_Sherry_ErikaGymExplainer
	end
	
CeladonSibFight1_BrandyFight_StarterRelicanth:  @Starter was Relicanth, sib is Brandy and uses Sigilyph
	trainerbattle3 0x3 16 0x0 gText_CeladonCity_SibFightYouWon
	goto EventScript_CeladonCity_AfterSibFight_Brandy_ErikaGymExplainer
	end
	
CeladonSibFight1_BrandyFight_StarterSigilyph: @Starter was Sigilyph, sib is Brandy and uses Passimian
	trainerbattle3 0x3 17 0x0 gText_CeladonCity_SibFightYouWon
	goto EventScript_CeladonCity_AfterSibFight_Brandy_ErikaGymExplainer
	end
	
CeladonSibFight1_BrandyFight_StarterPassimian: @Starter was Passimian, sib is Brandy and uses Relicanth
	trainerbattle3 0x3 18 0x0 gText_CeladonCity_SibFightYouWon
	goto EventScript_CeladonCity_AfterSibFight_Brandy_ErikaGymExplainer
	end

EventScript_CeladonCity_AfterSibFight_Sherry_ErikaGymExplainer:
	setvar 0x408D 0x1
	msgbox gText_CeladonCity_SibEncounterSherryAfterFight MSG_KEEPOPEN
	call UniversalMovementScript_GymScene1
	msgbox gText_CeladonCity_ErikaGymSceneSherry1 MSG_KEEPOPEN
	applymovement 0x8 GymTrainerShuffle
	waitmovement 0x0
	msgbox gText_CeladonCity_ErikaGymSceneNPC2 MSG_KEEPOPEN
	msgbox gText_CeladonCity_ErikaGymSceneSherry2 MSG_KEEPOPEN
	applymovement 0x8 GymTrainerShuffle
	waitmovement 0x0
	msgbox gText_CeladonCity_ErikaGymSceneNPC3 MSG_KEEPOPEN
	applymovement 0x8 JumpyTime
	sound 0x1C
	waitmovement 0x0
	msgbox gText_CeladonCity_ErikaGymSceneNPC4 MSG_KEEPOPEN
	msgbox gText_CeladonCity_ErikaGymSceneSherry3 MSG_NORMAL
	applymovement 0x7 SibLeavesGymZone
	waitmovement 0x0
	call HideSibSprite
	msgbox gText_CeladonCity_ThatsYourSib MSG_NORMAL
	releaseall
	end

EventScript_CeladonCity_AfterSibFight_Brandy_ErikaGymExplainer:
	setvar 0x408D 0x1
	msgbox gText_CeladonCity_SibEncounterBrandyAfterFight MSG_KEEPOPEN
	call UniversalMovementScript_GymScene1
	msgbox gText_CeladonCity_ErikaGymSceneBrandy1 MSG_KEEPOPEN
	applymovement 0x8 GymTrainerShuffle
	waitmovement 0x0
	msgbox gText_CeladonCity_ErikaGymSceneNPC2 MSG_KEEPOPEN
	msgbox gText_CeladonCity_ErikaGymSceneBrandy2 MSG_KEEPOPEN
	applymovement 0x8 GymTrainerShuffle
	waitmovement 0x0
	msgbox gText_CeladonCity_ErikaGymSceneNPC3 MSG_KEEPOPEN
	applymovement 0x8 JumpyTime
	sound 0x1C
	waitmovement 0x0
	msgbox gText_CeladonCity_ErikaGymSceneNPC4 MSG_KEEPOPEN
	msgbox gText_CeladonCity_ErikaGymSceneBrandy3 MSG_NORMAL
	applymovement 0x7 SibLeavesGymZone
	waitmovement 0x0
	call HideSibSprite
	msgbox gText_CeladonCity_ThatsYourSib MSG_NORMAL
	releaseall
	end

UniversalMovementScript_GymScene1:
	msgbox gText_CeladonCity_SibEncounterFinal MSG_NORMAL
	applymovement 0x7 PlayerSibWalkUp
	applymovement 0xFF PlayerSibWalkUp
	waitmovement 0x0
	applymovement 0x8 GymTrainerShuffle
	pause 0x5
	msgbox gText_CeladonCity_ErikaGymSceneNPC1 MSG_KEEPOPEN
	return
	
.global EventScript_CeladonCity_RGroupNoEntryLeft
EventScript_CeladonCity_RGroupNoEntryLeft:
	checkflag 0x966
	if SET _goto RGroupGuardLeftOopsie
	msgbox gText_CeladonCity_RGroupBigShipment MSG_FACE
	end

RGroupGuardLeftOopsie:
	lockall
	msgbox gText_CeladonCity_OutsideDeptStore_Left MSG_FACE
	trainerbattle3 0x3 9 0x0 gText_CeladonCity_OutsideDeptStore_Left_Loss
	lockall
	msgbox gText_CeladonCity_OutsideDeptStore_After MSG_KEEPOPEN
	applymovement 0xE LookRight
	waitmovement 0x0
	applymovement 0xD LookLeft
	waitmovement 0x0
	msgbox gText_CeladonCity_OutsideDeptStore_GetInside MSG_NORMAL
	call GuardsDoorEnter
	lockall
	clearflag 0x966
	showsprite 7
	movesprite 0x7 0x11 0x16
	pause 0x12
	applymovement 0x7 SibEntersDept1_FoughtLeftRocket
	waitmovement 0x0
	pause 0x5
	applymovement 0xFF LookRight
	checkgender
	compare LASTRESULT 0x0
    if 0x1 _call EventScript_SherryGrats
    compare LASTRESULT 0x1
    if 0x1 _call EventScript_BrandyGrats
	applymovement 0x7 SibEntersDept2
	opendoor 0xF 0xE
	waitdooranim
	pause 0x8
	setflag 0x966
	hidesprite 7
	closedoor 0xF 0xE
	waitdooranim
	releaseall
	end
	
.global EventScript_CeladonCity_NoLongerKnowEverything
EventScript_CeladonCity_NoLongerKnowEverything:
	msgbox gText_CeladonCity_NoLongerKnowEverything1 MSG_FACE
	end

.global EventScript_CeladonCity_RGroupNoEntryRight
EventScript_CeladonCity_RGroupNoEntryRight:
	checkflag 0x966
	if SET _goto RGroupGuardRightOopsie
	msgbox gText_CeladonCity_RGroupBigShipment MSG_FACE
	end

RGroupGuardRightOopsie:
	lockall
	msgbox gText_CeladonCity_OutsideDeptStore_Right MSG_FACE
	trainerbattle3 0x3 10 0x0 gText_CeladonCity_OutsideDeptStore_Right_Loss
	lockall
	msgbox gText_CeladonCity_OutsideDeptStore_After MSG_KEEPOPEN
	applymovement 0xD LookLeft
	waitmovement 0x0
	applymovement 0xE LookRight
	waitmovement 0x0
	msgbox gText_CeladonCity_OutsideDeptStore_GetInside MSG_NORMAL
	call GuardsDoorEnter
	lockall
	clearflag 0x966
	showsprite 7
	movesprite 0x7 0x09 0x16
	pause 0x12
	applymovement 0x7 SibEntersDept1_FoughtRightRocket
	waitmovement 0x0
	pause 0x5
	applymovement 0xFF LookLeft
	checkgender
	compare LASTRESULT 0x0
    if 0x1 _call EventScript_SherryGrats
    compare LASTRESULT 0x1
    if 0x1 _call EventScript_BrandyGrats
	applymovement 0x7 SibEntersDept2
	opendoor 0xB 0xE
	waitdooranim
	pause 0x8
	setflag 0x966
	hidesprite 7
	closedoor 0xB 0xE
	waitdooranim
	releaseall
	end
	
EventScript_SherryGrats:
	msgbox gText_CeladonCity_OutsideDeptStore_Sib_Sherry MSG_NORMAL
	return
	
EventScript_BrandyGrats:
	msgbox gText_CeladonCity_OutsideDeptStore_Sib_Brandy MSG_NORMAL
	return

GuardsDoorEnter:
	applymovement 0xD RocketsWalkUp
	opendoor 0xF 0xE
	waitdooranim
	setflag 0x967
	hidesprite 13
	pause 0x8
	closedoor 0xF 0xE
	waitdooranim
	pause 0x5
	lockall
	applymovement 0xE RocketsWalkUp
	opendoor 0xB 0xE
	waitdooranim
	pause 0x15
	hidesprite 14
	closedoor 0xB 0xE
	waitdooranim
	return

.global EventScript_CeladonCity_GymTrainerOutside
EventScript_CeladonCity_GymTrainerOutside:
	checkitem ITEM_ENERGY_DRINK 0x1
	compare 0x800D 0x1
	if 0x4 _goto ErikaGymOpen
	msgbox gText_CeladonCity_PleaseGoDeptStore MSG_FACE
	end

ErikaGymOpen:
	faceplayer
	pause 0x6
	sound 0x15
	applymovement 0x8 ExclaimAnim 
	waitmovement 0x0
	pause 0x5
	msgbox gText_CeladonCity_GymTrainer_GetsEnergyDrink1 MSG_KEEPOPEN
	applymovement 0x8 GymTrainerShuffle
	removeitem ITEM_ENERGY_DRINK 0x1
	faceplayer
	msgbox gText_CeladonCity_GymTrainer_GetsEnergyDrink2 MSG_NORMAL
	setflag 0x96D
	applymovement 0x8 RocketsWalkUp
	opendoor 0xB 0x1E
	waitdooranim
	pause 0x15
	hidesprite 8
	closedoor 0xB 0x1E
	end

.global EventScript_CeladonCity_CondoRoofGuy
EventScript_CeladonCity_CondoRoofGuy:
	msgbox gText_CeladonCondominiumsRoofGuy MSG_FACE
	end

.global EventScript_CeladonCity_AbilityHaver
EventScript_CeladonCity_AbilityHaver:
	msgbox gText_CeladonCity_AbilityHaver MSG_FACE
	end
	
.global EventScript_CeladonCity_NewCondominiumsReceptionist
EventScript_CeladonCity_NewCondominiumsReceptionist:
	msgbox gText_CeladonCity_NewCondominiumsReceptionist MSG_FACE
	end
	
.global EventScript_CeladonCity_NewCondominiumsGuard
EventScript_CeladonCity_NewCondominiumsGuard:
	msgbox gText_CeladonCity_NewCondominiumsGuard MSG_FACE
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
	
ExclaimAnim:
	.byte exclaim
	.byte 0xFE
	
RimeTrick:
	.byte 0x56
	.byte 0xFE

SibWalk_Gym:
	.byte walk_up
	.byte walk_right
	.byte walk_right
	.byte 0xFE

PlayerWalk_Gym1:
	.byte walk_down
	.byte walk_left
	.byte 0xFE
	
PlayerWalk_Gym2:
	.byte walk_left
	.byte 0xFE
	
PlayerWalk_Gym3:
	.byte walk_up
	.byte walk_left
	.byte 0xFE
	
PlayerWalk_Gym4:
	.byte walk_up
	.byte walk_up
	.byte walk_left
	.byte 0xFE

PlayerSibWalkUp:
	.byte walk_up
	.byte walk_up
	.byte walk_up
	.byte 0xFE
	
RocketsWalkUp:
	.byte walk_up
	.byte 0xFE
	
GymTrainerShuffle:
	.byte 0x25
	.byte 0x25
	.byte 0xFE
	
JumpyTime:
	.byte 0x52
	.byte 0xFE
	
SibLeavesGymZone:
	.byte 0x3D 
	.byte 0x3D 
	.byte 0x3D 
	.byte 0x40
	.byte 0x40
	.byte 0x40
	.byte 0x40
	.byte 0x40
	.byte 0x40
	.byte 0x40
	.byte 0x40
	.byte 0x40
	.byte 0xFE

SibEntersDept1_FoughtRightRocket:
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x40
	.byte walk_right
	.byte 0xFE
	
SibEntersDept1_FoughtLeftRocket:
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3F
	.byte walk_left
	.byte 0xFE

SibEntersDept2:
	.byte walk_up
	.byte walk_up
	.byte walk_up
	.byte 0xFE
