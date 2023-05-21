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
