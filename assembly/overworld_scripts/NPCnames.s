.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

EventScript_NameboxVarASM:
	setvar 0x8000 0x1
	setvar 0x8001 0xB
	setvar 0x8002 0x8
	setvar 0x8003 0x2
	callasm 0x8FB0001
	return

.global EventScript_NamePlayer
EventScript_NamePlayer:
	loadpointer 0x0 gText_NamePlayer
	call EventScript_NameboxVarASM
	return

.global EventScript_NameUnknown
EventScript_NameUnknown:
	loadpointer 0x0 gText_NameUnknown
	call EventScript_NameboxVarASM
	return

.global EventScript_NameSib
EventScript_NameSib:
	checkgender
	compare LASTRESULT 0x0
    if 0x1 _goto EventScript_NameSherry
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_NameBrandy
    end

.global EventScript_NameSherry
EventScript_NameSherry:
	loadpointer 0x0 gText_NameSherry
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameBrandy
EventScript_NameBrandy:
	loadpointer 0x0 gText_NameBrandy
	call EventScript_NameboxVarASM
	return

.global EventScript_NameRival
EventScript_NameRival:
	loadpointer 0x0 gText_NameRival
	call EventScript_NameboxVarASM
	return

.global EventScript_NameIndigoPC
EventScript_NameIndigoPC:
	loadpointer 0x0 gText_NameIndigoPC
	call EventScript_NameboxVarASM
	return

.global EventScript_NameHatsumi
EventScript_NameHatsumi:
	loadpointer 0x0 gText_NameHatsumi
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameHatsumiAide
EventScript_NameHatsumiAide:
	loadpointer 0x0 gText_NameAide
	call EventScript_NameboxVarASM
	return

.global EventScript_NameBrendan
EventScript_NameBrendan:
	loadpointer 0x0 gText_NameBrendan
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameMint
EventScript_NameMint:
	loadpointer 0x0 gText_NameMint
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameGarchompGavin
EventScript_NameGarchompGavin:
	loadpointer 0x0 gText_NameGarchompGavin
	call EventScript_NameboxVarASM
	return

.global EventScript_NameEmily
EventScript_NameEmily:
	loadpointer 0x0 gText_NameEmily
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameCharlotte
EventScript_NameCharlotte:
	loadpointer 0x0 gText_NameCharlotte
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameMom
EventScript_NameMom:
	loadpointer 0x0 gText_NameMom
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameDad
EventScript_NameDad:
	loadpointer 0x0 gText_NameDad
	call EventScript_NameboxVarASM
	return

.global EventScript_NameRivalDad
EventScript_NameRivalDad:
	loadpointer 0x0 gText_NameRivalDad
	call EventScript_NameboxVarASM
	return

.global EventScript_NameSilver
EventScript_NameSilver:
	loadpointer 0x0 gText_NameSilver
	call EventScript_NameboxVarASM
	return

.global EventScript_NameSnowMiku
EventScript_NameSnowMiku:
	loadpointer 0x0 gText_NameSnowMiku
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameMiku
EventScript_NameMiku:
	loadpointer 0x0 gText_NameMiku
	call EventScript_NameboxVarASM
	return

.global EventScript_NameAuntPeppy
EventScript_NameAuntPeppy:
	loadpointer 0x0 gText_NameAuntPeppy
	call EventScript_NameboxVarASM
	return

.global EventScript_NameZakBagon
EventScript_NameZakBagon:
	loadpointer 0x0 gText_NameZakBagon
	call EventScript_NameboxVarASM
	return

.global EventScript_NameLillie
EventScript_NameLillie:
	loadpointer 0x0 gText_NameLillie
	call EventScript_NameboxVarASM
	return

.global EventScript_NameKylie
EventScript_NameKylie:
	loadpointer 0x0 gText_NameKylie
	call EventScript_NameboxVarASM
	return

.global EventScript_NameSamurai
EventScript_NameSamurai:
	loadpointer 0x0 gText_NameSamurai
	call EventScript_NameboxVarASM
	return

.global EventScript_NameOak
EventScript_NameOak:
	loadpointer 0x0 gText_NameOak
	call EventScript_NameboxVarASM
	return

.global EventScript_NameProfOak
EventScript_NameProfOak:
	loadpointer 0x0 gText_NameProfOak
	call EventScript_NameboxVarASM
	return

.global EventScript_NameImpostorOak
EventScript_NameImpostorOak:
	loadpointer 0x0 gText_NameImpostorOak
	call EventScript_NameboxVarASM
	return

.global EventScript_NameProfCerise
EventScript_NameProfCerise:
	loadpointer 0x0 gText_NameProfCerise
	call EventScript_NameboxVarASM
	return

.global EventScript_NameProfIvy
EventScript_NameProfIvy:
	loadpointer 0x0 gText_NameProfIvy
	call EventScript_NameboxVarASM
	return

.global EventScript_NameChloe
EventScript_NameChloe:
	loadpointer 0x0 gText_NameChloe
	call EventScript_NameboxVarASM
	return

.global EventScript_NameErika
EventScript_NameErika:
	loadpointer 0x0 gText_NameErika
	call EventScript_NameboxVarASM
	return

.global EventScript_NameMisty
EventScript_NameMisty:
	loadpointer 0x0 gText_NameMisty
	call EventScript_NameboxVarASM
	return

.global EventScript_NameVisquez
EventScript_NameVisquez:
	loadpointer 0x0 gText_NameVisquez
	call EventScript_NameboxVarASM
	return

.global EventScript_NameSabrina
EventScript_NameSabrina:
	loadpointer 0x0 gText_NameSabrina
	call EventScript_NameboxVarASM
	return

.global EventScript_NameBrock
EventScript_NameBrock:
	loadpointer 0x0 gText_NameBrock
	call EventScript_NameboxVarASM
	return

.global EventScript_NameBryony
EventScript_NameBryony:
	loadpointer 0x0 gText_NameBryony
	call EventScript_NameboxVarASM
	return

.global EventScript_NameJoy
EventScript_NameJoy:
	loadpointer 0x0 gText_NameJoy
	call EventScript_NameboxVarASM
	return

.global EventScript_NameJoey
EventScript_NameJoey:
	loadpointer 0x0 gText_NameJoey
	call EventScript_NameboxVarASM
	return

.global EventScript_NameWill
EventScript_NameWill:
	loadpointer 0x0 gText_NameWill
	call EventScript_NameboxVarASM
	return

.global EventScript_NameBruno
EventScript_NameBruno:
	loadpointer 0x0 gText_NameBruno
	call EventScript_NameboxVarASM
	return

.global EventScript_NameLorelei
EventScript_NameLorelei:
	loadpointer 0x0 gText_NameLorelei
	call EventScript_NameboxVarASM
	return

.global EventScript_NameKaren
EventScript_NameKaren:
	loadpointer 0x0 gText_NameKaren
	call EventScript_NameboxVarASM
	return

.global EventScript_NameLance
EventScript_NameLance:
	loadpointer 0x0 gText_NameLance
	call EventScript_NameboxVarASM
	return

.global EventScript_NameJessie
EventScript_NameJessie:
	loadpointer 0x0 gText_NameJessie
	call EventScript_NameboxVarASM
	return

.global EventScript_NameJames
EventScript_NameJames:
	loadpointer 0x0 gText_NameJames
	call EventScript_NameboxVarASM
	return

.global EventScript_NameWobbuffet
EventScript_NameWobbuffet:
	loadpointer 0x0 gText_NameWobbuffet
	call EventScript_NameboxVarASM
	return

.global EventScript_NameMeowth
EventScript_NameMeowth:
	loadpointer 0x0 gText_NameMeowth
	call EventScript_NameboxVarASM
	return

.global EventScript_NameGiovanni
EventScript_NameGiovanni:
	loadpointer 0x0 gText_NameGiovanni
	call EventScript_NameboxVarASM
	return

.global EventScript_NameMatori
EventScript_NameMatori:
	loadpointer 0x0 gText_NameMatori
	call EventScript_NameboxVarASM
	return

.global EventScript_NameMars
EventScript_NameMars:
	loadpointer 0x0 gText_NameMars
	call EventScript_NameboxVarASM
	return

.global EventScript_NameVenus
EventScript_NameVenus:
	loadpointer 0x0 gText_NameVenus
	call EventScript_NameboxVarASM
	return

.global EventScript_NameCourtney
EventScript_NameCourtney:
	loadpointer 0x0 gText_NameCourtney
	call EventScript_NameboxVarASM
	return

.global EventScript_NamePetrel
EventScript_NamePetrel:
	loadpointer 0x0 gText_NamePetrel
	call EventScript_NameboxVarASM
	return

.global EventScript_NameAlloy
EventScript_NameAlloy:
	loadpointer 0x0 gText_NameAlloy
	call EventScript_NameboxVarASM
	return

.global EventScript_NameCalyrex
EventScript_NameCalyrex:
	loadpointer 0x0 gText_NameCalyrex
	call EventScript_NameboxVarASM
	return

.global EventScript_NameMay
EventScript_NameMay:
	loadpointer 0x0 gText_NameMay
	call EventScript_NameboxVarASM
	return

.global EventScript_NameMay1
EventScript_NameMay1:
	loadpointer 0x0 gText_NameMay1
	call EventScript_NameboxVarASM
	return

.global EventScript_NameMay2
EventScript_NameMay2:
	loadpointer 0x0 gText_NameMay2
	call EventScript_NameboxVarASM
	return

.global EventScript_NameMay3
EventScript_NameMay3:
	loadpointer 0x0 gText_NameMay3
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameBugsy
EventScript_NameBugsy:
	loadpointer 0x0 gText_NameBugsy
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameViola
EventScript_NameViola:
	loadpointer 0x0 gText_NameViola
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameZinnia
EventScript_NameZinnia:
	loadpointer 0x0 gText_NameZinnia
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameSolana
EventScript_NameSolana:
	loadpointer 0x0 gText_NameSolana
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameSeb
EventScript_NameSeb:
	loadpointer 0x0 gText_NameSeb
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameApril
EventScript_NameApril:
	loadpointer 0x0 gText_NameApril
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameJacred
EventScript_NameJacred:
	loadpointer 0x0 gText_NameJacred
	call EventScript_NameboxVarASM
	return

.global EventScript_NameMissingno
EventScript_NameMissingno:
	loadpointer 0x0 gText_NameMissingno
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameLisa
EventScript_NameLisa:
	loadpointer 0x0 gText_NameLisa
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameIrida
EventScript_NameIrida:
	loadpointer 0x0 gText_NameIrida
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameGramps
EventScript_NameGramps:
	loadpointer 0x0 gText_NameGramps
	call EventScript_NameboxVarASM
	return

.global EventScript_NamePikaqiu
EventScript_NamePikaqiu:
	loadpointer 0x0 gText_NamePikaqiu
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameLeaf
EventScript_NameLeaf:
	loadpointer 0x0 gText_NameLeaf
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameElaine
EventScript_NameElaine:
	loadpointer 0x0 gText_NameElaine
	call EventScript_NameboxVarASM
	return

.global EventScript_NameProfessorHector
EventScript_NameProfessorHector:
	loadpointer 0x0 gText_NameProfessorHector
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameROB
EventScript_NameROB:
	loadpointer 0x0 gText_NameROB
	call EventScript_NameboxVarASM
	return

.global EventScript_NameBill
EventScript_NameBill:
	loadpointer 0x0 gText_NameBill
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameCelio
EventScript_NameCelio:
	loadpointer 0x0 gText_NameCelio
	call EventScript_NameboxVarASM
	return

.global EventScript_NameDaisy
EventScript_NameDaisy:
	loadpointer 0x0 gText_NameDaisy
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameRedsMom
EventScript_NameRedsMom:
	loadpointer 0x0 gText_NameRedsMom
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameGymGuy
EventScript_NameGymGuy:
	loadpointer 0x0 gText_NameGymGuy
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameMrFuji
EventScript_NameMrFuji:
	loadpointer 0x0 gText_NameMrFuji
	call EventScript_NameboxVarASM
	return
	
.global EventScript_NameBlaine
EventScript_NameBlaine:
	loadpointer 0x0 gText_NameBlaine
	call EventScript_NameboxVarASM
	return
	