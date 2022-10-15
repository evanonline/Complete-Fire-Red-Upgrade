#include "../defines_battle.h"
#include "../../include/battle.h"
#include "../../include/constants/trainer_classes.h"
#include "../../include/constants/trainers.h"
#include "../../include/constants/opponents.h"
#include "../../include/constants/battle_ai.h"
#include "../../include/constants/items.h"
#include "../../include/easy_text.h"
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
        .lvl = 6,
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
        .partyFlags = 0,
        .trainerClass = CLASS_CAMPER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_CAMPER,
        .trainerName = {_R, _o, _s, _s, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_SEMI_SMART | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_IcedPathCamperRoss),
        .party = {.NoItemCustomMoves = sParty_IcedPathCamperRoss}
    }
};
