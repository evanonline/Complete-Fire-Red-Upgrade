#pragma once

enum OverworldNPCSprites
{
	EVENT_OBJ_GFX_RED_NORMAL,
	EVENT_OBJ_GFX_RED_BIKE,
	EVENT_OBJ_GFX_RED_SURFING,
	EVENT_OBJ_GFX_RED_FIELD_MOVE,
	EVENT_OBJ_GFX_RED_FISHING,
	EVENT_OBJ_GFX_RED_VS_SEEKER,
	EVENT_OBJ_GFX_RED_BIKE_VS_SEEKER,
	EVENT_OBJ_GFX_LEAF_NORMAL,
	EVENT_OBJ_GFX_LEAF_BIKE,
	EVENT_OBJ_GFX_LEAF_SURFING,
	EVENT_OBJ_GFX_LEAF_FIELD_MOVE,
	EVENT_OBJ_GFX_LEAF_FISHING,
	EVENT_OBJ_GFX_LEAF_VS_SEEKER,
	EVENT_OBJ_GFX_LEAF_BIKE_VS_SEEKER,
	EVENT_OBJ_GFX_BRENDAN,
	EVENT_OBJ_GFX_MAY,
	EVENT_OBJ_GFX_LITTLE_BOY,
	EVENT_OBJ_GFX_LITTLE_GIRL,
	EVENT_OBJ_GFX_YOUNGSTER,
	EVENT_OBJ_GFX_RANDOM_GUY,
	EVENT_OBJ_GFX_BUG_CATCHER,
	EVENT_OBJ_GFX_SITTING_GUY,
	EVENT_OBJ_GFX_LASS,
	EVENT_OBJ_GFX_RANDOM_GIRL,
	EVENT_OBJ_GFX_CRUSH_GIRL,
	EVENT_OBJ_GFX_RANDOM_GUY_2,
	EVENT_OBJ_GFX_GUITARIST,
	EVENT_OBJ_GFX_FAT_GUY,
	EVENT_OBJ_GFX_RANDOM_WOMAN,
	EVENT_OBJ_GFX_BEAUTY,
	EVENT_OBJ_GFX_MIDDLE_AGED_MAN,
	EVENT_OBJ_GFX_MIDDLE_AGED_WOMAN,
	EVENT_OBJ_GFX_OLD_MAN,
	EVENT_OBJ_GFX_OLD_MAN_2,
	EVENT_OBJ_GFX_OLD_MAN_SLEEPING,
	EVENT_OBJ_GFX_OLD_WOMAN,
	EVENT_OBJ_GFX_SWIMMING_TUBER_M,
	EVENT_OBJ_GFX_TUBER_F,
	EVENT_OBJ_GFX_TUBER_M,
	EVENT_OBJ_GFX_CAMPER,
	EVENT_OBJ_GFX_PICNICKER,
	EVENT_OBJ_GFX_COOLTRAINER_M,
	EVENT_OBJ_GFX_COOLTRAINER_F,
	EVENT_OBJ_GFX_SWIMMER_M,
	EVENT_OBJ_GFX_SWIMMER_F,
	EVENT_OBJ_GFX_STANDING_SWIMMER_M,
	EVENT_OBJ_GFX_STANDING_SWIMMER_F,
	EVENT_OBJ_GFX_POKEMANIAC,
	EVENT_OBJ_GFX_AROMA_LADY,
	EVENT_OBJ_GFX_ROCKET_GRUNT_M,
	EVENT_OBJ_GFX_ROCKET_GRUNT_F,
	EVENT_OBJ_GFX_LINK_BOY,
	EVENT_OBJ_GFX_SUPER_NERD,
	EVENT_OBJ_GFX_BIKER_BALL,
	EVENT_OBJ_GFX_BLACK_BELT,
	EVENT_OBJ_GFX_SCIENTIST_MALE,
	EVENT_OBJ_GFX_HIKER,
	EVENT_OBJ_GFX_FISHERMAN,
	EVENT_OBJ_GFX_CHANELLER,
	EVENT_OBJ_GFX_CHEF,
	EVENT_OBJ_GFX_POLICEMAN,
	EVENT_OBJ_GFX_GENTLEMAN,
	EVENT_OBJ_GFX_SAILOR,
	EVENT_OBJ_GFX_SHIP_CAPTAIN,
	EVENT_OBJ_GFX_NURSE_JOY,
	EVENT_OBJ_GFX_MEDIC_FEMALE,
	EVENT_OBJ_GFX_NURSE_TEALA,
	EVENT_OBJ_GFX_DOCTOR,
	EVENT_OBJ_GFX_MART_CLERK,
	EVENT_OBJ_GFX_DELIVERYMAN,
	EVENT_OBJ_GFX_TRAINER_TOWER_OWNER,
	EVENT_OBJ_GFX_OAK,
	EVENT_OBJ_GFX_RIVAL,
	EVENT_OBJ_GFX_BILL,
	EVENT_OBJ_GFX_LANCE,
	EVENT_OBJ_GFX_AGATHA,
	EVENT_OBJ_GFX_DAISY,
	EVENT_OBJ_GFX_LORELEI,
	EVENT_OBJ_GFX_MR_FUJI,
	EVENT_OBJ_GFX_BRUNO,
	EVENT_OBJ_GFX_BROCK,
	EVENT_OBJ_GFX_MISTY,
	EVENT_OBJ_GFX_LT_SURGE,
	EVENT_OBJ_GFX_ERIKA,
	EVENT_OBJ_GFX_KOGA,
	EVENT_OBJ_GFX_SABRINA,
	EVENT_OBJ_GFX_BLAINE,
	EVENT_OBJ_GFX_GIOVANNI,
	EVENT_OBJ_GFX_MOM,
	EVENT_OBJ_GFX_CELIO = 89,
	EVENT_OBJ_GFX_PRIMO = 90,
	EVENT_OBJ_GFX_GYMGUY = 91,
	EVENT_OBJ_GFX_SMEARGLE = 152,
	EVENT_OBJ_GFX_OCGUY = 154,
	EVENT_OBJ_GFX_MARLEY,
};

#define EVENT_OBJ_GFX_RED_UNDERWATER 6 //By default VS. Seeker on bike b\c not used by anything else
#define EVENT_OBJ_GFX_LEAF_UNDERWATER 13

// unsure if needed

//#define EVENT_OBJ_GFX_CELIO 	89
//#define EVENT_OBJ_GFX_PRIMO 	90
//#define EVENT_OBJ_GFX_GYMGUY 	91
//#define EVENT_OBJ_GFX_SMEARGLE 	152
//#define EVENT_OBJ_GFX_OCGUY 	154

// These are dynamic object gfx ids.
// They correspond with the values of the VAR_OBJ_GFX_ID_X vars.
// More info about them in include/constants/vars.h
#define EVENT_OBJ_GFX_VAR_0 240
#define EVENT_OBJ_GFX_VAR_1 241
#define EVENT_OBJ_GFX_VAR_2 242
#define EVENT_OBJ_GFX_VAR_3 243
#define EVENT_OBJ_GFX_VAR_4 244
#define EVENT_OBJ_GFX_VAR_5 245
#define EVENT_OBJ_GFX_VAR_6 246
#define EVENT_OBJ_GFX_VAR_7 247
#define EVENT_OBJ_GFX_VAR_8 248
#define EVENT_OBJ_GFX_VAR_9 249
#define EVENT_OBJ_GFX_VAR_A 250
#define EVENT_OBJ_GFX_VAR_B 251
#define EVENT_OBJ_GFX_VAR_C 252
#define EVENT_OBJ_GFX_VAR_D 253
#define EVENT_OBJ_GFX_VAR_E 254
#define EVENT_OBJ_GFX_VAR_F 255

#define SHADOW_SIZE_S   0
#define SHADOW_SIZE_M   1
#define SHADOW_SIZE_L   2
#define SHADOW_SIZE_XL  3

#define F_INANIMATE                        (1 << 6)
#define F_DISABLE_REFLECTION_PALETTE_LOAD  (1 << 7)

#define TRACKS_NONE       0
#define TRACKS_FOOT       1
#define TRACKS_BIKE_TIRE  2

#define EVENT_OBJ_ID_PLAYER 0xFF
#define EVENT_OBJ_ID_CAMERA 0x7F

#ifdef UNBOUND //For Pokemon Unbound

#define EVENT_OBJ_GFX_JAX 14
#define EVENT_OBJ_GFX_LOR_GRUNT_M 15
#define EVENT_OBJ_GFX_BABY_CARRIAGE 21
#define EVENT_OBJ_GFX_NINJA_BOY 36
#define EVENT_OBJ_GFX_ACE_TRAINER_M 41
#define EVENT_OBJ_GFX_ACE_TRAINER_F 42
#define EVENT_OBJ_GFX_SKIER_M 45
#define EVENT_OBJ_GFX_SKIER_F 46
#define EVENT_OBJ_GFX_SHADOW_GRUNT_M 49
#define EVENT_OBJ_GFX_SHADOW_GRUNT_F 50
#define EVENT_OBJ_GFX_SNOW_CAMPER 51
#define EVENT_OBJ_GFX_ROUGHNECK 53
#define EVENT_OBJ_GFX_MEDIUM 58
#define EVENT_OBJ_GFX_MART_CLERK_M 68
#define EVENT_OBJ_GFX_SCIENTIST_F 70
#define EVENT_OBJ_GFX_LOG 71
#define EVENT_OBJ_GFX_RIVAL 72
#define EVENT_OBJ_GFX_LOOKER 73
#define EVENT_OBJ_GFX_MIRSKLE 74
#define EVENT_OBJ_GFX_MELONY 76
#define EVENT_OBJ_GFX_ARTHUR 78
#define EVENT_OBJ_GFX_MAXIMA 79
#define EVENT_OBJ_GFX_BIG_MO 80
#define EVENT_OBJ_GFX_ALICE 81
#define EVENT_OBJ_GFX_GALAVAN 82
#define EVENT_OBJ_GFX_MEL 83
#define EVENT_OBJ_GFX_VEGA 84
#define EVENT_OBJ_GFX_TESSY 85
#define EVENT_OBJ_GFX_BENJAMIN 86
#define EVENT_OBJ_GFX_GIOVANNI 87
#define EVENT_OBJ_GFX_MOM 88
#define EVENT_OBJ_GFX_ZEPH 89
#define EVENT_OBJ_GFX_AKLOVE 90
#define EVENT_OBJ_GFX_GYM_GUIDE 91
#define EVENT_OBJ_GFX_ZAPDOS 136
#define EVENT_OBJ_GFX_MOLTRES 137

enum
{
	EVENT_OBJ_GFX_BIRD_KEEPER = 152,
	EVENT_OBJ_GFX_BIKER,
	EVENT_OBJ_GFX_EXPERT_F,
	EVENT_OBJ_GFX_EXPERT_M,
	EVENT_OBJ_GFX_KINDLER,
	EVENT_OBJ_GFX_PAINTER,
	EVENT_OBJ_GFX_POKE_MANIAC,
	EVENT_OBJ_GFX_RANGER_F,
	EVENT_OBJ_GFX_RANGER_M,
	EVENT_OBJ_GFX_RUIN_MANIAC,
	EVENT_OBJ_GFX_DRAGON_TAMER,
	EVENT_OBJ_GFX_SCHOOL_BOY,
	EVENT_OBJ_GFX_CUE_BALL,
	EVENT_OBJ_GFX_MARLON,
	EVENT_OBJ_GFX_IVORY,
	EVENT_OBJ_GFX_WORKER,
	EVENT_OBJ_GFX_BUG_MANIAC,
	EVENT_OBJ_GFX_INTERVIEWER,
	EVENT_OBJ_GFX_CAMERAMAN,
	EVENT_OBJ_GFX_COLLECTOR,
	EVENT_OBJ_GFX_PSYCHIC_M,
	EVENT_OBJ_GFX_SNOW_GIRL,
	EVENT_OBJ_GFX_PRIMAL_GROUDON,
	EVENT_OBJ_GFX_YOUNG_MARLON,
	EVENT_OBJ_GFX_YOUNG_IVORY,
	EVENT_OBJ_GFX_AROS,
	EVENT_OBJ_GFX_SCIENTIST_SHADOW_M,
	EVENT_OBJ_GFX_SCIENTIST_SHADOW_F,
	EVENT_OBJ_GFX_SHADOW_WARRIOR,
	EVENT_OBJ_GFX_ABRA,
	EVENT_OBJ_GFX_CHARMELEON,
	EVENT_OBJ_GFX_FLOETTE_O,
	EVENT_OBJ_GFX_FLOETTE_B,
	EVENT_OBJ_GFX_FLOETTE_R,
	EVENT_OBJ_GFX_GIRATINA_O,
	EVENT_OBJ_GFX_KECLEON,
	EVENT_OBJ_GFX_INVISIBLE_PLAYER,
	EVENT_OBJ_GFX_SHOCKER,
	EVENT_OBJ_GFX_BREEDER_M,
	EVENT_OBJ_GFX_BREEDER_F,
	EVENT_OBJ_GFX_GAMBLER,
	EVENT_OBJ_GFX_IDOL,
	EVENT_OBJ_GFX_JUGGLER,
	EVENT_OBJ_GFX_JOGGER,
	EVENT_OBJ_GFX_CYCLIST_M,
	EVENT_OBJ_GFX_CYCLIST_F,
	EVENT_OBJ_GFX_RANCHER_M,
	EVENT_OBJ_GFX_RANCHER_F,
	EVENT_OBJ_GFX_RICH_MAN,
	EVENT_OBJ_GFX_RICH_WOMAN,
	EVENT_OBJ_GFX_RICH_BOY,
	EVENT_OBJ_GFX_RICH_GIRL,
	EVENT_OBJ_GFX_KOOKY_OLD_MAN,
	EVENT_OBJ_GFX_KOOKY_OLD_WOMAN,
	EVENT_OBJ_GFX_WAITER,
	EVENT_OBJ_GFX_WAITRESS,
	EVENT_OBJ_GFX_SKELI,
	EVENT_OBJ_GFX_GOLCHE,
	EVENT_OBJ_GFX_MAID,
	EVENT_OBJ_GFX_POKEFAN_M,
	EVENT_OBJ_GFX_POKE_KID,
	EVENT_OBJ_GFX_SAGE,
	EVENT_OBJ_GFX_ELDER,
	EVENT_OBJ_GFX_SOCIALITE,
	EVENT_OBJ_GFX_ATTENDANT_F,
	EVENT_OBJ_GFX_PALMER,
	EVENT_OBJ_GFX_BURGLAR,
	EVENT_OBJ_GFX_CLOWN,
	EVENT_OBJ_GFX_PARASOL_LADY,
	EVENT_OBJ_GFX_TAMER,
	EVENT_OBJ_GFX_VIDEO_GAME_KID,
	EVENT_OBJ_GFX_MART_CLERK_F,
	EVENT_OBJ_GFX_CYNTHIA,
	EVENT_OBJ_GFX_GAIL,
	EVENT_OBJ_GFX_CANDICE,
	EVENT_OBJ_GFX_PAT,
	EVENT_OBJ_GFX_PABLO,
	EVENT_OBJ_GFX_PAULA,
	EVENT_OBJ_GFX_CATHERINE,
	EVENT_OBJ_GFX_GINGER,
	EVENT_OBJ_GFX_ABIMBOLA,
	EVENT_OBJ_GFX_MAHINA,
	EVENT_OBJ_GFX_ALFORD,
	EVENT_OBJ_GFX_LIXDEL,
};

#define EVENT_OBJ_GFX_PSYCHIC_F EVENT_OBJ_GFX_PSYCHIC_M
#define EVENT_OBJ_GFX_RED 388

#endif
