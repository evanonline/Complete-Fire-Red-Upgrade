#pragma once

enum
{
	CLASS_PKMN_TRAINER,			//0x0
	CLASS_ROCKET_GRUNT,			//0x1
	CLASS_AMBASSADOR,			//0x2
	CLASS_VIKING,				//0x3
	CLASS_BOOKWORM,				//0x4
	CLASS_TUBER,				//0x5
	CLASS_JANITOR,				//0x6
	CLASS_COOLTRAINER,			//0x7
	CLASS_HEX_MANIAC,			//0x8
	CLASS_JUNIOR_HEXER,			//0x9
	CLASS_BACKPACKER,			//0xA
	CLASS_CLOWN,				//0xB
	CLASS_HOOPSTER,				//0xC
	CLASS_INFIELDER,			//0xD
	CLASS_TCG_FANATIC,			//0xE
	CLASS_GUITARIST,			//0xF
	CLASS_KINDLER,				//0x10
	CLASS_BUG_MANIAC,			//0x11
	CLASS_WARRIOR_GAL,			//0x12
	CLASS_FUN_OLD_MAN,			//0x13
	CLASS_ENCHANTED_BOY,		//0x14
	CLASS_KALOS_LEADER,			//0x15
	CLASS_JOHTO_LEADER,			//0x16
	CLASS_SCHOOLKID,			//0x17
	CLASS_TEAMMATES,			//0x18
	CLASS_RAIL_STAFF,			//0x19
	CLASS_POKEFAN,				//0x1A
	CLASS_EXPERT,				//0x1B
	CLASS_OLDSTER,				//0x1C
	CLASS_YOUNGSTER,			//0x1D
	CLASS_FOREIGN_CHAMP,		//0x1E
	CLASS_NURSE,				//0x1F
	CLASS_CYCLIST,				//0x20
	CLASS_TRIATHLETE,			//0x21
	CLASS_BIRD_KEEPER,			//0x22
	CLASS_KUNOICHI,				//0x23
	CLASS_LAB_INTERN,			//0x24
	CLASS_PARASOL_LADY,			//0x25
	CLASS_FUNNY_AUNT,			//0x26
	CLASS_RANGER_CHIEF,			//0x27
	CLASS_LOREKEEPER,			//0x28
	CLASS_FITNESS_MANIAC,		//0x29
	CLASS_GARCHOMP,				//0x2A
	CLASS_ALOLAN_TRAVELER,		//0x2B
	CLASS_GALAR_LEADER,			//0x2C
	CLASS_GENIUS_KID,			//0x2D
	CLASS_BROKEN_PRODIGY,		//0x2E
	CLASS_KALOS_ELITE,			//0x2F
	CLASS_POKE_KID,				//0x30
	CLASS_BAKER,				//0x31
	CLASS_IMPOSTOR,				//0x32
	CLASS_ROCKET_DUO,			//0x33
	CLASS_ROCKET_ADMIN,			//0x34
	CLASS_YOUNG_COUPLE, 		//0x35
	CLASS_HOENN_LEADER,			//0x36
	CLASS_UNOVA_LEADER,			//0x37
	CLASS_SINNOH_LEADER, 		//0x38
    CLASS_HOENN_ELITE, 			//0x39
    CLASS_BUG_CATCHER, 			//0x3A
    CLASS_LASS, 				//0x3B
    CLASS_SAILOR, 				//0x3C
    CLASS_CAMPER,	 			//0x3D
    CLASS_PICNICKER, 			//0x3E
    CLASS_POKE_MANIAC, 			//0x3F
    CLASS_SUPER_NERD, 			//0x40
    CLASS_HIKER, 				//0x41
	CLASS_OPERATING_BUDDIES,	//0x42
	CLASS_BURGLAR,		 		//0x43
	CLASS_TOGA_GIRL,		 	//0x44
	CLASS_FISHER, 				//0x45
	CLASS_SWIMMER, 				//0x46
	CLASS_FIREBREATHER, 		//0x47
	CLASS_GAMER, 				//0x48
	CLASS_PSYCHIC,	 			//0x49
	CLASS_KRICKETINA, 			//0x4A
	CLASS_DRAGON_TAMER, 		//0x4B
	CLASS_CHERISH_BALLER, 		//0x4C
	CLASS_BLACK_BELT, 			//0x4D
	CLASS_CHASER, 				//0x4E
	CLASS_MAD_SCIENTIST,		//0x4F
	CLASS_ROCKET_BOSS, 			//0x50
	CLASS_RIVAL, 				//0x51
	CLASS_ACE_TRAINER, 			//0x52
	CLASS_ELITE_FOUR, 			//0x53
	CLASS_GYM_LEADER, 			//0x54
	CLASS_CHAMPION,				//0x55
	CLASS_GHOST_HUNTER, 		//0x56
	CLASS_CHANNELER, 			//0x57
	CLASS_TWINS, 				//0x58
	CLASS_RIVAL_2, 				//0x59
	CLASS_DETECTIVES, 			//0x5A
	CLASS_MIGHTY_LOVERS,		//0x5B
	CLASS_WINTRY_IDOL,	 		//0x5C
	CLASS_PROFESSOR, 			//0x5D
	CLASS_BATTLE_GIRL,	 		//0x5E
	CLASS_PKMN_BREEDER, 		//0x5F
	CLASS_PKMN_RANGER,	 		//0x60
	CLASS_IDOL,		 			//0x61
	CLASS_RUIN_MANIAC, 			//0x62
	CLASS_LADY, 				//0x63
	CLASS_BAD_EGG,	 			//0x64
	CLASS_RESEARCHER, 			//0x65
	CLASS_ARTIST, 				//0x66
	CLASS_BABYSITTER,	 		//0x67
	CLASS_NO_1_TRAINER, 		//0x68
	CLASS_MASTER_THIEVES, 		//0x69
	CLASS_FRONTIER_BRAIN, 		//0x6A
};

#ifdef UNBOUND

#define CLASS_LOR_LEADER 		0x2
#define CLASS_WAITER			0x4
#define CLASS_WAITRESS			0x5
#define CLASS_CYCLIST			0x7
#define CLASS_IDOL				0x8
#define CLASS_NURSE				0xA
#define CLASS_POKE_KID			0xC
#define CLASS_TERROR_GRANBULL 	0xE
#define CLASS_CAMPING_DUO		0xF
#define CLASS_SKIIER			0x10
#define CLASS_GUITARIST			0x11
#define CLASS_KINDLER			0x12
#define CLASS_SHOCKER			0x13
#define CLASS_BUG_MANIAC		0x14
#define CLASS_POLICEMAN			0x15
#define CLASS_BLACK_FERROTHORN 	0x16
#define CLASS_RICH_GIRL			0x17
#define CLASS_SUCCESSOR			0x18
#define CLASS_SCHOOL_KID		0x19
#define CLASS_EXPERT			0x1C
#define CLASS_RANCHER			0x1D
#define CLASS_FRONTIER_BRAIN 	0x1E
#define CLASS_SCIENCE_SOCIETY   0x1F
#define CLASS_JOGGER			0x20
#define CLASS_DRAGON_TAMER		0x21
#define CLASS_NINJA_BOY			0x23
#define CLASS_MEGA_TRAINER		0x24
#define CLASS_SINNOH_LEADER		0x28
#define CLASS_DEVELOPER			0x29
#define CLASS_BOARDER			0x2A
#define CLASS_COLLECTOR			0x2B
#define CLASS_BLACK_EMBOAR		0x2D
#define CLASS_LOR_ADMIN 		0x2E
#define CLASS_LOR 				0x2F
#define CLASS_SHADOW_ADMIN 		0x30
#define CLASS_WORKER 			0x44
#define CLASS_ROUGHNECK 		0x47
#define CLASS_BOSS 				0x53
#define CLASS_SHADOW			0x55
#define CLASS_ACE_TRAINER 		0x56
#define CLASS_MEDIUM 			0x5B
#define CLASS_ACE_DUO 			0x5D

#endif