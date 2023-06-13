.text
.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

@;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.global EventScript_CeruleanCity_BikeShopMay
EventScript_CeruleanCity_BikeShopMay:
	msgbox gText_CeruleanCity_BikeShop_May MSG_FACE
	end

.global EventScript_CeruleanCity_BikeShopOtherCustomer
EventScript_CeruleanCity_BikeShopOtherCustomer:
	msgbox gText_CeruleanCity_BikeShop_OtherWoman MSG_FACE
	end

.global EventScript_CeruleanRoute9_AnnoyingTree
EventScript_CeruleanRoute9_AnnoyingTree:
	msgbox gText_CeruleanRoute9_AnnoyingTree MSG_NORMAL
	end

.global EventScript_CeruleanCity_AngryGeezer
EventScript_CeruleanCity_AngryGeezer:
	checkgender
	compare LASTRESULT 0x0
    if 0x1 _goto EventScript_CeruleanCity_AngryGeezer_Brandy
    compare LASTRESULT 0x1
    if 0x1 _goto EventScript_CeruleanCity_AngryGeezer_Sherry
    end

EventScript_CeruleanCity_AngryGeezer_Brandy:
	msgbox gText_CeruleanCity_MistyGrouch_Brandy MSG_FACE
	end

EventScript_CeruleanCity_AngryGeezer_Sherry:
	msgbox gText_CeruleanCity_MistyGrouch_Sherry MSG_FACE
	end

.global EventScript_CeruleanCity_PokedexSnob
EventScript_CeruleanCity_PokedexSnob:
	msgbox gText_CeruleanCity_PokedexSnob MSG_FACE
	end

.global EventScript_CeruleanCity_BajaBlastoiseFan1
EventScript_CeruleanCity_BajaBlastoiseFan1:
	msgbox gText_CeruleanCity_JRRPokken MSG_FACE
	end
	
.global EventScript_CeruleanCity_BajaBlastoiseFan2
EventScript_CeruleanCity_BajaBlastoiseFan2:
	msgbox gText_CeruleanCity_MistyPool MSG_FACE
	end

.global EventScript_CeruleanCity_BajaBlastoiseWallpaper
EventScript_CeruleanCity_BajaBlastoiseWallpaper:
	msgbox gText_CeruleanCity_BajaBlastoiseWallpaper MSG_FACE
	@@@@change dialogue to gText_CeruleanCity_BajaBlastoiseWallpaper_AlloyKnown after meeting alloy
	end

.global EventScript_CeruleanCity_Vikings
EventScript_CeruleanCity_Vikings:
	msgbox gText_CeruleanCity_Vikings MSG_FACE
	end

.global EventScript_CeruleanCity_MistyGossip
EventScript_CeruleanCity_MistyGossip:
	msgbox gText_CeruleanCity_MistyGossip MSG_FACE
	end

.global EventScript_CeruleanCity_Miraidon
EventScript_CeruleanCity_Miraidon:
	msgbox gText_CeruleanCity_Miraidon MSG_FACE
	end

