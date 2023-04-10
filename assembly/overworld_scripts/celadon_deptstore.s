.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_DeptStoreSibSprite_Floor1
gMapScripts_DeptStoreSibSprite_Floor1:
   mapscript MAP_SCRIPT_ON_TRANSITION EventScript_ChangeSibSprite_CeladonDeptFloor1
   .byte MAP_SCRIPT_TERMIN

EventScript_ChangeSibSprite_CeladonDeptFloor1:
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_SetSibNPCAsSherry_DeptFloor1
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_SetSibNPCAsBrandy_DeptFloor1
    end

EventScript_SetSibNPCAsSherry_DeptFloor1:
    setvar 0x5028 + 0x2 7
    end

EventScript_SetSibNPCAsBrandy_DeptFloor1:
    setvar 0x5028 + 0x2 0
    end

.global EventScript_CeladonDept_Floor1CustomerService
EventScript_CeladonDept_Floor1CustomerService:
	msgbox gText_CeladonDeptStore_RocketEvent_CustomerService MSG_FACE
	end

.global EventScript_CeladonDept_SherryBrandy_1F
EventScript_CeladonDept_SherryBrandy_1F:
    checkgender
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_CeladonDept_Sherry_1F
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_CeladonDept_Brandy_1F
    end
	
EventScript_CeladonDept_Sherry_1F:
	msgbox gText_CeladonDeptStore_SibBattle1F_Sherry MSG_NORMAL
	end	
	
EventScript_CeladonDept_Brandy_1F:
	msgbox gText_CeladonDeptStore_SibBattle1F_Brandy MSG_NORMAL
	end
	
.global EventScript_CeladonDept_1FRocketBattlingSib
EventScript_CeladonDept_1FRocketBattlingSib:
	msgbox gText_CeladonDeptStore_1FRocketBattlingSib MSG_NORMAL
	end
	
.global EventScript_CeladonDept_BattlingRocket
EventScript_CeladonDept_BattlingRocket:
    trainerbattle0 0x0 22 0x0 gText_CeladonDeptStore_RocketEvent_FirstRocket_Before gText_CeladonDeptStore_RocketEvent_FirstRocket_Lose
	msgbox gText_CeladonDeptStore_RocketEvent_FirstRocket_After MSG_NORMAL
	end
