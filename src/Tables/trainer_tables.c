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

//Route 6

const struct TrainerMonNoItemDefaultMoves sParty_Route6BugCatcherHorace[] = {
    {
        .iv = 3,
        .lvl = 4,
        .species = SPECIES_METAPOD,
    },
	{
        .iv = 3,
        .lvl = 4,
        .species = SPECIES_KAKUNA,
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

const struct TrainerMonNoItemDefaultMoves sParty_IcedPathSwimmerFrancine_2[] = {
    {
        .iv = 6,
        .lvl = 15,
        .species = SPECIES_PSYDUCK,
    },
	{
        .iv = 3,
        .lvl = 15,
        .species = SPECIES_GOLDEEN,
    },
	{
        .iv = 19,
        .lvl = 17,
        .species = SPECIES_LUVDISC,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_IcedPathSwimmerFrancine_3[] = {
    {
        .iv = 6,
        .lvl = 36,
        .species = SPECIES_GOLDUCK,
    },
	{
        .iv = 3,
        .lvl = 38,
        .species = SPECIES_SEAKING,
    },
	{
        .iv = 3,
        .lvl = 39,
        .species = SPECIES_LUVDISC,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_IcedPathCamperTroy[] = {
    {
        .iv = 0,
        .lvl = 7,
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

const struct TrainerMonNoItemCustomMoves sParty_IcedPathCamperRoss_2[] = {
    {
        .iv = 20,
        .lvl = 47,
        .species = SPECIES_KECLEON,
        .moves = {
            MOVE_FAKEOUT,
            MOVE_ICEBEAM,
            MOVE_SHADOWSNEAK,
            MOVE_CAMOUFLAGE,
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

#define NO_NAME {_END, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE, _SPACE}

const struct Trainer gTrainers[] = {
	
    [TRAINER_NONE] = {
        .trainerName = NO_NAME,
    },
	
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
	
	[TRAINER_ICEDPATH_SWIMMER_FRANCINE_2] = {
        .partyFlags = 0,
        .trainerClass = CLASS_SWIMMER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
        .trainerPic = TRAINER_PIC_SWIMMER_B,
        .trainerName = {_F, _r, _a, _n, _c, _i, _n, _e, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_IcedPathSwimmerFrancine_2),
        .party = {.NoItemDefaultMoves = sParty_IcedPathSwimmerFrancine_2}
    },
	
	[TRAINER_ICEDPATH_SWIMMER_FRANCINE_3] = {
        .partyFlags = 0,
        .trainerClass = CLASS_SWIMMER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
        .trainerPic = TRAINER_PIC_SWIMMER_B,
        .trainerName = {_F, _r, _a, _n, _c, _i, _n, _e, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_IcedPathSwimmerFrancine_3),
        .party = {.NoItemDefaultMoves = sParty_IcedPathSwimmerFrancine_3}
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
	
	[TRAINER_ICEDPATH_CAMPER_ROSS_2] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_CAMPER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_CAMPER,
        .trainerName = {_R, _o, _s, _s, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_SEMI_SMART | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_IcedPathCamperRoss_2),
        .party = {.NoItemCustomMoves = sParty_IcedPathCamperRoss_2}
    },
	
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
};
