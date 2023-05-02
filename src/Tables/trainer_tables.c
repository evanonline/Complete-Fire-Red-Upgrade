#include "../defines_battle.h"
#include "../../include/battle.h"
#include "../../include/constants/trainer_classes.h"
#include "../../include/constants/trainers.h"
#include "../../include/constants/opponents.h"
#include "../../include/constants/battle_ai.h"
#include "../../include/constants/items.h"
#include "../../include/easy_text.h"
#include "../../include/new/build_pokemon.h"
#include "../../include/new/build_pokemon_2.h"

// Rival Battle 1 (Vermilion Port, outside)

const struct TrainerMonNoItemDefaultMoves sParty_RivalBattle1_PlayerChoseRelicanth[] = {
    {
        .iv = 3,
        .lvl = 5,
        .species = SPECIES_PASSIMIAN,
    },
};
	
const struct TrainerMonNoItemDefaultMoves sParty_RivalBattle1_PlayerChoseSigilyph[] = {
    {
        .iv = 3,
        .lvl = 5,
        .species = SPECIES_RELICANTH,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_RivalBattle1_PlayerChosePassimian[] = {
    {
        .iv = 3,
        .lvl = 5,
        .species = SPECIES_SIGILYPH,
    },
};

//Route 6

const struct TrainerMonNoItemDefaultMoves sParty_Route6BugCatcherHorace[] = {
    {
        .iv = 3,
        .lvl = 4,
        .species = SPECIES_BLIPBUG,
    },
	{
        .iv = 3,
        .lvl = 4,
        .species = SPECIES_CATERPIE,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_Route6YoungsterMaruyama[] = {
    {
        .iv = 1,
        .lvl = 5,
        .species = SPECIES_PURRLOIN,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_Route6YoungsterMaruyama_2[] = {
    {
        .iv = 1,
        .lvl = 20,
        .species = SPECIES_PURRLOIN,
    },
};

const struct TrainerMonItemCustomMoves sParty_Route6SuperNerdDieter_1[] = {
    {
        .iv = 31,
        .lvl = 16,
        .species = SPECIES_SLURPUFF,
		.moves = {
            MOVE_STICKYWEB,
            MOVE_COPYCAT,
            MOVE_DAZZLINGGLEAM,
            MOVE_CALMMIND,
        },
		.heldItem = ITEM_SITRUS_BERRY,
        .ability = 0,
    },
};

//Iced Path

const struct TrainerMonNoItemDefaultMoves sParty_IcedPathSwimmerFrancine[] = {
    {
        .iv = 3,
        .lvl = 5,
        .species = SPECIES_PSYDUCK,
    },
	{
        .iv = 3,
        .lvl = 6,
        .species = SPECIES_GOLDEEN,
    },
	{
        .iv = 3,
        .lvl = 3,
        .species = SPECIES_LUVDISC,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_IcedPathCamperTroy[] = {
    {
        .iv = 0,
        .lvl = 6,
        .species = SPECIES_SNEASEL_H,
    }
};

const struct TrainerMonNoItemCustomMoves sParty_IcedPathCamperRoss[] = {
    {
        .iv = 4,
        .lvl = 6,
        .species = SPECIES_KECLEON,
        .moves = {
            MOVE_FAKEOUT,
            MOVE_BRICKBREAK,
            MOVE_SHADOWSNEAK,
            MOVE_MAGICCOAT,
        },
		.ability = 1,
    }
};

//Route 7

const struct TrainerMonNoItemDefaultMoves sParty_Route7InfielderDelbert[] = {
    {
        .iv = 1,
        .lvl = 7,
        .species = SPECIES_SPOINK,
    },
	{
        .iv = 1,
        .lvl = 6,
        .species = SPECIES_THROH,
    },
};

//Celadon City, Sibling Battle 1

const struct TrainerMonNoItemDefaultMoves sParty_BrandyBattle1_PlayerChoseRelicanth[] = {
    {
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_SIGILYPH,
    },
	{
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_CHINGLING,
    },
};
	
const struct TrainerMonNoItemDefaultMoves sParty_BrandyBattle1_PlayerChoseSigilyph[] = {
    {
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_PASSIMIAN,
    },
	{
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_CHINGLING,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_BrandyBattle1_PlayerChosePassimian[] = {
	{
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_RELICANTH,
    },
	{
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_CHINGLING,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_SherryBattle1_PlayerChoseRelicanth[] = {
    {
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_SIGILYPH,
    },
	{
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_CHINGLING,
    },
};
	
const struct TrainerMonNoItemDefaultMoves sParty_SherryBattle1_PlayerChoseSigilyph[] = {
    {
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_PASSIMIAN,
    },
	{
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_CHINGLING,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_SherryBattle1_PlayerChosePassimian[] = {
	{
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_RELICANTH,
    },
	{
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_CHINGLING,
    },
};

// Celadon Dept Store

const struct TrainerMonNoItemCustomMoves sParty_CeladonDept_RocketGuard1[] = {
    {
        .iv = 15,
        .lvl = 9,
        .species = SPECIES_POOCHYENA,
        .moves = {
            MOVE_TACKLE,
            MOVE_SANDATTACK,
            MOVE_TAUNT,
            MOVE_SNARL,
        },
		.ability = 1,
    }
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonDept_RocketGuard2[] = {
    {
        .iv = 15,
        .lvl = 9,
        .species = SPECIES_POOCHYENA,
        .moves = {
            MOVE_TACKLE,
            MOVE_SANDATTACK,
            MOVE_TAUNT,
            MOVE_SNARL,
        },
		.ability = 0,
    }
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonDept_Rocket1F[] = {
    {
        .iv = 20,
        .lvl = 9,
        .species = SPECIES_GROWLITHE_H,
        .moves = {
            MOVE_ROCKPOLISH,
            MOVE_EMBER,
            MOVE_ROAR,
            MOVE_SNARL,
        },
		.ability = 2,
    },
    {
        .iv = 20,
        .lvl = 9,
        .species = SPECIES_NICKIT,
        .moves = {
            MOVE_SNARL,
            MOVE_HONECLAWS,
            MOVE_TAILWHIP,
            MOVE_QUICKATTACK,
        },
		.ability = 1,
    }
};

const struct TrainerMonNoItemDefaultMoves sParty_CeladonDept_Rocket2F_1[] = {
	{
        .iv = 15,
        .lvl = 8,
        .species = SPECIES_CHARMANDER,
    },
	{
        .iv = 15,
        .lvl = 8,
        .species = SPECIES_BULBASAUR,
    },
	{
        .iv = 5,
        .lvl = 8,
        .species = SPECIES_SQUIRTLE,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_CeladonDept_Rocket2F_2[] = {
	{
        .iv = 15,
        .lvl = 10,
        .species = SPECIES_PIPLUP,
    },
	{
        .iv = 15,
        .lvl = 10,
        .species = SPECIES_TEPIG,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonDept_Rocket4F_1[] = {
    {
        .iv = 20,
        .lvl = 8,
        .species = SPECIES_GRIMER_A,
        .moves = {
            MOVE_SNARL,
            MOVE_HARDEN,
            MOVE_ACIDSPRAY,
            MOVE_MEANLOOK,
        },
		.ability = 0,
    },
    {
        .iv = 20,
        .lvl = 7,
        .species = SPECIES_SNEASEL,
        .moves = {
            MOVE_SNARL,
            MOVE_QUICKATTACK,
            MOVE_TAUNT,
            MOVE_METALCLAW,
        },
		.ability = 0,
    }
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonDept_Rocket4F_2[] = {
    {
        .iv = 14,
        .lvl = 9,
        .species = SPECIES_CARVANHA,
        .moves = {
            MOVE_AQUAJET,
            MOVE_POISONFANG,
            MOVE_FOCUSENERGY,
            MOVE_SNARL,
        },
		.ability = 0,
    },
	{
        .iv = 16,
        .lvl = 8,
        .species = SPECIES_CARVANHA,
        .moves = {
            MOVE_POISONFANG,
            MOVE_PROTECT,
            MOVE_LEER,
            MOVE_SNARL,
        },
		.ability = 0,
    },
};


const struct TrainerMonNoItemCustomMoves sParty_CeladonDept_Rocket5F_1[] = {
    {
        .iv = 13,
        .lvl = 8,
        .species = SPECIES_LITLEO,
        .moves = {
            MOVE_TACKLE,
            MOVE_EMBER,
            MOVE_WORKUP,
            MOVE_SNARL,
        },
		.ability = 0,
    },
    {
        .iv = 9,
        .lvl = 6,
        .species = SPECIES_SPIRITOMB,
        .moves = {
            MOVE_SNARL,
            MOVE_SHADOWSNEAK,
            MOVE_CURSE,
            MOVE_SPITE,
        },
		.ability = 0,
    }
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonDept_Rocket5F_2[] = {
    {
        .iv = 17,
        .lvl = 8,
        .species = SPECIES_ABSOL,
        .moves = {
            MOVE_PERISHSONG,
            MOVE_QUICKATTACK,
            MOVE_FLASH,
            MOVE_SNARL,
        },
		.ability = 0,
    },
};

// Celadon Dept Store - Garchomp Gavin 1

const struct TrainerMonNoItemCustomMoves sParty_CeladonDept_GarchompGavin1[] = {
    {
        .iv = 31,
        .lvl = 11,
        .species = SPECIES_GIBLE,
        .moves = {
            MOVE_DRAGONBREATH,
            MOVE_SANDTOMB,
            MOVE_BODYSLAM,
            MOVE_SUBSTITUTE,
        },
		.ability = 2,
    }
};

// Celadon Dept Store - Jessie & James 1

const struct TrainerMonNoItemDefaultMoves sParty_CeladonDept_JessieJames1[] = {
	{
        .iv = 1,
        .lvl = 7,
        .species = SPECIES_ZUBAT,
    },
	{
        .iv = 1,
        .lvl = 7,
        .species = SPECIES_RATTATA,
    }
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonDeptRockets_SibPartner[] = {
	{
        .iv = 5,
        .lvl = 14,
        .species = SPECIES_CHINGLING,
        .moves = {
            MOVE_WRAP,
            MOVE_YAWN,
            MOVE_CONFUSION,
            MOVE_ASTONISH,
        },
		.ability = 0,
    }
};


#define NO_NAME {_END, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE}

const struct Trainer gTrainers[] = {
	
    [TRAINER_NONE] = {
        .trainerName = NO_NAME,
    },
	
	// Rival Battle 1
	
	[TRAINER_RIVALBATTLE1_PLAYER_CHOSE_RELICANTH] = {
        .partyFlags = 0,
        .trainerClass = CLASS_RIVAL,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_RIVAL,		
        .trainerName = NO_NAME, // Name replaced from RIVAL trainer classes
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_FIRST_BATTLE,
        .partySize = NELEMS(sParty_RivalBattle1_PlayerChoseRelicanth),
        .party = {.NoItemDefaultMoves = sParty_RivalBattle1_PlayerChoseRelicanth}
    },
	
	[TRAINER_RIVALBATTLE1_PLAYER_CHOSE_SIGILYPH] = {
        .partyFlags = 0,
        .trainerClass = CLASS_RIVAL,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_RIVAL,
        .trainerName = NO_NAME, // Name replaced from RIVAL trainer classes
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_FIRST_BATTLE,
        .partySize = NELEMS(sParty_RivalBattle1_PlayerChoseSigilyph),
        .party = {.NoItemDefaultMoves = sParty_RivalBattle1_PlayerChoseSigilyph}
    },
		
	[TRAINER_RIVALBATTLE1_PLAYER_CHOSE_PASSIMIAN] = {
        .partyFlags = 0,
        .trainerClass = CLASS_RIVAL,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_RIVAL,
        .trainerName = NO_NAME, // Name replaced from RIVAL trainer classes
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_FIRST_BATTLE,
        .partySize = NELEMS(sParty_RivalBattle1_PlayerChosePassimian),
        .party = {.NoItemDefaultMoves = sParty_RivalBattle1_PlayerChosePassimian}
    },
	
	// Sibling Battle 1
	
	[TRAINER_BRANDYBATTLE1_PLAYER_CHOSE_RELICANTH] = {
        .partyFlags = 0,
        .trainerClass = CLASS_PKMN_TRAINER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_BRANDY,		
        .trainerName = {_B, _r, _a, _n, _d, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_BrandyBattle1_PlayerChoseRelicanth),
        .party = {.NoItemDefaultMoves = sParty_BrandyBattle1_PlayerChoseRelicanth}
    },
	
	[TRAINER_BRANDYBATTLE1_PLAYER_CHOSE_SIGILYPH] = {
        .partyFlags = 0,
        .trainerClass = CLASS_PKMN_TRAINER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_BRANDY,
        .trainerName = {_B, _r, _a, _n, _d, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_BrandyBattle1_PlayerChoseSigilyph),
        .party = {.NoItemDefaultMoves = sParty_BrandyBattle1_PlayerChoseSigilyph}
    },
		
	[TRAINER_BRANDYBATTLE1_PLAYER_CHOSE_PASSIMIAN] = {
        .partyFlags = 0,
        .trainerClass = CLASS_PKMN_TRAINER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_BRANDY,
        .trainerName = {_B, _r, _a, _n, _d, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_BrandyBattle1_PlayerChosePassimian),
        .party = {.NoItemDefaultMoves = sParty_BrandyBattle1_PlayerChosePassimian}
    },
	
	[TRAINER_SHERRYBATTLE1_PLAYER_CHOSE_RELICANTH] = {
        .partyFlags = 0,
        .trainerClass = CLASS_PKMN_TRAINER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_SHERRY,		
        .trainerName = {_S, _h, _e, _r, _r, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_SherryBattle1_PlayerChoseRelicanth),
        .party = {.NoItemDefaultMoves = sParty_SherryBattle1_PlayerChoseRelicanth}
    },
	
	[TRAINER_SHERRYBATTLE1_PLAYER_CHOSE_SIGILYPH] = {
        .partyFlags = 0,
        .trainerClass = CLASS_PKMN_TRAINER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_SHERRY,
        .trainerName = {_S, _h, _e, _r, _r, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_SherryBattle1_PlayerChoseSigilyph),
        .party = {.NoItemDefaultMoves = sParty_SherryBattle1_PlayerChoseSigilyph}
    },
		
	[TRAINER_SHERRYBATTLE1_PLAYER_CHOSE_PASSIMIAN] = {
        .partyFlags = 0,
        .trainerClass = CLASS_PKMN_TRAINER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_SHERRY,
        .trainerName = {_S, _h, _e, _r, _r, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_SherryBattle1_PlayerChosePassimian),
        .party = {.NoItemDefaultMoves = sParty_SherryBattle1_PlayerChosePassimian}
    },
	
	// Route 6
	
	[TRAINER_ROUTE6_BUGCATCHER_HORACE] = {
        .partyFlags = 0,
        .trainerClass = CLASS_BUG_CATCHER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_BUG_CATCHER,
        .trainerName = {_H, _o, _r, _a, _c, _e, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_Route6BugCatcherHorace),
        .party = {.NoItemDefaultMoves = sParty_Route6BugCatcherHorace}
    },
	
	[TRAINER_ROUTE6_YOUNGSTER_MARUYAMA] = {
        .partyFlags = 0,
        .trainerClass = CLASS_YOUNGSTER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_YOUNGSTER_B,
        .trainerName = {_M, _a, _r, _u, _y, _a, _m, _a, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_Route6YoungsterMaruyama),
        .party = {.NoItemDefaultMoves = sParty_Route6YoungsterMaruyama}
    },
	
	[TRAINER_ROUTE6_YOUNGSTER_MARUYAMA_2] = {
        .partyFlags = 0,
        .trainerClass = CLASS_YOUNGSTER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_YOUNGSTER_B,
        .trainerName = {_M, _a, _r, _u, _y, _a, _m, _a, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_Route6YoungsterMaruyama_2),
        .party = {.NoItemDefaultMoves = sParty_Route6YoungsterMaruyama_2}
    },
	
	[TRAINER_ROUTE6_SUPERNERD_DIETER_1] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES | PARTY_FLAG_HAS_ITEM,
        .trainerClass = CLASS_SUPER_NERD,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_SUPER_NERD,
        .trainerName = {_D, _i, _e, _t, _e, _r, _END},
        .items = { ITEM_POTION },
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_SEMI_SMART | AI_SCRIPT_CHECK_BAD_MOVE | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_Route6SuperNerdDieter_1),
        .party = {.ItemCustomMoves = sParty_Route6SuperNerdDieter_1}
    },
	
	// Iced Path
	
    [TRAINER_ICEDPATH_SWIMMER_FRANCINE] = {
        .partyFlags = 0,
        .trainerClass = CLASS_SWIMMER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
        .trainerPic = TRAINER_PIC_SWIMMER_B,
        .trainerName = {_F, _r, _a, _n, _c, _i, _n, _e, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_IcedPathSwimmerFrancine),
        .party = {.NoItemDefaultMoves = sParty_IcedPathSwimmerFrancine}
    },
	
    [TRAINER_ICEDPATH_CAMPER_TROY] = {
        .partyFlags = 0,
        .trainerClass = CLASS_CAMPER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_CAMPER,
        .trainerName = {_T, _r, _o, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_IcedPathCamperTroy),
        .party = {.NoItemDefaultMoves = sParty_IcedPathCamperTroy}
    },
	
	[TRAINER_ICEDPATH_CAMPER_ROSS] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_CAMPER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_CAMPER,
        .trainerName = {_R, _o, _s, _s, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_SEMI_SMART | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_IcedPathCamperRoss),
        .party = {.NoItemCustomMoves = sParty_IcedPathCamperRoss}
    },
	
	// Route 7
	
	[TRAINER_ROUTE7_INFIELDER_DELBERT] = {
        .partyFlags = 0,
        .trainerClass = CLASS_INFIELDER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_INFIELDER,
        .trainerName = {_D, _e, _l, _b, _e, _r, _t, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_Route7InfielderDelbert),
        .party = {.NoItemDefaultMoves = sParty_Route7InfielderDelbert}
    },
	
	// Celadon Rockets - Dept Store
	
	[TRAINER_CELADON_ROCKETGRUNT_LEFT] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_ROCKET_GRUNT,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_ROCKET_GRUNT_A,
        .trainerName = {_C, _h, _e, _t, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_RocketGuard1),
        .party = {.NoItemCustomMoves = sParty_CeladonDept_RocketGuard1}
    },	
	
	[TRAINER_CELADON_ROCKETGRUNT_RIGHT] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_ROCKET_GRUNT,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_ROCKET_GRUNT_B,
        .trainerName = {_C, _h, _i, _e, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_RocketGuard2),
        .party = {.NoItemCustomMoves = sParty_CeladonDept_RocketGuard2}
    },
	
	// Celadon Dept Store - Rockets
	
	[TRAINER_DEPTSTORE_ROCKETGRUNT_1F] {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_ROCKET_GRUNT,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_ROCKET_GRUNT_B,
        .trainerName = {_T, _i, _r, _a, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_Rocket1F),
        .party = {.NoItemCustomMoves = sParty_CeladonDept_Rocket1F}
    },	
	
	[TRAINER_DEPTSTORE_ROCKETGRUNT_2F_1] {
        .partyFlags = 0,
        .trainerClass = CLASS_ROCKET_GRUNT,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_ROCKET_GRUNT_A,
        .trainerName = {_J, _e, _r, _e, _m, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_Rocket2F_1),
        .party = {.NoItemDefaultMoves = sParty_CeladonDept_Rocket2F_1}
    },	
	
	[TRAINER_DEPTSTORE_ROCKETGRUNT_2F_2] {
        .partyFlags = 0,
        .trainerClass = CLASS_ROCKET_GRUNT,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_ROCKET_GRUNT_A,
        .trainerName = {_M, _o, _n, _t, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_Rocket2F_2),
        .party = {.NoItemDefaultMoves = sParty_CeladonDept_Rocket2F_2}
    },
	
	[TRAINER_DEPTSTORE_ROCKETGRUNT_4F_1] {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_ROCKET_GRUNT,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_ROCKET_GRUNT_B,
        .trainerName = {_A, _l, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_Rocket4F_1),
        .party = {.NoItemCustomMoves = sParty_CeladonDept_Rocket4F_1}
    },
	
	[TRAINER_DEPTSTORE_ROCKETGRUNT_4F_2] {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_ROCKET_GRUNT,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_ROCKET_GRUNT_A,
        .trainerName = {_B, _r, _a, _m, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_Rocket4F_2),
        .party = {.NoItemCustomMoves = sParty_CeladonDept_Rocket4F_2}
    },	
	
	[TRAINER_DEPTSTORE_ROCKETGRUNT_5F_1] {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_ROCKET_GRUNT,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_ROCKET_GRUNT_A,
        .trainerName = {_D, _r, _e, _w, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_Rocket5F_1),
        .party = {.NoItemCustomMoves = sParty_CeladonDept_Rocket5F_1}
    },
	
	[TRAINER_DEPTSTORE_ROCKETGRUNT_5F_2] {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_ROCKET_GRUNT,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_ROCKET_GRUNT_A,
        .trainerName = {_Z, _i, _n, _o, _v, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_Rocket5F_2),
        .party = {.NoItemCustomMoves = sParty_CeladonDept_Rocket5F_2}
    },
	
	// Celadon Dept Store - Garchomp Gavin
	
	[TRAINER_CELADON_GARCHOMPGAVIN1] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_GARCHOMP,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_GARCHOMP_GAVIN,
        .trainerName = {_G, _a, _v, _i, _n, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_GarchompGavin1),
        .party = {.NoItemCustomMoves = sParty_CeladonDept_GarchompGavin1}
    },	
	
	// Celadon Dept Store - Jessie & James
	
	[TRAINER_CELADON_JESSIEJAMES1] = {
        .partyFlags = 0,
        .trainerClass = CLASS_ROCKET_DUO,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_SUSPICIOUS,
        .trainerPic = TRAINER_PIC_JESSIE_JAMES,
        .trainerName = {_J, _e, _s, _s, _i, _e, _J, _a, _m, _e, _s, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_CeladonDept_JessieJames1),
        .party = {.NoItemDefaultMoves = sParty_CeladonDept_JessieJames1}
    },
	
	[TRAINER_DEPTSTORE_SHERRYPARTNER] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_PKMN_TRAINER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_SHERRY,		
        .trainerName = {_S, _h, _e, _r, _r, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_CeladonDeptRockets_SibPartner),
        .party = {.NoItemCustomMoves = sParty_CeladonDeptRockets_SibPartner}
    },		
	
	[TRAINER_DEPTSTORE_BRANDYPARTNER] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_PKMN_TRAINER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_BRANDY,
        .trainerName = {_B, _r, _a, _n, _d, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_SEMI_SMART | AI_SCRIPT_CHECK_BAD_MOVE | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_CeladonDeptRockets_SibPartner),
        .party = {.NoItemCustomMoves = sParty_CeladonDeptRockets_SibPartner}
    },
};
