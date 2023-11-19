#include "../config.h"
/*
class_based_pokeball_table.c
	link a specific poke-ball type to each trainer class
*/


#ifdef TRAINER_CLASS_POKE_BALLS

#include "../../include/constants/trainer_classes.h"
#include "../../include/new/catching.h"

#ifndef UNBOUND
//Modify this.
const u8 gClassPokeBalls[NUM_TRAINER_CLASSES] =
{
	[CLASS_PKMN_TRAINER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_ROCKET_GRUNT] =  	BALL_TYPE_POKE_BALL,
	[CLASS_AMBASSADOR] = 		BALL_TYPE_POKE_BALL,
	[CLASS_VIKING] = 			BALL_TYPE_POKE_BALL,
	[CLASS_BOOKWORM] =			BALL_TYPE_GREAT_BALL,
	[CLASS_TUBER] =				BALL_TYPE_DIVE_BALL,
	[CLASS_JANITOR] = 			BALL_TYPE_POKE_BALL,
	[CLASS_COOLTRAINER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_HEX_MANIAC] = 		BALL_TYPE_POKE_BALL,
	[CLASS_JUNIOR_HEXER] = 		BALL_TYPE_DUSK_BALL,
	[CLASS_BACKPACKER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_CLOWN] =				BALL_TYPE_POKE_BALL,
	[CLASS_HOOPSTER] = 			BALL_TYPE_POKE_BALL,
	[CLASS_INFIELDER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_TCG_FANATIC] =	 	BALL_TYPE_POKE_BALL,
	[CLASS_GUITARIST] = 		BALL_TYPE_HEAVY_BALL,
	[CLASS_KINDLER] = 			BALL_TYPE_POKE_BALL,
	[CLASS_BUG_MANIAC] = 		BALL_TYPE_POKE_BALL,
	[CLASS_WARRIOR_GAL] = 		BALL_TYPE_ULTRA_BALL,
	[CLASS_FUN_OLD_MAN] =		BALL_TYPE_LEVEL_BALL,
	[CLASS_ENCHANTED_BOY] = 	BALL_TYPE_DREAM_BALL,
	[CLASS_KALOS_LEADER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_JOHTO_LEADER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_SCHOOLKID] = 		BALL_TYPE_POKE_BALL,
	[CLASS_TEAMMATES] = 		BALL_TYPE_POKE_BALL,
	[CLASS_RAIL_STAFF] = 		BALL_TYPE_POKE_BALL,
	[CLASS_POKEFAN] = 			BALL_TYPE_POKE_BALL,
	[CLASS_EXPERT] = 			BALL_TYPE_POKE_BALL,
	[CLASS_OLDSTER] = 			BALL_TYPE_POKE_BALL,
	[CLASS_YOUNGSTER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_FOREIGN_CHAMP] = 	BALL_TYPE_POKE_BALL,
	[CLASS_NURSE] = 			BALL_TYPE_HEAL_BALL,
	[CLASS_CYCLIST] = 			BALL_TYPE_POKE_BALL,
	[CLASS_TRIATHLETE] = 		BALL_TYPE_FAST_BALL,
	[CLASS_BIRD_KEEPER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_KUNOICHI] = 			BALL_TYPE_QUICK_BALL,
	[CLASS_LAB_INTERN] = 		BALL_TYPE_POKE_BALL,
	[CLASS_PARASOL_LADY] =		BALL_TYPE_POKE_BALL,
	[CLASS_FUNNY_AUNT] = 		BALL_TYPE_POKE_BALL,
	[CLASS_RANGER_CHIEF] = 		BALL_TYPE_POKE_BALL,
	[CLASS_LOREKEEPER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_FITNESS_MANIAC] = 	BALL_TYPE_FAST_BALL,
	[CLASS_GARCHOMP] = 			BALL_TYPE_PREMIER_BALL,
	[CLASS_RUIN_MANIAC] =	 	BALL_TYPE_POKE_BALL,
	[CLASS_GALAR_LEADER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_GENIUS_KID] = 		BALL_TYPE_POKE_BALL,
	[CLASS_BROKEN_PRODIGY] = 	BALL_TYPE_POKE_BALL,
	[CLASS_KALOS_ELITE] = 		BALL_TYPE_POKE_BALL,
	[CLASS_POKE_KID] = 			BALL_TYPE_POKE_BALL,
	[CLASS_BAKER] =				BALL_TYPE_TIMER_BALL,
	[CLASS_IMPOSTOR] = 			BALL_TYPE_POKE_BALL,
	[CLASS_ROCKET_DUO] = 		BALL_TYPE_POKE_BALL,
	[CLASS_ROCKET_ADMIN] = 		BALL_TYPE_POKE_BALL,
	[CLASS_YOUNG_COUPLE] =		BALL_TYPE_POKE_BALL,
	[CLASS_HOENN_LEADER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_UNOVA_LEADER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_SINNOH_LEADER] = 	BALL_TYPE_POKE_BALL,
    [CLASS_HOENN_ELITE] = 		BALL_TYPE_POKE_BALL,
    [CLASS_BUG_CATCHER] = 		BALL_TYPE_NET_BALL,
    [CLASS_LASS] = 				BALL_TYPE_POKE_BALL,
    [CLASS_SAILOR] = 			BALL_TYPE_DIVE_BALL,
    [CLASS_CAMPER] = 			BALL_TYPE_POKE_BALL,
    [CLASS_PICNICKER] = 		BALL_TYPE_FRIEND_BALL,
    [CLASS_POKE_MANIAC] = 		BALL_TYPE_POKE_BALL,
    [CLASS_SUPER_NERD] = 		BALL_TYPE_POKE_BALL,
    [CLASS_HIKER] = 			BALL_TYPE_POKE_BALL,
	[CLASS_OPERATING_BUDDIES] = BALL_TYPE_POKE_BALL,
	[CLASS_BURGLAR] = 			BALL_TYPE_POKE_BALL,
	[CLASS_TOGA_GIRL] = 		BALL_TYPE_ULTRA_BALL,
	[CLASS_FISHER] = 			BALL_TYPE_LURE_BALL,
	[CLASS_SWIMMER] = 			BALL_TYPE_POKE_BALL,
	[CLASS_FIREBREATHER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_GAMER] = 			BALL_TYPE_GREAT_BALL,
	[CLASS_PSYCHIC] = 			BALL_TYPE_POKE_BALL,
	[CLASS_KRICKETINA] = 		BALL_TYPE_POKE_BALL,
	[CLASS_DRAGON_TAMER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_CHERISH_BALLER] = 	BALL_TYPE_CHERISH_BALL,
	[CLASS_BLACK_BELT] = 		BALL_TYPE_POKE_BALL,
	[CLASS_CHASER] = 			BALL_TYPE_POKE_BALL,
	[CLASS_MAD_SCIENTIST] = 	BALL_TYPE_POKE_BALL,
	[CLASS_ROCKET_BOSS] = 		BALL_TYPE_POKE_BALL,
	[CLASS_RIVAL] =		 		BALL_TYPE_POKE_BALL,
	[CLASS_ACE_TRAINER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_ELITE_FOUR] = 		BALL_TYPE_POKE_BALL,
	[CLASS_GYM_LEADER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_CHAMPION] = 			BALL_TYPE_POKE_BALL,
	[CLASS_GHOST_HUNTER] = 		BALL_TYPE_MOON_BALL,
	[CLASS_CHANNELER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_TWINS] = 			BALL_TYPE_REPEAT_BALL,
	[CLASS_RIVAL_2] =			BALL_TYPE_POKE_BALL,
	[CLASS_DETECTIVES] = 		BALL_TYPE_TIMER_BALL,
	[CLASS_MIGHTY_LOVERS] = 	BALL_TYPE_LOVE_BALL,
	[CLASS_WINTRY_IDOL] = 		BALL_TYPE_DIVE_BALL,
	[CLASS_PROFESSOR] = 		BALL_TYPE_POKE_BALL,
	[CLASS_BATTLE_GIRL] = 		BALL_TYPE_POKE_BALL,
	[CLASS_PKMN_BREEDER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_PKMN_RANGER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_IDOL] = 				BALL_TYPE_LOVE_BALL,
	[CLASS_PLAYER] = 			BALL_TYPE_POKE_BALL,
	[CLASS_LADY] = 				BALL_TYPE_POKE_BALL,
	[CLASS_BAD_EGG] = 			BALL_TYPE_MASTER_BALL,
	[CLASS_RESEARCHER] =		BALL_TYPE_POKE_BALL,
	[CLASS_ARTIST] = 			BALL_TYPE_POKE_BALL,
	[CLASS_BABYSITTER] = 		BALL_TYPE_POKE_BALL,
	[CLASS_MASTER_THIEVES] = 	BALL_TYPE_LUXURY_BALL,
	[CLASS_FRONTIER_BRAIN] =	BALL_TYPE_POKE_BALL,
};

#else
//This table is for Pokemon Unbound. Modifying it will do nothing for you. Feel free to remove.
const u8 gClassPokeBalls[NUM_TRAINER_CLASSES] =
{
	[CLASS_PKMN_TRAINER_1] =   BALL_TYPE_POKE_BALL,
	[CLASS_PKMN_TRAINER_2] =   BALL_TYPE_POKE_BALL,
	[CLASS_LOR_LEADER] =       BALL_TYPE_ULTRA_BALL,
	[CLASS_TEAM_AQUA] =        BALL_TYPE_POKE_BALL,
	[CLASS_WAITER] =           BALL_TYPE_POKE_BALL,
	[CLASS_WAITRESS] =         BALL_TYPE_POKE_BALL,
	[CLASS_INTERVIEWER] =      BALL_TYPE_POKE_BALL,
	[CLASS_CYCLIST] =          BALL_TYPE_FAST_BALL,
	[CLASS_IDOL] =             BALL_TYPE_LUXURY_BALL,
	[CLASS_COOLTRAINER_RS] =   BALL_TYPE_POKE_BALL,
	[CLASS_NURSE] =            BALL_TYPE_HEAL_BALL,
	[CLASS_LADY_RS] =          BALL_TYPE_POKE_BALL,
	[CLASS_POKE_KID] =         BALL_TYPE_POKE_BALL,
	[CLASS_RICH_BOY] =         BALL_TYPE_LUXURY_BALL,
	[CLASS_TERROR_GRANBULL] =  BALL_TYPE_LOVE_BALL,
	[CLASS_CAMPING_DUO] =      BALL_TYPE_POKE_BALL,
	[CLASS_SKIIER] =           BALL_TYPE_POKE_BALL,
	[CLASS_GUITARIST] =        BALL_TYPE_POKE_BALL,
	[CLASS_KINDLER] =          BALL_TYPE_POKE_BALL,
	[CLASS_SHOCKER] =          BALL_TYPE_POKE_BALL,
	[CLASS_BUG_MANIAC] =       BALL_TYPE_NET_BALL,
	[CLASS_POLICEMAN] =        BALL_TYPE_DUSK_BALL,
	[CLASS_BLACK_FERROTHORN] = BALL_TYPE_DUSK_BALL,
	[CLASS_ELITE_FOUR_RS] =    BALL_TYPE_POKE_BALL,
	[CLASS_SUCCESSOR] =        BALL_TYPE_LUXURY_BALL,
	[CLASS_SCHOOL_KID] =       BALL_TYPE_POKE_BALL,
	[CLASS_SR_AND_JR] =        BALL_TYPE_POKE_BALL,
	[CLASS_POKEFAN] =          BALL_TYPE_LUXURY_BALL,
	[CLASS_EXPERT] =           BALL_TYPE_ULTRA_BALL,
	[CLASS_RANCHER] =          BALL_TYPE_POKE_BALL,
	[CLASS_FRONTIER_BRAIN] =   BALL_TYPE_PREMIER_BALL,
	[CLASS_SCIENCE_SOCIETY] =  BALL_TYPE_TIMER_BALL,
	[CLASS_JOGGER] =           BALL_TYPE_QUICK_BALL,
	[CLASS_DRAGON_TAMER] =     BALL_TYPE_GREAT_BALL,
	[CLASS_BIRD_KEEPER_RS] =   BALL_TYPE_POKE_BALL,
	[CLASS_NINJA_BOY] =        BALL_TYPE_POKE_BALL,
	[CLASS_MEGA_TRAINER] =     BALL_TYPE_ULTRA_BALL,
	[CLASS_PARASOL_LADY] =     BALL_TYPE_POKE_BALL,
	[CLASS_SWIMMER_F_RS] =     BALL_TYPE_POKE_BALL,
	[CLASS_PICNICKER_RS] =     BALL_TYPE_POKE_BALL,
	[CLASS_SINNOH_LEADER] =    BALL_TYPE_GREAT_BALL,
	[CLASS_DEVELOPER] =        BALL_TYPE_CHERISH_BALL,
	[CLASS_BOARDER] =          BALL_TYPE_POKE_BALL,
	[CLASS_COLLECTOR] =        BALL_TYPE_PREMIER_BALL,
	[CLASS_PKMN_TRAINER_3] =   BALL_TYPE_POKE_BALL,
	[CLASS_BLACK_EMBOAR] =     BALL_TYPE_DUSK_BALL,
	[CLASS_LOR_ADMIN] =        BALL_TYPE_GREAT_BALL, //Because Vega was also a Gym Leader
	[CLASS_LOR] =              BALL_TYPE_PREMIER_BALL,
	[CLASS_SHADOW_ADMIN] =     BALL_TYPE_DUSK_BALL,
	[CLASS_LASS_RS] =          BALL_TYPE_POKE_BALL,
	[CLASS_BUG_CATCHER_RS] =   BALL_TYPE_POKE_BALL,
	[CLASS_HIKER_RS] =         BALL_TYPE_POKE_BALL,
	[CLASS_YOUNG_COUPLE_RS] =  BALL_TYPE_POKE_BALL,
	[CLASS_OLD_COUPLE] =       BALL_TYPE_ULTRA_BALL,
	[CLASS_SIS_AND_BRO_RS] =   BALL_TYPE_POKE_BALL,
	[CLASS_AQUA_ADMIN] =       BALL_TYPE_POKE_BALL,
	[CLASS_MAGMA_ADMIN] =      BALL_TYPE_POKE_BALL,
	[CLASS_YOUNGSTER] =        BALL_TYPE_POKE_BALL,
	[CLASS_BUG_CATCHER] =      BALL_TYPE_NET_BALL,
	[CLASS_LASS] =             BALL_TYPE_POKE_BALL,
	[CLASS_SAILOR] =           BALL_TYPE_DIVE_BALL,
	[CLASS_CAMPER] =           BALL_TYPE_POKE_BALL,
	[CLASS_PICNICKER] =        BALL_TYPE_POKE_BALL,
	[CLASS_POKEMANIAC] =       BALL_TYPE_PREMIER_BALL,
	[CLASS_SUPER_NERD] =       BALL_TYPE_POKE_BALL,
	[CLASS_HIKER] =            BALL_TYPE_HEAVY_BALL,
	[CLASS_BIKER] =            BALL_TYPE_POKE_BALL,
	[CLASS_BURGLAR] =          BALL_TYPE_DUSK_BALL,
	[CLASS_WORKER] =           BALL_TYPE_POKE_BALL,
	[CLASS_FISHERMAN] =        BALL_TYPE_DIVE_BALL,
	[CLASS_SWIMMER_M] =        BALL_TYPE_NET_BALL,
	[CLASS_ROUGHNECK] =        BALL_TYPE_POKE_BALL,
	[CLASS_GAMBLER] =          BALL_TYPE_GREAT_BALL,
	[CLASS_BEAUTY] =           BALL_TYPE_POKE_BALL,
	[CLASS_SWIMMER_F] =        BALL_TYPE_NET_BALL,
	[CLASS_PSYCHIC] =          BALL_TYPE_POKE_BALL,
	[CLASS_ROCKER] =           BALL_TYPE_POKE_BALL,
	[CLASS_JUGGLER] =          BALL_TYPE_POKE_BALL,
	[CLASS_TAMER] =            BALL_TYPE_POKE_BALL,
	[CLASS_BIRD_KEEPER] =      BALL_TYPE_NEST_BALL,
	[CLASS_BLACK_BELT] =       BALL_TYPE_POKE_BALL,
	[CLASS_RIVAL] =            BALL_TYPE_POKE_BALL,
	[CLASS_SCIENTIST] =        BALL_TYPE_TIMER_BALL,
	[CLASS_BOSS] =             BALL_TYPE_ULTRA_BALL,
	[CLASS_LEADER] =           BALL_TYPE_GREAT_BALL,
	[CLASS_SHADOW] =           BALL_TYPE_DUSK_BALL,
	[CLASS_ACE_TRAINER] =      BALL_TYPE_ULTRA_BALL,
	[CLASS_ELITE_4] =          BALL_TYPE_ULTRA_BALL,
	[CLASS_GENTLEMAN] =        BALL_TYPE_LUXURY_BALL,
	[CLASS_RIVAL_2] =          BALL_TYPE_POKE_BALL,
	[CLASS_CHAMPION] =         BALL_TYPE_ULTRA_BALL,
	[CLASS_MEDIUM] =           BALL_TYPE_POKE_BALL,
	[CLASS_TWINS] =            BALL_TYPE_REPEAT_BALL,
	[CLASS_ACE_DUO] =          BALL_TYPE_ULTRA_BALL,
	[CLASS_YOUNG_COUPLE] =     BALL_TYPE_POKE_BALL,
	[CLASS_CRUSH_KIN] =        BALL_TYPE_POKE_BALL,
	[CLASS_SIS_AND_BRO] =      BALL_TYPE_POKE_BALL,
	[CLASS_PKMN_PROF] =        BALL_TYPE_POKE_BALL,
	[CLASS_PLAYER] =           BALL_TYPE_POKE_BALL,
	[CLASS_CRUSH_GIRL] =       BALL_TYPE_POKE_BALL,
	[CLASS_TUBER] =            BALL_TYPE_POKE_BALL,
	[CLASS_PKMN_BREEDER] =     BALL_TYPE_POKE_BALL,
	[CLASS_PKMN_RANGER] =      BALL_TYPE_POKE_BALL,
	[CLASS_AROMA_LADY] =       BALL_TYPE_POKE_BALL,
	[CLASS_RUIN_MANIAC] =      BALL_TYPE_POKE_BALL,
	[CLASS_LADY] =             BALL_TYPE_LUXURY_BALL,
	[CLASS_PAINTER] =          BALL_TYPE_POKE_BALL,
};
#endif
#endif