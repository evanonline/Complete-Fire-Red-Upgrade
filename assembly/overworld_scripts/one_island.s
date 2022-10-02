.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.equ INGAME_TRADE_DUSKULL, 4
.equ FLAG_DID_DUSKULL_TRADE, 0x993

.global EventScript_OneIsland_FatefulClown
EventScript_OneIsland_FatefulClown:
	msgbox gText_OneIsland_FatefulClown MSG_FACE
	end
	
.global EventScript_OneIsland_PCNPC1
EventScript_OneIsland_PCNPC1:
	msgbox gText_OneIsland_PCNPC1 MSG_FACE
	end

.global EventScript_DuskullTrade
EventScript_DuskullTrade:
    lock
    faceplayer
    setvar 0x8008 INGAME_TRADE_DUSKULL
    call 0x81A8CAD
    checkflag FLAG_DID_DUSKULL_TRADE
    if 0x1 _goto EventScript_AfterDudeskull
    msgbox gText_Trade_Dudeskull_Nickname MSG_YESNO
    compare LASTRESULT 0x0
    if 0x1 _goto EventScript_NoToDudeskull
    call 0x81A8CBD
    compare 0x8004 0x6
    if 0x4 _goto EventScript_NoToDudeskull
    call 0x81A8CC9
    comparevars LASTRESULT 0x8009
    if 0x5 _goto EventScript_Dudeskull_NoPsyduck
    call 0x81A8CD9
    msgbox gText_Trade_Dudeskull_Thanks MSG_FACE
    setflag FLAG_DID_DUSKULL_TRADE
    release
    end

EventScript_NoToDudeskull:
	msgbox gText_Trade_Dudeskull_No MSG_FACE
	end
	
EventScript_Dudeskull_NoPsyduck:
	msgbox gText_Trade_Dudeskull_NoPsyduck MSG_FACE
	end

EventScript_AfterDudeskull:
	msgbox gText_Trade_Dudeskull_After MSG_FACE
	end
	
	