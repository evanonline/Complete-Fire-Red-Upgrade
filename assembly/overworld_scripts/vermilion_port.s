.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_STARTER_CHOSEN, 0x990
.equ FLAG_OPENING_TEXT, 0x991
.equ FLAG_CHOSESTARTER1, 0x960
.equ FLAG_CHOSESTARTER2, 0x961
.equ FLAG_CHOSESTARTER3, 0x962
.equ FLAG_INTROCUTSCENE1, 0x95E

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Messages in all hotel rooms@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_BathroomEasterEgg
EventScript_BathroomEasterEgg:
	msgbox gText_BathroomEasterEgg MSG_NORMAL
	end
	
.global EventScript_Lodgenet
EventScript_Lodgenet:
	msgbox gText_Lodgenet MSG_NORMAL
	end

.global EventScript_VermilionHotelMovie
EventScript_VermilionHotelMovie:
	special2 LASTRESULT 0xAD
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_VermilionHotelMovie_Morning
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_VermilionHotelMovie_Day
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_VermilionHotelMovie_Evening
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_VermilionHotelMovie_Night
	end

EventScript_VermilionHotelMovie_Day:
	msgbox gText_MoviesRental1 MSG_NORMAL
	end
	
EventScript_VermilionHotelMovie_Morning:
	msgbox gText_MoviesRental3 MSG_NORMAL
	end
	
EventScript_VermilionHotelMovie_Evening:
	msgbox gText_MoviesRental4 MSG_NORMAL
	end
	
EventScript_VermilionHotelMovie_Night:
	msgbox gText_MoviesRental2 MSG_NORMAL
	end
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Trainer Suite messages@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionHotel_AlloysRoom
EventScript_VermilionHotel_AlloysRoom:
	msgbox gText_VermilionPortHotel_AlloysRoom MSG_NORMAL
	end

.global EventScript_VermilionHotel_RivalsRoom
EventScript_VermilionHotel_RivalsRoom:
	msgbox gText_VermilionPortHotel_RivalsRoom MSG_NORMAL
	end

.global EventScript_VermilionHotel_SibRoom
EventScript_VermilionHotel_SibRoom:
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_VermilionHotel_SherrySibRoom
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_VermilionHotel_BrandySibRoom
    end
	
EventScript_VermilionHotel_SherrySibRoom:
	msgbox gText_VermilionPortHotel_SibsRoomSherry MSG_NORMAL
	end

EventScript_VermilionHotel_BrandySibRoom:
	msgbox gText_VermilionPortHotel_SibsRoomBrandy MSG_NORMAL
	end
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Trainer Lounge map script@@@@@@@@@@@
@;Sib sprite switch@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionIntroSibSpriteScript_Hotel2
gMapScripts_VermilionIntroSibSpriteScript_Hotel2:
   mapscript MAP_SCRIPT_ON_LOAD EventScript_ChangeSibSprite_Hotel2
   .byte MAP_SCRIPT_TERMIN

EventScript_ChangeSibSprite_Hotel2:
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry2
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy2
    end

EventScript_SetSibNPCAsSherry2:
    setvar 0x5028 + 0x0 7
	checkflag FLAG_STARTER_CHOSEN
	if SET _goto EventScript_VermilionIntro_HideSib2
    end

EventScript_SetSibNPCAsBrandy2:
    setvar 0x5028 + 0x0 0
	checkflag FLAG_STARTER_CHOSEN
	if SET _goto EventScript_VermilionIntro_HideSib2
    end
	
EventScript_VermilionIntro_HideSib2:
	setflag 0x952
	hidesprite 1
	end
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Pokemon Choice pre-dialogue@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionIntro_Rival_First
EventScript_VermilionIntro_Rival_First:
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	checkflag FLAG_INTROCUTSCENE1
	if 0x1 _goto EventScript_VermilionIntro_Rival_Second
	msgbox gText_PokemonChoiceLobby_Rival_1 MSG_FACE
	callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Rival_Second:
	msgbox gText_PokemonChoiceLobby_RivalIntertalk1 MSG_FACE
	callasm 0x8FB0101
	release
	end

.global EventScript_VermilionIntro_Sib_First
EventScript_VermilionIntro_Sib_First:
	checkgender
	compare LASTRESULT 0x0
    if 0x1 _goto EventScript_VermilionIntro_Sib_First_Sherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_VermilionIntro_Sib_First_Brandy
    end
	
EventScript_VermilionIntro_Sib_First_Sherry:
	loadpointer 0x0 gText_NameSherry
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	checkflag FLAG_INTROCUTSCENE1
	if 0x1 _goto EventScript_VermilionIntro_Second_Sib
	msgbox gText_PokemonChoiceLobby_SibSherry_1 MSG_FACE
	callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Sib_First_Brandy:
	loadpointer 0x0 gText_NameBrandy
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	checkflag FLAG_INTROCUTSCENE1
	if 0x1 _goto EventScript_VermilionIntro_Second_Sib
	msgbox gText_PokemonChoiceLobby_SibBrandy_1 MSG_FACE
	callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Second_Sib:
	msgbox gText_PokemonChoiceLobby_SibIntertalk1 MSG_FACE
	callasm 0x8FB0101
	release
	end
	
.global EventScript_VermilionIntro2_HatsumiEnters
EventScript_VermilionIntro2_HatsumiEnters:
	checkflag FLAG_INTROCUTSCENE1
	if 0x1 _goto EventScript_Intro_SibWhereGoing1
	lockall
	setflag 0x95E
	setvar 0x511B 0x0
	loadpointer 0x0 gText_NameUnknown
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	playsong 0x12E 0x0
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction1 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	callasm 0x8FB0101
	applymovement 0x1 EventScript_Intro_EveryoneFaceUp2
	sound 0x15
	waitmovement 0x0
	applymovement 0xFF EventScript_Intro_EveryoneFaceUp2
	sound 0x15
	waitmovement 0x0
	applymovement 0x3 EventScript_Intro_HatsumiEnter1
	applymovement 0x2 EventScript_Intro_RivalMoveToHatsumi
	waitmovement 0x0
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction2 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	callasm 0x8FB0101
	pause 0x25
	applymovement 0x3 EventScript_Intro_HatsumiEnter2
	pause 0x35
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction3 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	callasm 0x8FB0101
	applymovement 0x3 EventScript_Intro_HatsumiEnter2
	pause 0x35
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction4 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	callasm 0x8FB0101
	applymovement 0x3 EventScript_Intro_HatsumiEnter2
	applymovement 0x1 EventScript_Intro_EveryoneFaceRight
	applymovement 0xFF EventScript_Intro_EveryoneFaceRight
	applymovement 0x2 EventScript_Intro_EveryoneFaceRight
	waitmovement 0x0
	pause 0x30
	msgbox gText_PokemonChoiceLobby_DotDotDot MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	pause 0x30
	applymovement 0x2 EventScript_Intro_RivalSteppy
	pause 0x15
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Whisk_Introduction1 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	callasm 0x8FB0101
	applymovement 0x3 EventScript_Intro_EveryoneFaceLeft2
	sound 0x15
	waitmovement 0x0
	pause 0x20
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction5 MSG_KEEPOPEN
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Whisk_Introduction2 MSG_KEEPOPEN
	callasm 0x8FB0101
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction6 MSG_KEEPOPEN
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Whisk_Introduction3 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	callasm 0x8FB0101
	pause 0x10
	applymovement 0x1 EventScript_Intro_SibToBalls
	applymovement 0x2 EventScript_Intro_RivalToBalls
	applymovement 0x3 EventScript_Intro_HatsumiToBalls
	applymovement 0xFF EventScript_Intro_PlayerToBalls
	waitmovement 0x0
	callasm 0x8FB0101
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction7 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	callasm 0x8FB0101
	fadedefault
	releaseall
	end

.global EventScript_VermilionIntro_Hatsumi
EventScript_VermilionIntro_Hatsumi:
	checkflag FLAG_INTROCUTSCENE1
	if 0x1 _goto EventScript_VermilionIntro_Hatsumi_Talk
	release
	end
	
EventScript_VermilionIntro_Hatsumi_Talk:	
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_HatsumiIntertalk1 MSG_FACE
	callasm 0x8FB0101
	release
	end

.global EventScript_VermilionIntro_Relicanth_Ball
EventScript_VermilionIntro_Relicanth_Ball:
	checkflag 0x940
	if 0x1 _goto EventScript_VermilionIntro_Random_Ball1
	showpokepic SPECIES_RELICANTH 0xA 0x3
	bufferpokemon 0x0 SPECIES_RELICANTH
	setvar 0x4001 SPECIES_RELICANTH
	msgbox gText_PokemonChoiceLobby_RelicanthBall MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Relicanth_Chosen
	hidepokepic
	release
	end
	
EventScript_Relicanth_Chosen:
	hidepokepic
	setflag 0x828
	setflag FLAG_STARTER_CHOSEN
	setflag FLAG_CHOSESTARTER1
	hidesprite 4
	setflag 0x955
	givepokemon SPECIES_RELICANTH 5 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_PokemonChoiceLobby_PokemonChosen MSG_KEEPOPEN
	waitmsg
	waitfanfare
	msgbox gText_PokemonChoiceLobby_StarterNickname MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Starter_Nickname
	release
	goto EventScript_VermilionIntro_SibStarterSelect_WhichSib
	end

EventScript_VermilionIntro_Random_Ball1:
	callasm ShowRelicanthPicNoCry
	msgbox gText_PokemonChoiceLobby_Randomized MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Random_Chosen1
	hidepokepic
	release
	end
	
EventScript_Random_Chosen1:
	hidepokepic
	setflag 0x828
	setflag FLAG_STARTER_CHOSEN
	setflag FLAG_CHOSESTARTER1
	hidesprite 4
	setflag 0x955
	givepokemon SPECIES_RELICANTH 5 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_PokemonChoiceLobby_PokemonChosenRandom MSG_KEEPOPEN
	waitmsg
	waitfanfare
	msgbox gText_PokemonChoiceLobby_StarterNicknameRandom MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Starter_Nickname
	release
	goto EventScript_VermilionIntro_RandomizedStartersForAll1
	end

.global EventScript_VermilionIntro_Sigilyph_Ball
EventScript_VermilionIntro_Sigilyph_Ball:
	checkflag 0x940
	if 0x1 _goto EventScript_VermilionIntro_Random_Ball2
	showpokepic SPECIES_SIGILYPH 0xA 0x3
	bufferpokemon 0x0 SPECIES_SIGILYPH
	setvar 0x4001 SPECIES_SIGILYPH
	msgbox gText_PokemonChoiceLobby_SigilyphBall MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Sigilyph_Chosen
	hidepokepic
	release
	end

EventScript_Sigilyph_Chosen:
	hidepokepic
	setflag 0x828
	setflag FLAG_STARTER_CHOSEN
	setflag FLAG_CHOSESTARTER2
	hidesprite 5
	setflag 0x956
	givepokemon SPECIES_SIGILYPH 5 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_PokemonChoiceLobby_PokemonChosen MSG_KEEPOPEN
	waitmsg
	waitfanfare
	msgbox gText_PokemonChoiceLobby_StarterNickname MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Starter_Nickname
	release
	goto EventScript_VermilionIntro_SibStarterSelect_WhichSib
	end

EventScript_VermilionIntro_Random_Ball2:
	callasm ShowSigilyphPicNoCry
	msgbox gText_PokemonChoiceLobby_Randomized MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Random_Chosen2
	hidepokepic
	release
	end
	
EventScript_Random_Chosen2:
	hidepokepic
	setflag 0x828
	setflag FLAG_STARTER_CHOSEN
	setflag FLAG_CHOSESTARTER2
	hidesprite 5
	setflag 0x956
	givepokemon SPECIES_SIGILYPH 5 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_PokemonChoiceLobby_PokemonChosenRandom MSG_KEEPOPEN
	waitmsg
	waitfanfare
	msgbox gText_PokemonChoiceLobby_StarterNicknameRandom MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Starter_Nickname
	release
	goto EventScript_VermilionIntro_RandomizedStartersForAll1
	end

.global EventScript_VermilionIntro_Passimian_Ball
EventScript_VermilionIntro_Passimian_Ball:
	checkflag 0x940
	if 0x1 _goto EventScript_VermilionIntro_Random_Ball3
	showpokepic SPECIES_PASSIMIAN 0xA 0x3
	bufferpokemon 0x0 SPECIES_PASSIMIAN
	setvar 0x4001 SPECIES_PASSIMIAN
	msgbox gText_PokemonChoiceLobby_PassimianBall MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Passimian_Chosen
	hidepokepic
	release
	end
	
EventScript_Passimian_Chosen:
	hidepokepic
	setflag 0x828
	setflag FLAG_STARTER_CHOSEN
	setflag FLAG_CHOSESTARTER3
	hidesprite 6
	setflag 0x957
	givepokemon SPECIES_PASSIMIAN 5 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_PokemonChoiceLobby_PokemonChosen MSG_KEEPOPEN
	waitmsg
	waitfanfare
	msgbox gText_PokemonChoiceLobby_StarterNickname MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Starter_Nickname
	release
	goto EventScript_VermilionIntro_SibStarterSelect_WhichSib
	end
	
EventScript_VermilionIntro_Random_Ball3:
	callasm ShowPassimianPicNoCry
	msgbox gText_PokemonChoiceLobby_Randomized MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Random_Chosen3
	hidepokepic
	release
	end
	
EventScript_Random_Chosen3:
	hidepokepic
	setflag 0x828
	setflag FLAG_STARTER_CHOSEN
	setflag FLAG_CHOSESTARTER3
	hidesprite 6
	setflag 0x957
	givepokemon SPECIES_PASSIMIAN 5 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_PokemonChoiceLobby_PokemonChosenRandom MSG_KEEPOPEN
	waitmsg
	waitfanfare
	msgbox gText_PokemonChoiceLobby_StarterNicknameRandom MSG_YESNO
	compare LASTRESULT 0x1
	goto_if_eq EventScript_Starter_Nickname
	goto EventScript_VermilionIntro_RandomizedStartersForAll1
	end
	
EventScript_Starter_Nickname:
	call 0x81A74EB
	checkflag 0x940
	if SET _goto EventScript_VermilionIntro_RandomizedStartersForAll1
	goto EventScript_VermilionIntro_SibStarterSelect_WhichSib
	release
	end

EventScript_VermilionIntro_SibStarterSelect_WhichSib:
	pause 0x5
	checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_VermilionIntro_SibStarterSelect_NameSherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_VermilionIntro_SibStarterSelect_NameBrandy
	end

EventScript_VermilionIntro_SibStarterSelect_NameSherry:
	loadpointer 0x0 gText_NameSherry
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	goto EventScript_VermilionIntro_SibStarterSelect
	end

EventScript_VermilionIntro_SibStarterSelect_NameBrandy:
	loadpointer 0x0 gText_NameBrandy
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	goto EventScript_VermilionIntro_SibStarterSelect
	end
	
EventScript_VermilionIntro_SibStarterSelect:
	msgbox gText_PokemonChoiceLobby_SibChoice1 MSG_KEEPOPEN
	applymovement 0x1 EventScript_Intro_SibTeaseRival1
	sound 0x1C
	pause 0x15
	applymovement 0x2 EventScript_Intro_EveryoneFaceDown
	applymovement 0x1 EventScript_Intro_SibTeaseRival2
	sound 0x15
	waitmovement 0x0
	pause 0x15
	closeonkeypress
	callasm 0x8FB0101
	checkflag FLAG_CHOSESTARTER1
	if SET _goto EventScript_VermilionIntro_Starter1_NowSibRivalChoose
	checkflag FLAG_CHOSESTARTER2
	if SET _goto EventScript_VermilionIntro_Starter2_NowSibRivalChoose
	checkflag FLAG_CHOSESTARTER3
	if SET _goto EventScript_VermilionIntro_Starter3_NowSibRivalChoose
	end
	
EventScript_VermilionIntro_Starter1_NowSibRivalChoose:
	applymovement 0x1 EventScript_Intro_SibToBall2
	waitmovement 0x0
	hidesprite 5
	setflag 0x956
	sound 0x17
	pause 0x20
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	applymovement 0x2 EventScript_Intro_RivalAngySteppy
	msgbox gText_PokemonChoiceLobby_RivalDestroyedOwnedBlastedSadTragic MSG_NORMAL
	callasm 0x8FB0101
	pause 0x10
	applymovement 0x2 EventScript_Intro_RivalToBall3
	waitmovement 0x0
	hidesprite 6
	setflag 0x957
	sound 0x17
	pause 0x20
	release
	goto EventScript_VermilionIntro_StartersComplain
	end

EventScript_VermilionIntro_Starter2_NowSibRivalChoose:
	applymovement 0x1 EventScript_Intro_SibToBall3
	waitmovement 0x0
	hidesprite 6
	setflag 0x957
	sound 0x17
	pause 0x20
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	applymovement 0x2 EventScript_Intro_RivalAngySteppy
	msgbox gText_PokemonChoiceLobby_RivalDestroyedOwnedBlastedSadTragic MSG_NORMAL
	callasm 0x8FB0101
	pause 0x10
	applymovement 0x2 EventScript_Intro_RivalToBall1
	waitmovement 0x0
	hidesprite 4
	setflag 0x955
	sound 0x17
	pause 0x20
	goto EventScript_VermilionIntro_StartersComplain
	release
	end

EventScript_VermilionIntro_Starter3_NowSibRivalChoose:
	applymovement 0x1 EventScript_Intro_SibToBall1
	waitmovement 0x0
	hidesprite 4
	setflag 0x955
	sound 0x17
	pause 0x2
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	applymovement 0x2 EventScript_Intro_RivalAngySteppy
	msgbox gText_PokemonChoiceLobby_RivalDestroyedOwnedBlastedSadTragic MSG_NORMAL
	callasm 0x8FB0101
	pause 0x10
	applymovement 0x2 EventScript_Intro_RivalToBall2
	waitmovement 0x0
	hidesprite 5
	setflag 0x956
	sound 0x17
	pause 0x20
	goto EventScript_VermilionIntro_StartersComplain
	release
	end
	
EventScript_VermilionIntro_StartersComplain:
	applymovement 0x2 EventScript_Intro_EveryoneFaceUp1
	pause 0x15
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_RivalChoice1 MSG_KEEPOPEN
	pause 0x5
	applymovement 0x1 EventScript_Intro_EveryoneFaceUp1
	applymovement 0xFF EventScript_Intro_EveryoneFaceUp1
	waitmovement 0x0
	pause 0x15
	applymovement 0x2 EventScript_Intro_RivalAngySteppyOnceMore
	msgbox gText_PokemonChoiceLobby_RivalChoice2 MSG_KEEPOPEN
	callasm 0x8FB0101
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_HatsumiDefense1 MSG_KEEPOPEN
	applymovement 0x3 EventScript_Intro_HatsumiNervous
	sound 0x9B
	pause 0x10
	sound 0x9B
	pause 0x10
	sound 0x9B
	pause 0x5
	sound 0x9B
	pause 0x5
	sound 0x9B
	waitmovement 0x0
	pause 0x15
	msgbox gText_PokemonChoiceLobby_HatsumiDefense2 MSG_KEEPOPEN
	callasm 0x8FB0101
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	applymovement 0x2 EventScript_Intro_RivalAngySteppyOnceMore
	msgbox gText_PokemonChoiceLobby_RivalChoice3 MSG_KEEPOPEN
	applymovement 0x3 EventScript_Intro_HatsumiNervous
	sound 0x9B
	pause 0x10
	sound 0x9B
	pause 0x10
	sound 0x9B
	pause 0x5
	sound 0x9B
	pause 0x5
	sound 0x9B
	callasm 0x8FB0101
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_HatsumiDefense3 MSG_KEEPOPEN
	callasm 0x8FB0101
	loadpointer 0x0 gText_NameHatsumi
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_HatsumiDefense4 MSG_KEEPOPEN
	callasm 0x8FB0101
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_RivalChoice4 MSG_KEEPOPEN
	callasm 0x8FB0101
	loadpointer 0x0 gText_NameHatsumi
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_HatsumiDefense5 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	callasm 0x8FB0101
	releaseall
	end
	
EventScript_VermilionIntro_RandomizedStartersForAll1:
	pause 0x20
	fadescreen 0x1
	pause 0x15
	hidesprite 4
	setflag 0x955
	hidesprite 5
	setflag 0x956
	hidesprite 6
	setflag 0x957
	sound 0x17
	msgbox gText_PokemonChoiceLobby_EveryoneRandomStarters MSG_NORMAL
	waitmsg
	checkflag FLAG_CHOSESTARTER1
	if SET _goto EventScript_VermilionIntro_Starter1_RandomSibRivalWarp
	checkflag FLAG_CHOSESTARTER2
	if SET _goto EventScript_VermilionIntro_Starter2_RandomSibRivalWarp
	checkflag FLAG_CHOSESTARTER3
	if SET _goto EventScript_VermilionIntro_Starter3_RandomSibRivalWarp
	end
	
EventScript_VermilionIntro_Starter1_RandomSibRivalWarp:
	movesprite 0x1 0x18 0xA
	movesprite 0x2 0x19 0xA
	applymovement 0xFF EventScript_WatchParty_LookUp
	applymovement 0x1 EventScript_WatchParty_LookUp
	applymovement 0x2 EventScript_WatchParty_LookUp
	pause 0x10
	goto EventScript_VermilionIntro_RandomizedStartersForAll2
	end

EventScript_VermilionIntro_Starter2_RandomSibRivalWarp:
	movesprite 0x1 0x19 0xA
	movesprite 0x2 0x17 0xA
	applymovement 0xFF EventScript_WatchParty_LookUp
	applymovement 0x1 EventScript_WatchParty_LookUp
	applymovement 0x2 EventScript_WatchParty_LookUp
	pause 0x10
	goto EventScript_VermilionIntro_RandomizedStartersForAll2
	end

EventScript_VermilionIntro_Starter3_RandomSibRivalWarp:
	movesprite 0x1 0x17 0xA
	movesprite 0x2 0x18 0xA
	applymovement 0xFF EventScript_WatchParty_LookUp
	applymovement 0x1 EventScript_WatchParty_LookUp
	applymovement 0x2 EventScript_WatchParty_LookUp
	pause 0x10
	goto EventScript_VermilionIntro_RandomizedStartersForAll2
	end

EventScript_VermilionIntro_RandomizedStartersForAll2:
	fadescreen 0x0
	pause 0x30
	loadpointer 0x0 gText_NameAide
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_HatsumiDefense_RandomizerOn MSG_KEEPOPEN
	callasm 0x8FB0101
	release
	end

EventScript_Intro_EveryoneFaceUp1:
	.byte look_up
	.byte 0xFE	

EventScript_Intro_EveryoneFaceUp2:
	.byte exclaim
	.byte look_up
	.byte 0xFE

EventScript_Intro_EveryoneFaceDown:
	.byte look_down
	.byte 0xFE
	
EventScript_Intro_EveryoneFaceRight:
	.byte look_right
	.byte 0xFE
	
EventScript_Intro_EveryoneFaceLeft1:
	.byte look_left
	.byte 0xFE
	
EventScript_Intro_EveryoneFaceLeft2:
	.byte exclaim
	.byte look_left
	.byte 0xFE
	
EventScript_Intro_RivalSteppy:
	.byte 0x28
	.byte 0xFE
	
EventScript_Intro_RivalMoveToHatsumi:
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte look_up
	.byte 0xFE
	
EventScript_Intro_HatsumiEnter1:
	.byte walk_down
	.byte walk_left
	.byte walk_left
	.byte walk_down
	.byte walk_down
	.byte 0xFE	

EventScript_Intro_HatsumiEnter2:
	.byte walk_down
	.byte 0xFE	

EventScript_Intro_HatsumiToBalls:
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_down
	.byte 0xFE

EventScript_Intro_PlayerToBalls:
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_down
	.byte 0xFE
	
EventScript_Intro_SibToBalls:
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte 0xFE
	
EventScript_Intro_RivalToBalls:
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte 0xFE
	
EventScript_Intro_SibTeaseRival1:
	.byte 0x53
	.byte 0xFE

EventScript_Intro_SibTeaseRival2:	
	.byte 0x66 
	.byte 0xFE

EventScript_Intro_SibToBall1:
	.byte walk_right
	.byte walk_down
	.byte 0xFE
	
EventScript_Intro_SibToBall2:
	.byte walk_right
	.byte walk_right
	.byte walk_down
	.byte 0xFE
	
EventScript_Intro_SibToBall3:
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_down
	.byte 0xFE
	
EventScript_Intro_RivalAngySteppy:
	.byte 0x25
	.byte 0x29
	.byte 0x25
	.byte 0xFE

EventScript_Intro_RivalAngySteppyOnceMore:
	.byte 0x2A
	.byte 0x22
	.byte 0xFE

EventScript_Intro_RivalToBall1:
	.byte walk_right
	.byte walk_down
	.byte walk_down
	.byte 0xFE	
	
EventScript_Intro_RivalToBall2:
	.byte walk_right
	.byte walk_right
	.byte walk_down
	.byte walk_down
	.byte 0xFE
	
EventScript_Intro_RivalToBall3:
	.byte walk_right
	.byte walk_right
	.byte walk_right
	.byte walk_down
	.byte walk_down
	.byte 0xFE
	
EventScript_Intro_HatsumiNervous:
	.byte 0x65
	.byte look_left
	.byte 0x1B
	.byte look_right
	.byte 0x1C
	.byte look_left
	.byte 0x1C
	.byte look_right
	.byte 0x1A
	.byte look_left
	.byte 0x1B
	.byte look_right
	.byte 0x1A
	.byte look_left
	.byte 0xFE

EventScript_Intro_PlayerAwayFromExit1:
	.byte walk_right
	.byte 0xFE

EventScript_Intro_PlayerAwayFromExit2:
	.byte walk_down
	.byte 0xFE
	
EventScript_Intro_SibWhereGoing1:
	setvar 0x511B 0x0
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_RivalWhereGoing MSG_NORMAL
	callasm 0x8FB0101
	applymovement 0xFF EventScript_Intro_PlayerAwayFromExit1
	waitmovement 0x0
	release
	end
	
EventScript_Intro_SibWhereGoing2:
	setvar 0x511B 0x0
	applymovement 0x2 EventScript_Intro_EveryoneFaceUp1
	loadpointer 0x0 gText_NameRival
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	msgbox gText_PokemonChoiceLobby_RivalWhereGoing MSG_NORMAL
	callasm 0x8FB0101
	applymovement 0x2 EventScript_Intro_EveryoneFaceRight
	applymovement 0xFF EventScript_Intro_PlayerAwayFromExit2
	waitmovement 0x0
	release
	end

.global EventScript_VermilionHotel_OakLabsTrainerSuite
EventScript_VermilionHotel_OakLabsTrainerSuite:
	msgbox gText_VermilionPortHotel_TrainerSuite MSG_SIGN
	end
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Indoor NPCs@@@@@@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
.global EventScript_VermilionHotel_KitchenNPC1
EventScript_VermilionHotel_KitchenNPC1:
	msgbox gText_VermilionPortHotel_KitchenNPC1 MSG_FACE
	end	
	
.global EventScript_VermilionHotel_KitchenNPC2
EventScript_VermilionHotel_KitchenNPC2:
	msgbox gText_VermilionPortHotel_KitchenNPC2 MSG_FACE
	end	
	
.global EventScript_VermilionHotel_KitchenNPC_HeadChef
EventScript_VermilionHotel_KitchenNPC_HeadChef:
	msgbox gText_VermilionPortHotel_KitchenNPC_HeadChef MSG_FACE
	end	
	
.global EventScript_VermilionHotel_LobbyNPC1
EventScript_VermilionHotel_LobbyNPC1:
	msgbox gText_VermilionPortHotel_LobbyNPC1 MSG_FACE
	end
	
.global EventScript_VermilionHotel_LobbyNPC2
EventScript_VermilionHotel_LobbyNPC2:
	msgbox gText_VermilionPortHotel_LobbyNPC2 MSG_FACE
	end

.global EventScript_VermilionHotel_LobbyTechnology
EventScript_VermilionHotel_Technology:
	msgbox gText_VermilionPortHotel_Technology MSG_FACE
	end	

.global EventScript_VermilionHotel_Receptionist
EventScript_VermilionHotel_Receptionist:
	msgbox gText_VermilionPortHotel_Receptionist MSG_FACE
	end		
	
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Hotel Guest NPCs@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
.global EventScript_VermilionHotel_PoketchDetective_TV
EventScript_VermilionHotel_PoketchDetective_TV:
	msgbox gText_VermilionPortHotel_PoketchDetective_TV MSG_NORMAL
	end
	
.global EventScript_VermilionHotel_PoketchDetective_WatchParty1
EventScript_VermilionHotel_PoketchDetective_WatchParty1:
	msgbox gText_VermilionPortHotel_PoketchDetective_NPC1 MSG_FACE
	applymovement 0x3 EventScript_WatchParty_LookUp
	waitmovement 0x0
	release
	end
	
.global EventScript_VermilionHotel_PoketchDetective_WatchParty2
EventScript_VermilionHotel_PoketchDetective_WatchParty2:
	msgbox gText_VermilionPortHotel_PoketchDetective_NPC2 MSG_FACE
	applymovement 0x1 EventScript_WatchParty_LookUp
	waitmovement 0x0
	release
	end
	
.global EventScript_VermilionHotel_PoketchDetective_WatchParty3
EventScript_VermilionHotel_PoketchDetective_WatchParty3:
	msgbox gText_VermilionPortHotel_PoketchDetective_NPC3 MSG_NORMAL
	release
	end
	
EventScript_WatchParty_LookUp:		
	.byte look_up
	.byte 0xFE
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Outdoor NPCs@@@@@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionPort_NPC1
EventScript_VermilionPort_NPC1:
	msgbox gText_VermilionPortAutorun MSG_FACE
	end

.global EventScript_VermilionPort_NPC2
EventScript_VermilionPort_NPC2:
	msgbox gText_VermilionPortNPC2 MSG_FACE
	end

.global EventScript_VermilionPort_NPC3
EventScript_VermilionPort_NPC3:
	msgbox gText_VermilionTruck1 MSG_FACE
	end

.global EventScript_VermilionPort_NPC4
EventScript_VermilionPort_NPC4:
	msgbox gText_VermilionPortNPC1 MSG_FACE
	end

.global EventScript_VermilionPort_NPC5
EventScript_VermilionPort_NPC5:
	msgbox gText_VermilionTruck2 MSG_FACE
	end

.global EventScript_VermilionPort_NPC6
EventScript_VermilionPort_NPC6:
	msgbox gText_VermilionPortNPC3 MSG_FACE
	end

