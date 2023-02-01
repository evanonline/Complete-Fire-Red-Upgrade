.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_STARTER_CHOSEN, 0x990
.equ FLAG_CHOSESTARTER1, 0x960
.equ FLAG_CHOSESTARTER2, 0x961
.equ FLAG_CHOSESTARTER3, 0x962
.equ FLAG_INTROCUTSCENE1, 0x95E
.equ FLAG_INTROCUTSCENE_DONE, 0x95F
.equ FLAG_RIVAL_1_CLEAR, 0x963

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
@;Baja Blastoise machine@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_BajaBlastoiseMachine
EventScript_BajaBlastoiseMachine:
	msgbox gText_VermilionPortHotel_BajaBlastoiseMachine MSG_YESNO
	compare LASTRESULT 0x0
	goto_if_eq EventScript_ReleaseEnd
	closeonkeypress
	call EventScript_Healing
	msgbox gText_VermilionPortHotel_BajaBlastoiseMachine_After MSG_NORMAL
	end

.global EventScript_Healing
EventScript_Healing:
	fadescreen 0x1
	fanfare 0x100
	waitfanfare
	special 0x0
	fadescreen 0x0
	return
	
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
	checkflag FLAG_INTROCUTSCENE_DONE
	if SET _goto EventScript_VermilionIntro_HideEverything
    end

EventScript_SetSibNPCAsBrandy2:
    setvar 0x5028 + 0x0 0
	checkflag FLAG_INTROCUTSCENE_DONE
	if SET _goto EventScript_VermilionIntro_HideEverything
    end
	
EventScript_VermilionIntro_HideEverything:
	setflag 0x952
	hidesprite 1
	setflag 0x953
	hidesprite 2
	setflag 0x954
	hidesprite 3
	setflag 0x955
	hidesprite 4
	setflag 0x956
	hidesprite 5
	setflag 0x957
	hidesprite 6
	end

.global EventScript_VermilionIntro_SibFirstMessage
EventScript_VermilionIntro_SibFirstMessage:
	setvar 0x511C 0x0
	sethealingplace 0x06 @sets healing place to Vermilion Pokemon Center.
	applymovement 0x1 EventScript_Intro_SibJumpy
	sound 0x1C
	sound 0x1C
	applymovement 0xFF EventScript_Intro_EveryoneFaceRight
	pause 0x5
	@call eventscript_nameSib
	msgbox gText_OpeningSibEntry MSG_KEEPOPEN
	closeonkeypress
	@callasm 0x8FB0101
	setvar 0x511C 0x1
	release
	end
	
.global EventScript_ReleaseEnd
EventScript_ReleaseEnd:
	release
	end
	
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Pokemon Choice pre-dialogue@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionIntro_Rival_First
EventScript_VermilionIntro_Rival_First:
	@call eventscript_nameRival
	checkflag FLAG_INTROCUTSCENE1
	if 0x1 _goto EventScript_VermilionIntro_Rival_Second
	msgbox gText_PokemonChoiceLobby_Rival_1 MSG_FACE
	@callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Rival_Second:
	checkflag FLAG_STARTER_CHOSEN
	if 0x1 _goto EventScript_VermilionIntro_Rival_Third
	msgbox gText_PokemonChoiceLobby_RivalIntertalk1 MSG_FACE
	@callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Rival_Third:
	checkflag 0x940
	if 0x1 _goto EventScript_VermilionIntro_Rival_Third_Rando
	msgbox gText_PokemonChoiceLobby_RivalIntertalk2 MSG_FACE
	@callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Rival_Third_Rando:
	msgbox gText_PokemonChoiceLobby_RivalIntertalk2_Rando MSG_FACE
	@callasm 0x8FB0101
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
	@call eventscript_nameSherry
	checkflag FLAG_INTROCUTSCENE1
	if 0x1 _goto EventScript_VermilionIntro_Sib_Second
	msgbox gText_PokemonChoiceLobby_SibSherry_1 MSG_FACE
	@callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Sib_First_Brandy:
	@call eventscript_nameBrandy
	checkflag FLAG_INTROCUTSCENE1
	if 0x1 _goto EventScript_VermilionIntro_Sib_Second
	msgbox gText_PokemonChoiceLobby_SibBrandy_1 MSG_FACE
	@callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Sib_Second:
	checkflag FLAG_STARTER_CHOSEN
	if 0x1 _goto EventScript_VermilionIntro_Sib_Third
	msgbox gText_PokemonChoiceLobby_SibIntertalk1 MSG_FACE
	@callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Sib_Third:
	checkflag 0x940
	if 0x1 _goto EventScript_VermilionIntro_Sib_Third_Rando
	msgbox gText_PokemonChoiceLobby_SibIntertalk2 MSG_FACE
	@callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Sib_Third_Rando:
	msgbox gText_PokemonChoiceLobby_SibIntertalk2_Rando MSG_FACE
	@callasm 0x8FB0101
	release
	end
	
.global EventScript_VermilionIntro2_HatsumiEnters
EventScript_VermilionIntro2_HatsumiEnters:
	checkflag FLAG_INTROCUTSCENE1
	if 0x1 _goto EventScript_Intro_SibWhereGoing1
	lockall
	setflag 0x95E
	setvar 0x511B 0x0
	@call eventscript_nameUnknown
	playsong 0x12E 0x0
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction1 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	@callasm 0x8FB0101
	applymovement 0x1 EventScript_Intro_EveryoneFaceUp2
	sound 0x15
	waitmovement 0x0
	applymovement 0xFF EventScript_Intro_EveryoneFaceUp2
	sound 0x15
	waitmovement 0x0
	applymovement 0x3 EventScript_Intro_HatsumiEnter1
	applymovement 0x2 EventScript_Intro_RivalMoveToHatsumi
	waitmovement 0x0
	@call eventscript_nameHatsumiAide
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction2 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	@callasm 0x8FB0101
	pause 0x25
	applymovement 0x3 EventScript_Intro_HatsumiEnter2
	pause 0x35
	@call eventscript_nameHatsumiAide
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction3 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	@callasm 0x8FB0101
	applymovement 0x3 EventScript_Intro_HatsumiEnter2
	pause 0x35
	@call eventscript_nameHatsumiAide
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction4 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	@callasm 0x8FB0101
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
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_Whisk_Introduction1 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	@callasm 0x8FB0101
	applymovement 0x3 EventScript_Intro_EveryoneFaceLeft2
	sound 0x15
	waitmovement 0x0
	pause 0x20
	@call eventscript_nameHatsumiAide
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction5 MSG_KEEPOPEN
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_Whisk_Introduction2 MSG_KEEPOPEN
	@callasm 0x8FB0101
	@call eventscript_nameHatsumiAide
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction6 MSG_KEEPOPEN
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_Whisk_Introduction3 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	@callasm 0x8FB0101
	pause 0x10
	applymovement 0x1 EventScript_Intro_SibToBalls
	applymovement 0x2 EventScript_Intro_RivalToBalls
	applymovement 0x3 EventScript_Intro_HatsumiToBalls
	applymovement 0xFF EventScript_Intro_PlayerToBalls
	waitmovement 0x0
	@callasm 0x8FB0101
	@call eventscript_nameHatsumiAide
	msgbox gText_PokemonChoiceLobby_Hatsumi_Introduction7 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	@callasm 0x8FB0101
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
	@call eventscript_nameHatsumiAide
	checkflag FLAG_STARTER_CHOSEN
	if 0x1 _goto EventScript_VermilionIntro_Hatsumi_GivesDaItems
	msgbox gText_PokemonChoiceLobby_HatsumiIntertalk1 MSG_FACE
	@callasm 0x8FB0101
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
	@call eventscript_nameSherry
	goto EventScript_VermilionIntro_SibStarterSelect
	end

EventScript_VermilionIntro_SibStarterSelect_NameBrandy:
	@call eventscript_nameBrandy
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
	@callasm 0x8FB0101
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
	@call eventscript_nameRival
	applymovement 0x2 EventScript_Intro_RivalAngySteppy
	msgbox gText_PokemonChoiceLobby_RivalDestroyedOwnedBlastedSadTragic MSG_NORMAL
	@callasm 0x8FB0101
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
	@call eventscript_nameRival
	applymovement 0x2 EventScript_Intro_RivalAngySteppy
	msgbox gText_PokemonChoiceLobby_RivalDestroyedOwnedBlastedSadTragic MSG_NORMAL
	@callasm 0x8FB0101
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
	@call eventscript_nameRival
	applymovement 0x2 EventScript_Intro_RivalAngySteppy
	msgbox gText_PokemonChoiceLobby_RivalDestroyedOwnedBlastedSadTragic MSG_NORMAL
	@callasm 0x8FB0101
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
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalChoice1 MSG_KEEPOPEN
	pause 0x5
	applymovement 0x1 EventScript_Intro_EveryoneFaceUp1
	applymovement 0xFF EventScript_Intro_EveryoneFaceUp1
	waitmovement 0x0
	pause 0x15
	applymovement 0x2 EventScript_Intro_RivalAngySteppyOnceMore
	msgbox gText_PokemonChoiceLobby_RivalChoice2 MSG_KEEPOPEN
	@callasm 0x8FB0101
	@call eventscript_nameHatsumiAide
	msgbox gText_PokemonChoiceLobby_HatsumiDefense1 MSG_KEEPOPEN
	call EventScript_HatsumiNervousShuffle
	waitmovement 0x0
	pause 0x15
	msgbox gText_PokemonChoiceLobby_HatsumiDefense2 MSG_KEEPOPEN
	@callasm 0x8FB0101
	@call eventscript_nameRival
	applymovement 0x2 EventScript_Intro_RivalAngySteppyOnceMore
	msgbox gText_PokemonChoiceLobby_RivalChoice3 MSG_KEEPOPEN
	call EventScript_HatsumiNervousShuffle
	@callasm 0x8FB0101
	@call eventscript_nameHatsumiAide
	msgbox gText_PokemonChoiceLobby_HatsumiDefense3 MSG_KEEPOPEN
	@callasm 0x8FB0101
	@call eventscript_nameHatsumi
	msgbox gText_PokemonChoiceLobby_HatsumiDefense4 MSG_KEEPOPEN
	@callasm 0x8FB0101
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalChoice4 MSG_KEEPOPEN
	@callasm 0x8FB0101
	@call eventscript_nameHatsumi
	msgbox gText_PokemonChoiceLobby_HatsumiDefense5 MSG_KEEPOPEN
	waitmsg
	closeonkeypress
	@callasm 0x8FB0101
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
	@call eventscript_nameHatsumi
	msgbox gText_PokemonChoiceLobby_HatsumiDefense_RandomizerOn MSG_KEEPOPEN
	@callasm 0x8FB0101
	release
	end
	
EventScript_VermilionIntro_Hatsumi_GivesDaItems:
	msgbox gText_PokemonChoiceLobby_HatsumiPackage MSG_FACE
	@callasm 0x8FB0101
	pause 0x20
	fadescreen 0x1
	pause 0x15
	movesprite 0x1 0x1A 0x8
	movesprite 0x2 0x1B 0x8
	applymovement 0x1 EventScript_Intro_EveryoneFaceDown
	applymovement 0x2 EventScript_Intro_EveryoneFaceDown
	compare PLAYERFACING 0x1
	if 0x1 _call EventScript_MoveSibIfCentered
	msgbox gText_PokemonChoiceLobby_YouGotStuff MSG_KEEPOPEN
	fanfare 0x13E
	waitfanfare
	setflag 0x829
	setflag 0x91E
	special 0x16F
	additem ITEM_POKE_BALL 0x5
	additem ITEM_HEAL_BALL 0x1
	additem ITEM_POTION 0x1
	additem ITEM_BERRY_POUCH 0x1
	additem ITEM_TM_CASE 0x1
	additem ITEM_TOWN_MAP 0x1
	additem ITEM_EXP_SHARE 0x1
	additem ITEM_VS_SEEKER 0x1
	additem ITEM_ITEMFINDER 0x1
	additem ITEM_OLD_ROD 0x1
	additem ITEM_MEGA_RING 0x1
	additem ITEM_Z_POWER_RING 0x1
	additem ITEM_DYNAMAX_BAND 0x1
	pause 0x20
	msgbox gText_PokemonChoiceLobby_OthersGotStuff MSG_KEEPOPEN
	fanfare 0x13E
	waitfanfare
	closeonkeypress
	fadescreen 0x0
	pause 0x30
	playsong 0x12E 0x0
	@call eventscript_nameHatsumi
	msgbox gText_PokemonChoiceLobby_HatsumiExplainStuff MSG_NORMAL
	applymovement 0x2 EventScript_Intro_ExclaimSlowSteppy
	sound 0x15
	waitmovement 0x0
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalComplainAgain MSG_KEEPOPEN
	@call eventscript_nameHatsumi
	applymovement 0x3 EventScript_Intro_EveryoneFaceUp1
	msgbox gText_PokemonChoiceLobby_HatsumiExplainAgain MSG_KEEPOPEN
	applymovement 0x1 EventScript_Intro_RivalAngySteppy
	pause 0x10
	@call eventscript_nameSib
	msgbox gText_PokemonChoiceLobby_SibApologize MSG_KEEPOPEN
	applymovement 0x2 EventScript_Intro_EveryoneFaceLeft2
	sound 0x15
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalWeenified MSG_KEEPOPEN
	@call eventscript_nameHatsumi
	msgbox gText_PokemonChoiceLobby_HatsumiFinal1 MSG_KEEPOPEN
	applymovement 0x2 EventScript_Intro_EveryoneFaceDown
	call EventScript_HatsumiNervousShuffle
	waitmovement 0x0
	pause 0x15
	msgbox gText_PokemonChoiceLobby_HatsumiFinal2 MSG_KEEPOPEN
	compare PLAYERFACING 0x1
	if 0x1 _call EventScript_PlayerGottaShuffle1
	compare PLAYERFACING 0x2
	if 0x1 _call EventScript_SibGottaShuffle1
	compare PLAYERFACING 0x3
	if 0x1 _call EventScript_SibGottaShuffle1
	compare PLAYERFACING 0x4
	if 0x1 _call EventScript_SibGottaShuffle1
	applymovement 0x3 EventScript_HatsumiLeaveSuites1
	sound 0x7
	waitmovement 0x0
	compare PLAYERFACING 0x1
	if 0x1 _call EventScript_PlayerGottaShuffle2
	compare PLAYERFACING 0x2
	if 0x1 _call EventScript_SibGottaShuffle2
	compare PLAYERFACING 0x3
	if 0x1 _call EventScript_SibGottaShuffle2
	compare PLAYERFACING 0x4
	if 0x1 _call EventScript_SibGottaShuffle2
	pause 0x5
	applymovement 0x1 EventScript_Intro_EveryoneFaceUp1
	applymovement 0x2 EventScript_Intro_EveryoneFaceUp1
	applymovement 0x3 EventScript_HatsumiLeaveSuites2
	sound 0xA4
	pause 0x20
	sound 0xC1
	waitmovement 0x0
	sound 0x9
	applymovement 0xFF EventScript_Intro_EveryoneFaceUp1
	hidesprite 3
	setvar 0x511B 0x1
	pause 0x20
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalUnimpressed MSG_KEEPOPEN
	applymovement 0x1 EventScript_Intro_RivalAngySteppyOnceMore
	@call eventscript_nameSib
	checkflag FLAG_CHOSESTARTER1
	if SET _call EventScript_SibHypedForSigilyph
	checkflag FLAG_CHOSESTARTER2
	if SET _call EventScript_SibHypedForPassimian
	checkflag FLAG_CHOSESTARTER3
	if SET _call EventScript_SibHypedForRelicanth
	applymovement 0x1 EventScript_Intro_SibTeaseRival1
	sound 0x1C
	pause 0x15
	applymovement 0x1 EventScript_Intro_SibTeaseRival2
	sound 0x15
	pause 0x10
	applymovement 0x1 EventScript_SibLeavesLobby
	waitmovement 0x0
	pause 0x10
	hidesprite 1
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalAngyAngy1 MSG_KEEPOPEN
	applymovement 0x2 EventScript_RivalLeavesLobby1
	waitmovement 0x0
	sound 0x42
	checksound
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalAngyAngy2 MSG_NORMAL
	@callasm 0x8FB0101
	applymovement 0x2 EventScript_RivalLeavesLobby2
	waitmovement 0x0
	pause 0x15
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalAngyAngy3 MSG_KEEPOPEN
	@callasm 0x8FB0101
	closeonkeypress
	setflag 0x952
	setflag 0x953
	setflag FLAG_INTROCUTSCENE_DONE
	hidesprite 2
	setflag 0x954
	pause 0x20
	fadedefault
	releaseall
	end
	
EventScript_PlayerGottaShuffle1:
	applymovement 0xFF EventScript_MovePlayerHatsumiLeave1
	return
	
EventScript_SibGottaShuffle1:
	applymovement 0x1 EventScript_MovePlayerHatsumiLeave1
	return

EventScript_PlayerGottaShuffle2:
	applymovement 0xFF EventScript_MovePlayerHatsumiLeave2
	waitmovement 0x0
	return
	
EventScript_SibGottaShuffle2:
	applymovement 0x1 EventScript_MovePlayerHatsumiLeave2
	waitmovement 0x0
	return
	
EventScript_HatsumiNervousShuffle:
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
	return

EventScript_SibHypedForSigilyph:
	msgbox gText_PokemonChoiceLobby_SibOuttaHere1 MSG_NORMAL
	@callasm 0x8FB0101
	return

EventScript_SibHypedForPassimian:
	msgbox gText_PokemonChoiceLobby_SibOuttaHere2 MSG_NORMAL
	@callasm 0x8FB0101
	return

EventScript_SibHypedForRelicanth:
	msgbox gText_PokemonChoiceLobby_SibOuttaHere3 MSG_NORMAL
	@callasm 0x8FB0101
	return

EventScript_MoveSibIfCentered:
	movesprite 0x1 0x19 0x8
	applymovement 0x1 EventScript_Intro_EveryoneFaceDown
	return

EventScript_Intro_SibJumpy:
	.byte 0x54
	.byte 0xFE

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
	
EventScript_Intro_ExclaimSlowSteppy:
	.byte exclaim
	.byte 0x29
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
	
EventScript_MovePlayerHatsumiLeave1:
	.byte 0x36
	.byte 0x36
	.byte look_down
	.byte 0xFE
	
EventScript_HatsumiLeaveSuites1:
	.byte 0x36
	.byte 0x36
	.byte 0x38
	.byte 0xFE

EventScript_HatsumiLeaveSuites2:
	.byte 0x28
	.byte 0x28
	.byte 0x2C
	.byte 0x2A
	.byte 0x2A
	.byte 0x2A
	.byte 0x2A
	.byte 0x18
	.byte 0x36
	.byte 0x36
	.byte 0x36
	.byte 0x38
	.byte 0x38
	.byte 0xFE

EventScript_MovePlayerHatsumiLeave2:
	.byte 0x31
	.byte 0x31
	.byte look_up
	.byte 0xFE
	
EventScript_SibLeavesLobby:
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0x3E
	.byte 0xFE
	
EventScript_RivalLeavesLobby1:
	.byte 0x32
	.byte 0x32
	.byte 0x32
	.byte 0x33
	.byte 0xFE

EventScript_RivalLeavesLobby2:
	.byte 0x33
	.byte 0x32
	.byte 0x32
	.byte 0x32
	.byte 0xFE

EventScript_Intro_SibWhereGoing1:
	setvar 0x511B 0x0
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalWhereGoing MSG_NORMAL
	@callasm 0x8FB0101
	applymovement 0xFF EventScript_Intro_PlayerAwayFromExit1
	waitmovement 0x0
	release
	end
	
EventScript_Intro_SibWhereGoing2:
	setvar 0x511B 0x0
	@call eventscript_nameRival
	msgbox gText_PokemonChoiceLobby_RivalWhereGoing MSG_NORMAL
	@callasm 0x8FB0101
	applymovement 0xFF EventScript_Intro_PlayerAwayFromExit2
	waitmovement 0x0
	release
	end
	
.global EventScript_VermilionHotel_OakLabsTrainerSuite
EventScript_VermilionHotel_OakLabsTrainerSuite:
	msgboxsign
	msgbox gText_VermilionPortHotel_TrainerSuite MSG_SIGN
	end

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Roadblock NPCs@@@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionHotel_HallwayClowns
EventScript_VermilionHotel_HallwayClowns:
	msgbox gText_VermilionPortHotel_HallwayClowns MSG_NORMAL
	closeonkeypress
	end
	
.global EventScript_VermilionHotel_ConfusedJanitor
EventScript_VermilionHotel_ConfusedJanitor:
	msgbox gText_VermilionPortHotel_JanitorBlocking MSG_FACE
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
@;Rival Battle 1@@@@@@@@@@@@@@@@@@@@@@
@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionPort_RivalBattle1
EventScript_VermilionPort_RivalBattle1:
	lockall
	setvar 0x511D 0x0
	applymovement 0x7 EventScript_Intro_ExclaimOnly
	sound 0x15
	waitmovement 0x0
	pause 0x20
	applymovement 0x7 EventScript_Intro_EveryoneFaceUp1
	msgbox gText_VermilionPortHotel_RivalFight1_SeesYou MSG_KEEPOPEN
	checkflag FLAG_CHOSESTARTER1
	if SET _goto EventScript_VermilionPort_RivalBattle1_Starter1
	checkflag FLAG_CHOSESTARTER2
	if SET _goto EventScript_VermilionPort_RivalBattle1_Starter2
	checkflag FLAG_CHOSESTARTER3
	if SET _goto EventScript_VermilionPort_RivalBattle1_Starter3
	end
	
EventScript_VermilionPort_RivalBattle1_Starter1: @Starter was Relicanth, rival uses Passimian
	trainerbattle9 0x9 0xD 0x0 gText_VermilionPortHotel_RivalFight1_Lose gText_VermilionPortHotel_RivalFight1_Win
	special 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_VermilionPort_PlayerBeatRival
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_VermilionPort_RivalBeatPlayer
	end
	
EventScript_VermilionPort_RivalBattle1_Starter2: @Starter was Sigilyph, rival uses Relicanth
	trainerbattle9 0x9 0xE 0x0 gText_VermilionPortHotel_RivalFight1_Lose gText_VermilionPortHotel_RivalFight1_Win
	special 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_VermilionPort_PlayerBeatRival
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_VermilionPort_RivalBeatPlayer
	end
	
EventScript_VermilionPort_RivalBattle1_Starter3: @Starter was Passimian, rival uses Sigilyph
	trainerbattle9 0x9 0xF 0x0 gText_VermilionPortHotel_RivalFight1_Lose gText_VermilionPortHotel_RivalFight1_Win
	special 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_VermilionPort_PlayerBeatRival
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_VermilionPort_RivalBeatPlayer
	end

EventScript_VermilionPort_PlayerBeatRival:
	msgbox gText_VermilionPortHotel_RivalFight1_After1_PlayerWin1 MSG_KEEPOPEN
	closeonkeypress
	fadescreen 0x1
	sound 0x1
	checksound
	special 0x0
	fadescreen 0x0
	msgbox gText_VermilionPortHotel_RivalFight1_After1_PlayerWin2 MSG_KEEPOPEN
	goto EventScript_VermilionPort_RivalEndTalk
	end

EventScript_VermilionPort_RivalBeatPlayer:
	msgbox gText_VermilionPortHotel_RivalFight1_After1_PlayerLose1 MSG_KEEPOPEN
	closeonkeypress
	fadescreen 0x1
	sound 0x1
	checksound
	special 0x0
	fadescreen 0x0
	msgbox gText_VermilionPortHotel_RivalFight1_After1_PlayerLose2 MSG_KEEPOPEN
	goto EventScript_VermilionPort_RivalEndTalk
	end
	
EventScript_VermilionPort_RivalEndTalk:
	checkflag FLAG_CHOSESTARTER1
	if SET _call EventScript_RivalApologizePassimian
	checkflag FLAG_CHOSESTARTER2
	if SET _call EventScript_RivalApologizeRelicanth
	checkflag FLAG_CHOSESTARTER3
	if SET _call EventScript_RivalApologizeSigilyph
	msgbox gText_VermilionPortHotel_RivalFight1_After3 MSG_KEEPOPEN
	closeonkeypress
	applymovement 0x7 EventScript_Intro_RivalLeavesHotel
	waitmovement 0x0
	pause 0x5
	setflag FLAG_RIVAL_1_CLEAR
	setflag 0x958
	setflag 0x959
	hidesprite 7
	setvar 0x511D 0x1
	end

EventScript_RivalApologizePassimian:
	msgbox gText_VermilionPortHotel_RivalFight1_After2_PlayerChoseRelicanth MSG_KEEPOPEN
	return

EventScript_RivalApologizeRelicanth:
	msgbox gText_VermilionPortHotel_RivalFight1_After2_PlayerChoseSigilyph MSG_KEEPOPEN
	return

EventScript_RivalApologizeSigilyph:
	msgbox gText_VermilionPortHotel_RivalFight1_After2_PlayerChosePassimian MSG_KEEPOPEN
	return

EventScript_Intro_ExclaimOnly:
	.byte exclaim
	.byte 0xFE

EventScript_Intro_RivalLeavesHotel:
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte walk_down
	.byte 0xFE

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@;Permanent Hotel Guest NPCs@@@@@@@@@@
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
	applymovement 0x2 EventScript_Intro_EveryoneFaceRight
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

.global EventScript_VermilionPort_VermilionHotelSign
EventScript_VermilionPort_VermilionHotelSign:
	msgboxsign
	msgbox gText_VermilionPort_VermilionHotelSign MSG_SIGN
	end

.global EventScript_VermilionPort_VermilionHotelTourismBoard
EventScript_VermilionPort_VermilionHotelTourismBoard:
	setvar 0x8006 0x0
	loadpointer 0x0 sText_VermilionPortTourismBoardOption1
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 sText_VermilionPortTourismBoardOption2
	special 0x25
	preparemsg gText_VermilionPortTourismBoardIntro
	waitmsg
	multichoice 0x0 0x0 0x20 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_VermilionPort_Tourism1
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_VermilionPort_Tourism2
	goto EventScript_VermilionPort_TourismEnd
	end
	
 EventScript_VermilionPort_Tourism1:
	msgboxsign
	msgbox gText_VermilionPortTourismBoardText1 MSG_KEEPOPEN
	msgboxnormal
	msgbox gText_VermilionPortTourismBoardText1_TornOffEnd MSG_KEEPOPEN
	goto EventScript_VermilionPort_VermilionHotelTourismBoard
	end
	
 EventScript_VermilionPort_Tourism2:
	msgboxsign
	msgbox gText_VermilionPortTourismBoardText2 MSG_KEEPOPEN
	msgboxnormal
	goto EventScript_VermilionPort_VermilionHotelTourismBoard
	end
	
EventScript_VermilionPort_TourismEnd:
	closeonkeypress
	release
	end
	
EventScript_VermilionPort_SeviiFerrySailor:
	msgbox gText_VermilionPort_SeviiSailor MSG_FACE
	end
	