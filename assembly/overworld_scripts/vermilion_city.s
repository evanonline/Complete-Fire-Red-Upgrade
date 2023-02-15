.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ FLAG_VISQUEZ_IS_HOME, 0x995
.equ FLAG_RIVAL_WHINE_SEEN, 0x964

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_VermilionCity_MapScript

gMapScripts_VermilionCity:
    mapscript MAP_SCRIPT_ON_TRANSITION, EventScript_VermilionCity_MapScript
    .byte MAP_SCRIPT_TERMIN

EventScript_VermilionCity_MapScript:
	checkflag 0x964
	if SET _call EventScript_VermilionCity_MoveRival
	end

EventScript_VermilionCity_MoveRival:
	movesprite2 0x5 0x10 0x1B
	spritebehave 0x5 0x9
	return

.global EventScript_VermilionCity_NPC_Tree
EventScript_VermilionCity_NPC_Tree:
	msgbox gText_VermilionCityNPC_CutTreeGone MSG_FACE
	end

.global EventScript_VermilionCity_NPC_Pollution
EventScript_VermilionCity_NPC_Pollution:
	msgbox gText_VermilionCityNPC_Pollution MSG_FACE
	end

.global EventScript_VermilionCity_NPC_Sitizen
EventScript_VermilionCity_NPC_Sitizen:
	msgbox gText_VermilionCityNPC_Sitizen MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_SailorSSAnne
EventScript_VermilionCity_NPC_SailorSSAnne:
	msgbox gText_VermilionCityNPC_SailorSSAnne MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_CalebsFriend
EventScript_VermilionCity_NPC_CalebsFriend:
	msgbox gText_VermilionCityNPC_CalebVsAnnihilape MSG_FACE
	end	

.global EventScript_VermilionCity_NPC_CoolLass
EventScript_VermilionCity_NPC_CoolLass:
	msgbox gText_VermilionCityNPC_CoolLass MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_NamesHater
EventScript_VermilionCity_NPC_NamesHater:
	msgbox gText_VermilionCityNPC_NamesHater MSG_FACE
	end

.global EventScript_VermilionCity_NPC_NostalgiaKid
EventScript_VermilionCity_NPC_NostalgiaKid:
	msgbox gText_VermilionCityNPC_Nostalgic MSG_FACE
	end

.global EventScript_VermilionCity_FanClubOwner
EventScript_VermilionCity_FanClubOwner:
	msgbox gText_VermilionCity_FanClubOwner MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_Sceptile
EventScript_VermilionCity_NPC_Sceptile:
	cry SPECIES_SCEPTILE 0x0
	msgbox gText_VermilionCity_Sceptile MSG_FACE
	end	

.global EventScript_VermilionCity_NPC_Yamper
EventScript_VermilionCity_NPC_Yamper:
	cry SPECIES_YAMPER 0x0
	msgbox gText_VermilionCity_Yamper MSG_FACE
	end	

.global EventScript_VermilionCity_NPC_SceptileOwner
EventScript_VermilionCity_NPC_SceptileOwner:
	msgbox gText_VermilionCityNPC_SceptileOwner MSG_FACE
	end

.global EventScript_VermilionCity_NPC_YamperOwner
EventScript_VermilionCity_NPC_YamperOwner:
	msgbox gText_VermilionCityNPC_YamperOwner MSG_FACE
	end

.global EventScript_VermilionCity_NPC_FishingGuru
EventScript_VermilionCity_NPC_FishingGuru:
	msgbox gText_VermilionCityNPC_FishingGuru MSG_FACE
	end

.global EventScript_VermilionCity_NPC_MagikarpFlop
EventScript_VermilionCity_NPC_MagikarpFlop:
	cry SPECIES_MAGIKARP 0x0
	msgbox gText_VermilionCityNPC_MagikarpFlop MSG_FACE
	end

.global EventScript_VermilionCity_NPC_TypesSame
EventScript_VermilionCity_NPC_TypesSame:
	msgbox gText_VermilionCityNPC_TypesSame MSG_FACE
	end

.global EventScript_VermilionCity_NPC_HighExpectations
EventScript_VermilionCity_NPC_HighExpectations:
	msgbox gText_VermilionCityNPC_HighExpectations MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_PaldeaSandwichCritic
EventScript_VermilionCity_NPC_PaldeaSandwichCritic:
	msgbox gText_VermilionCityNPC_PaldeaSandwichCritic MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_PaldeaLetter
EventScript_VermilionCity_NPC_PaldeaLetter:
	msgbox gText_VermilionCityNPC_PaldeaLetter MSG_SIGN
	end

.global EventScript_VermilionCity_NPC_EvioliteDiscovery
EventScript_VermilionCity_NPC_EvioliteDiscovery:
	msgbox gText_VermilionCityNPC_EvioliteDiscovery MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_SadTinkatonExpert
EventScript_VermilionCity_NPC_SadTinkatonExpert:
	msgbox gText_VermilionCityNPC_SadTinkatonExpert MSG_FACE
	end

.global EventScript_VermilionCity_NPC_Primeape
EventScript_VermilionCity_NPC_Primeape:
	cry SPECIES_PRIMEAPE 0x0
	msgbox gText_VermilionCityNPC_PrimeapeChatter MSG_FACE
	end

.global EventScript_VermilionCity_NPC_TeamRocketRemember
EventScript_VermilionCity_NPC_TeamRocketRemember:
	msgbox gText_VermilionCityNPC_TeamRocketMemory MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_MoneyCountingGirl
EventScript_VermilionCity_NPC_MoneyCountingGirl:
	msgbox gText_VermilionCityNPC_MoneySucks MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_NicknameHint
EventScript_VermilionCity_NPC_NicknameHint:
	msgbox gText_VermilionCityNPC_Calvervtutrp MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_BuildingLore
EventScript_VermilionCity_NPC_BuildingLore:
	msgbox gText_VermilionCityNPC_CoolFinally MSG_FACE
	end
	
.global EventScript_VermilionCity_NPC_RomhackGuyLeft
EventScript_VermilionCity_NPC_RomhackGuyLeft:
	msgbox gText_VermilionCityNPC_FunnyRomhackGuy1 MSG_KEEPOPEN
	applymovement 0x1 NPCFacePlayer
	msgbox gText_VermilionCityNPC_FunnyRomhackGuy2_FunnyRed MSG_NORMAL
	closeonkeypress
	applymovement 0x1 FaceDown 
	end
	
.global EventScript_VermilionCity_NPC_RomhackGuyRight
EventScript_VermilionCity_NPC_RomhackGuyRight:
	msgbox gText_VermilionCityNPC_FunnyRomhackGuy1 MSG_KEEPOPEN
	applymovement 0x2 NPCFacePlayer
	msgbox gText_VermilionCityNPC_FunnyRomhackGuy2_LaughGreen MSG_NORMAL
	closeonkeypress
	applymovement 0x2 FaceDown
	end

.global EventScript_VermilionCity_NPC_Water
EventScript_VermilionCity_NPC_Water:
	msgbox gText_VermilionCityNPC_Water MSG_FACE
	applymovement 0x2 FaceUp
	end
	
.global EventScript_VermilionPortDirections_Sign
EventScript_VermilionPortDirections_Sign:
	msgboxsign
	msgbox gText_VermilionPortSign MSG_SIGN
	end

.global EventScript_CeriseLab_Sign
EventScript_CeriseLab_Sign:
	msgboxsign
	msgbox gText_CeriseLabSign MSG_SIGN
	end
	
.global EventScript_VermilionCity_RivalDisappointJog
EventScript_VermilionCity_RivalDisappointJog:
	setvar 0x4011 0x1
	lockall
	setflag FLAG_RIVAL_WHINE_SEEN
	msgbox gText_VermilionCity_RivalCutscene1Rival1 MSG_NORMAL
	applymovement 0x5 RivalToDiglettCave
	waitmovement 0x0
	pause 0x30
	msgbox gText_VermilionCity_RivalCutscene1DotDotDot MSG_NORMAL
	applymovement 0x5 RivalFromDiglettCave
	waitmovement 0x0
	msgbox gText_VermilionCity_RivalCutscene1Rival2 MSG_KEEPOPEN
	pause 0x5
	applymovement 0x5 RivalToGym
	waitmovement 0x0
	movesprite 0x5 0x10 0x1B
	call EventScript_VermilionCity_MoveRival
	closeonkeypress
	release
	end
	
@@@need map script to place rival on load after rival whine flag is set, and also to destroy him when player leaves Vermilion / enters Iced Path
	
NPCFacePlayer:
	.byte 0x4A
	.byte 0xFE	

FaceUp:
	.byte look_up
	.byte 0xFE	

FaceDown:
	.byte look_down
	.byte 0xFE
	
RivalToDiglettCave:
	.byte 0x34
	.byte 0x34
	.byte 0x34
	.byte 0x34
	.byte 0x34
	.byte 0x32
	.byte 0x32
	.byte 0x32
	.byte 0x32
	.byte 0xFE
	
RivalFromDiglettCave:
	.byte 0x31
	.byte 0x31
	.byte 0x31
	.byte 0x31
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0xFE

RivalToGym:
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x33
	.byte 0x37
	.byte 0x37
	.byte 0x37
	.byte 0xFE
	