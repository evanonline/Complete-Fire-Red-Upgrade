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
        .lvl = 9,
        .species = SPECIES_PURRLOIN,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_Route6YoungsterMaruyama_3[] = {
    {
        .iv = 1,
        .lvl = 21,
        .species = SPECIES_LIEPARD,
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
        .lvl = 9,
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

// Route 5

const struct TrainerMonNoItemDefaultMoves sParty_Route5ClownJeeves[] = {
	{
        .iv = 12,
        .lvl = 8,
        .species = SPECIES_KRICKETOT,
    },
	{
        .iv = 12,
        .lvl = 6,
        .species = SPECIES_STANTLER,
    }
	
};const struct TrainerMonNoItemDefaultMoves sParty_Route5ClownJeeves_2[] = {
	{
        .iv = 12,
        .lvl = 9,
        .species = SPECIES_KRICKETOT,
    },
	{
        .iv = 12,
        .lvl = 7,
        .species = SPECIES_STANTLER,
    }
};

// Route 24 - Nugget Bridge

const struct TrainerMonNoItemDefaultMoves sParty_NuggetBridgeLassJarabe[] = {
	{
        .iv = 12,
        .lvl = 7,
        .species = SPECIES_MANKEY,
    },
	{
        .iv = 12,
        .lvl = 7,
        .species = SPECIES_BUDEW,
    }
};

const struct TrainerMonNoItemDefaultMoves sParty_NuggetBridgeBirdkeeperAntipasto[] = {
	{
        .iv = 12,
        .lvl = 4,
        .species = SPECIES_PIDOVE,
    },
	{
        .iv = 12,
        .lvl = 8,
        .species = SPECIES_HONCHKROW,
    }
};

const struct TrainerMonNoItemDefaultMoves sParty_NuggetBridgeYoungsterSeltzer[] = {
	{
        .iv = 12,
        .lvl = 7,
        .species = SPECIES_GEODUDE,
    },
	{
        .iv = 12,
        .lvl = 8,
        .species = SPECIES_BERGMITE,
    },
	{
        .iv = 12,
        .lvl = 9,
        .species = SPECIES_MILCERY,
    }
};

const struct TrainerMonNoItemDefaultMoves sParty_NuggetBridgeBattleGirlMaslina[] = {
	{
        .iv = 12,
        .lvl = 7,
        .species = SPECIES_TYROGUE,
    },
	{
        .iv = 12,
        .lvl = 8,
        .species = SPECIES_FALINKS,
    },
	{
        .iv = 12,
        .lvl = 7,
        .species = SPECIES_SNEASEL_H,
    },
	{
        .iv = 12,
        .lvl = 8,
        .species = SPECIES_SAWK,
    }
};

const struct TrainerMonNoItemDefaultMoves sParty_NuggetBridgePicnickerOatmeal[] = {
	{
        .iv = 10,
        .lvl = 7,
        .species = SPECIES_TAUROS,
    },
	{
        .iv = 10,
        .lvl = 8,
        .species = SPECIES_SPINDA,
    },
	{
        .iv = 10,
        .lvl = 9,
        .species = SPECIES_TORKOAL,
    },
	{
        .iv = 12,
        .lvl = 9,
        .species = SPECIES_MAKUHITA,
    },
	{
        .iv = 15,
        .lvl = 8,
        .species = SPECIES_TAUROS,
    }
};

const struct TrainerMonNoItemDefaultMoves sParty_Route24CamperShane[] = {
	{
        .iv = 10,
        .lvl = 9,
        .species = SPECIES_RATTATA,
    },
	{
        .iv = 10,
        .lvl = 9,
        .species = SPECIES_EKANS,
    },	
};

const struct TrainerMonNoItemDefaultMoves sParty_Route24_RivalBattle2[] = {
	{
        .iv = 25,
        .lvl = 10,
        .species = SPECIES_NINCADA,
    },
	{
        .iv = 25,
        .lvl = 11,
        .species = SPECIES_SNEASEL_H,
    },
};

// Route 25

const struct TrainerMonNoItemCustomMoves sParty_Route25BackpackerJaney[] = {
    {
        .iv = 30,
        .lvl = 7,
        .species = SPECIES_GEODUDE,
		.moves = {
            MOVE_ROCKTOMB,
            MOVE_DEFENSECURL,
            MOVE_ROCKPOLISH,
            MOVE_FLAIL,
        },
        .ability = 0,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_Route25_LassIphigenia[] = {
	{
        .iv = 21,
        .lvl = 9,
        .species = SPECIES_SEWADDLE,
    },
	{
        .iv = 14,
        .lvl = 9,
        .species = SPECIES_CHIKORITA,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_Route25_PokeKidJamie[] = {
	{
        .iv = 21,
        .lvl = 6,
        .species = SPECIES_IGGLYBUFF,
    },
	{
        .iv = 14,
        .lvl = 6,
        .species = SPECIES_GRUBBIN,
    },
};

// Bill's Garden

const struct TrainerMonItemCustomMoves sParty_BillsGarden_Mint[] = {
    {
        .iv = 31,
        .lvl = 13,
        .species = SPECIES_STARYU,
		.moves = {
            MOVE_SUBSTITUTE,
            MOVE_RAPIDSPIN,
            MOVE_RECOVER,
            MOVE_LIGHTSCREEN,
        },
		.heldItem = ITEM_EVIOLITE,
        .ability = 2,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_BillsGarden_Lillie[] = {
    {
        .iv = 27,
        .lvl = 10,
        .species = SPECIES_CUTIEFLY,
		.moves = {
            MOVE_FAIRYWIND,
            MOVE_POWDER,
            MOVE_LIGHTSCREEN,
            MOVE_REFLECT,
        },
        .ability = 1,
    },
    {
        .iv = 29,
        .lvl = 11,
        .species = SPECIES_POPPLIO,
		.moves = {
            MOVE_POUND,
            MOVE_BRINE,
            MOVE_GROWL,
            MOVE_LIFEDEW,
        },
        .ability = 0,
    },
    {
        .iv = 26,
        .lvl = 10,
        .species = SPECIES_VULPIX_A,
		.moves = {
            MOVE_MOONBLAST,
            MOVE_POWERSWAP,
            MOVE_BABYDOLLEYES,
            MOVE_ICESHARD,
        },
        .ability = 1,
    },
};

// Cerulean Gym

const struct TrainerMonNoItemCustomMoves sParty_CeruleanGym_SwimmerJulie_Badge1[] = {
    {
        .iv = 26,
        .lvl = 12,
        .species = SPECIES_MARILL,
		.moves = {
            MOVE_TACKLE,
            MOVE_DEFENSECURL,
            MOVE_AQUAJET,
            MOVE_TAILWHIP,
        },
        .ability = 1,
    },
	{
        .iv = 22,
        .lvl = 13,
        .species = SPECIES_PIPLUP,
		.moves = {
            MOVE_AQUARING,
            MOVE_POWERTRIP,
            MOVE_BUBBLE,
            MOVE_AGILITY,
        },
        .ability = 1,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_CeruleanGym_SwimmerJulie_Badge2[] = {
    {
        .iv = 26,
        .lvl = 13,
        .species = SPECIES_WINGULL,
		.moves = {
            MOVE_RAINDANCE,
            MOVE_MIST,
            MOVE_TWISTER,
            MOVE_AGILITY,
        },
        .ability = 2,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_CeruleanGym_SwimmerMick_Badge1[] = {
    {
        .iv = 26,
        .lvl = 13,
        .species = SPECIES_WINGULL,
		.moves = {
            MOVE_RAINDANCE,
            MOVE_WATERGUN,
            MOVE_TWISTER,
            MOVE_AGILITY,
        },
        .ability = 2,
    },
	{
        .iv = 26,
        .lvl = 13,
        .species = SPECIES_WINGULL,
		.moves = {
            MOVE_WINGATTACK,
            MOVE_WATERGUN,
            MOVE_ROOST,
            MOVE_AGILITY,
        },
        .ability = 1,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_CeruleanGym_SwimmerMick_Badge2[] = {
    {
        .iv = 26,
        .lvl = 16,
        .species = SPECIES_WINGULL,
		.moves = {
            MOVE_RAINDANCE,
            MOVE_WATERGUN,
            MOVE_TWISTER,
            MOVE_AGILITY,
        },
        .ability = 2,
    },
	{
        .iv = 26,
        .lvl = 17,
        .species = SPECIES_WINGULL,
		.moves = {
            MOVE_WINGATTACK,
            MOVE_WATERGUN,
            MOVE_ROOST,
            MOVE_AGILITY,
        },
        .ability = 1,
    },
};

const struct TrainerMonItemCustomMoves sParty_CeruleanGym_Misty_Badge1[] = {
    {
        .iv = 27,
        .lvl = 14,
        .species = SPECIES_PSYDUCK,
		.moves = {
            MOVE_FUTURESIGHT,
            MOVE_ENCORE,
            MOVE_FLIPTURN,
            MOVE_WATERGUN,
        },
		.heldItem = ITEM_SITRUS_BERRY,
        .ability = 1,
    },
	{
        .iv = 27,
        .lvl = 15,
        .species = SPECIES_BUIZEL,
		.moves = {
            MOVE_AQUAJET,
            MOVE_BATONPASS,
            MOVE_FLIPTURN,
            MOVE_AGILITY,
        },
		.heldItem = ITEM_SALAC_BERRY,
        .ability = 1,
    },
	{
        .iv = 27,
        .lvl = 15,
        .species = SPECIES_CLAUNCHER,
		.moves = {
            MOVE_WATERPULSE,
            MOVE_PROTECT,
            MOVE_FLIPTURN,
            MOVE_RAINDANCE,
        },
		.heldItem = ITEM_LUM_BERRY,
        .ability = 0,
    },
	{
        .iv = 27,
        .lvl = 16,
        .species = SPECIES_STARYU,
		.moves = {
            MOVE_FLIPTURN,
            MOVE_MAGICCOAT,
            MOVE_RECOVER,
            MOVE_WATERGUN,
        },
		.heldItem = ITEM_ASSAULT_VEST,
        .ability = 1,
    },
};

const struct TrainerMonItemCustomMoves sParty_CeruleanGym_Misty_Badge2[] = {
      {
        .iv = 27,
        .lvl = 17,
        .species = SPECIES_PSYDUCK,
		.moves = {
            MOVE_FUTURESIGHT,
            MOVE_ENCORE,
            MOVE_FLIPTURN,
            MOVE_WATERGUN,
        },
		.heldItem = ITEM_SITRUS_BERRY,
        .ability = 1,
    },
	{
        .iv = 27,
        .lvl = 18,
        .species = SPECIES_BUIZEL,
		.moves = {
            MOVE_AQUAJET,
            MOVE_BATONPASS,
            MOVE_FLIPTURN,
            MOVE_AGILITY,
        },
		.heldItem = ITEM_SALAC_BERRY,
        .ability = 1,
    },
	{
        .iv = 27,
        .lvl = 18,
        .species = SPECIES_CLAUNCHER,
		.moves = {
            MOVE_WATERPULSE,
            MOVE_PROTECT,
            MOVE_FLIPTURN,
            MOVE_RAINDANCE,
        },
		.heldItem = ITEM_LUM_BERRY,
        .ability = 0,
    },
	{
        .iv = 27,
        .lvl = 19,
        .species = SPECIES_STARYU,
		.moves = {
            MOVE_FLIPTURN,
            MOVE_MAGICCOAT,
            MOVE_RECOVER,
            MOVE_WATERGUN,
        },
		.heldItem = ITEM_ASSAULT_VEST,
        .ability = 1,
    },
};

// Celadon Gym

const struct TrainerMonNoItemCustomMoves sParty_CeladonGym_PicnickerFynley_Badge1[] = {
    {
        .iv = 26,
        .lvl = 14,
        .species = SPECIES_ODDISH,
		.moves = {
            MOVE_RAZORLEAF,
            MOVE_SWEETSCENT,
            MOVE_POISONPOWDER,
            MOVE_STUNSPORE,
        },
        .ability = 0,
    },
	{
        .iv = 23,
        .lvl = 13,
        .species = SPECIES_DEERLING_SUMMER,
		.moves = {
            MOVE_TACKLE,
            MOVE_CAMOUFLAGE,
            MOVE_DOUBLEKICK,
            MOVE_LEECHSEED,
        },
        .ability = 0,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonGym_PicnickerFynley_Badge2[] = {
    {
        .iv = 26,
        .lvl = 16,
        .species = SPECIES_ODDISH,
		.moves = {
            MOVE_RAZORLEAF,
            MOVE_SWEETSCENT,
            MOVE_POISONPOWDER,
            MOVE_STUNSPORE,
        },
        .ability = 0,
    },
	{
        .iv = 23,
        .lvl = 17,
        .species = SPECIES_DEERLING_SUMMER,
		.moves = {
            MOVE_TACKLE,
            MOVE_CAMOUFLAGE,
            MOVE_DOUBLEKICK,
            MOVE_LEECHSEED,
        },
        .ability = 0,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_CeladonGym_GuitaristClint_Badge1[] = {
	{
        .iv = 31,
        .lvl = 11,
        .species = SPECIES_PETILIL,
    },
	{
        .iv = 31,
        .lvl = 10,
        .species = SPECIES_PETILIL,
    },
};

const struct TrainerMonNoItemDefaultMoves sParty_CeladonGym_GuitaristClint_Badge2[] = {
	{
        .iv = 31,
        .lvl = 14,
        .species = SPECIES_PETILIL,
    },
	{
        .iv = 31,
        .lvl = 15,
        .species = SPECIES_PETILIL,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonGym_PkmnBreederMurphy_Badge1[] = {
    {
        .iv = 26,
        .lvl = 13,
        .species = SPECIES_CHESPIN,
		.moves = {
            MOVE_DEFENSECURL,
            MOVE_POWERUPPUNCH,
            MOVE_ROLLOUT,
            MOVE_VINEWHIP,
        },
        .ability = 0,
    },
	{
        .iv = 23,
        .lvl = 13,
        .species = SPECIES_BUDEW,
		.moves = {
            MOVE_EXTRASENSORY,
            MOVE_GRASSWHISTLE,
            MOVE_SYNTHESIS,
            MOVE_SEEDBOMB,
        },
        .ability = 0,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonGym_PkmnBreederMurphy_Badge2[] = {
    {
        .iv = 26,
        .lvl = 15,
        .species = SPECIES_CHESPIN,
		.moves = {
            MOVE_DEFENSECURL,
            MOVE_POWERUPPUNCH,
            MOVE_ROLLOUT,
            MOVE_VINEWHIP,
        },
        .ability = 0,
    },
	{
        .iv = 23,
        .lvl = 15,
        .species = SPECIES_BUDEW,
		.moves = {
            MOVE_EXTRASENSORY,
            MOVE_GRASSWHISTLE,
            MOVE_SYNTHESIS,
            MOVE_SEEDBOMB,
        },
        .ability = 0,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonGym_LadyTorgal_Badge1[] = {
    {
        .iv = 26,
        .lvl = 14,
        .species = SPECIES_BULBASAUR,
		.moves = {
            MOVE_INGRAIN,
            MOVE_ENDURE,
            MOVE_VINEWHIP,
            MOVE_GROWL,
        },
        .ability = 0,
    },
	{
        .iv = 23,
        .lvl = 13,
        .species = SPECIES_LOTAD,
		.moves = {
            MOVE_ABSORB,
            MOVE_BUBBLE,
            MOVE_ASTONISH,
            MOVE_GROWL,
        },
        .ability = 0,
    },
};

const struct TrainerMonNoItemCustomMoves sParty_CeladonGym_LadyTorgal_Badge2[] = {
    {
        .iv = 26,
        .lvl = 16,
        .species = SPECIES_BULBASAUR,
		.moves = {
            MOVE_INGRAIN,
            MOVE_ENDURE,
            MOVE_VINEWHIP,
            MOVE_GRASSYTERRAIN,
        },
        .ability = 0,
    },
	{
        .iv = 23,
        .lvl = 17,
        .species = SPECIES_LOTAD,
		.moves = {
            MOVE_ABSORB,
            MOVE_BUBBLE,
            MOVE_ASTONISH,
            MOVE_MIST,
        },
        .ability = 0,
    },
};

const struct TrainerMonItemCustomMoves sParty_CeladonGym_Erika_Badge1[] = {
    {
        .iv = 27,
        .lvl = 14,
        .species = SPECIES_COTTONEE,
		.moves = {
            MOVE_STUNSPORE,
            MOVE_LEECHSEED,
            MOVE_FAIRYWIND,
            MOVE_ABSORB,
        },
		.heldItem = ITEM_SITRUS_BERRY,
        .ability = 2, //want it to be prankster
    },
	{
        .iv = 27,
        .lvl = 15,
        .species = SPECIES_TANGELA,
		.moves = {
            MOVE_BIND,
            MOVE_MEGADRAIN,
            MOVE_RAGEPOWDER,
            MOVE_BULLETSEED,
        },
		.heldItem = ITEM_LUM_BERRY,
        .ability = 1,
    },
	{
        .iv = 27,
        .lvl = 15,
        .species = SPECIES_ODDISH,
		.moves = {
            MOVE_GROWTH,
            MOVE_ABSORB,
            MOVE_GRASSYTERRAIN,
            MOVE_INGRAIN,
        },
		.heldItem = ITEM_GANLON_BERRY,
       .ability = 0,
    },
	{
        .iv = 27,
        .lvl = 16,
        .species = SPECIES_TOEDSCOOL,
		.moves = {
            MOVE_SUPERSONIC,
            MOVE_TOXIC,
            MOVE_TAUNT,
            MOVE_BULLETSEED,
        },
		.heldItem = ITEM_FOCUS_SASH,
        .ability = 0,
    },
};

const struct TrainerMonItemCustomMoves sParty_CeladonGym_Erika_Badge2[] = {
    {
        .iv = 27,
        .lvl = 17,
        .species = SPECIES_COTTONEE,
		.moves = {
            MOVE_STUNSPORE,
            MOVE_LEECHSEED,
            MOVE_FAIRYWIND,
            MOVE_NATUREPOWER,
        },
		.heldItem = ITEM_SITRUS_BERRY,
        .ability = 2, //want it to be prankster
    },
	{
        .iv = 27,
        .lvl = 18,
        .species = SPECIES_TANGELA,
		.moves = {
            MOVE_BIND,
            MOVE_MEGADRAIN,
            MOVE_RAGEPOWDER,
            MOVE_BULLETSEED,
        },
		.heldItem = ITEM_LUM_BERRY,
        .ability = 1,
    },
	{
        .iv = 27,
        .lvl = 18,
        .species = SPECIES_ODDISH,
		.moves = {
            MOVE_GROWTH,
            MOVE_ABSORB,
            MOVE_GRASSYTERRAIN,
            MOVE_INGRAIN,
        },
		.heldItem = ITEM_GANLON_BERRY,
       .ability = 0,
    },
	{
        .iv = 27,
        .lvl = 19,
        .species = SPECIES_TOEDSCOOL,
		.moves = {
            MOVE_SUPERSONIC,
            MOVE_TOXIC,
            MOVE_TAUNT,
            MOVE_BULLETSEED,
        },
		.heldItem = ITEM_FOCUS_SASH,
        .ability = 0,
    },
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
	
	[TRAINER_ROUTE6_YOUNGSTER_MARUYAMA_3] = {
        .partyFlags = 0,
        .trainerClass = CLASS_YOUNGSTER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
        .trainerPic = TRAINER_PIC_YOUNGSTER_B,
        .trainerName = {_M, _a, _r, _u, _y, _a, _m, _a, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_Route6YoungsterMaruyama_3),
        .party = {.NoItemDefaultMoves = sParty_Route6YoungsterMaruyama_3}
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
	
	// Route 5
	
	[TRAINER_ROUTE5_CLOWN_JEEVES] = {
        .partyFlags = 0,
        .trainerClass = CLASS_CLOWN,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_CLOWN,
        .trainerName = {_J, _e, _e, _v, _e, _s, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_Route5ClownJeeves),
        .party = {.NoItemDefaultMoves = sParty_Route5ClownJeeves}
    },	
	
	[TRAINER_ROUTE5_CLOWN_JEEVES_2] = {
        .partyFlags = 0,
        .trainerClass = CLASS_CLOWN,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_CLOWN,
        .trainerName = {_J, _e, _e, _v, _e, _s, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_Route5ClownJeeves_2),
        .party = {.NoItemDefaultMoves = sParty_Route5ClownJeeves_2}
    },
	
	// Route 24 - Nugget Bridge

	[TRAINER_NUGGETBRIDGE_LASS_JARABE] = {
        .partyFlags = 0,
        .trainerClass = CLASS_LASS,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_LASS,
        .trainerName = {_J, _a, _r, _a, _b, _e, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_NuggetBridgeLassJarabe),
        .party = {.NoItemDefaultMoves = sParty_NuggetBridgeLassJarabe}
    },
	
	[TRAINER_NUGGETBRIDGE_BIRDKEEPER_ANTIPASTO] = {
        .partyFlags = 0,
        .trainerClass = CLASS_BIRD_KEEPER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_BIRDKEEPER,
        .trainerName = {_A, _n, _t, _i, _p, _a, _s, _t, _o, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_NuggetBridgeBirdkeeperAntipasto),
        .party = {.NoItemDefaultMoves = sParty_NuggetBridgeBirdkeeperAntipasto}
    },
	
	[TRAINER_NUGGETBRIDGE_YOUNGSTER_SELTZER] = {
        .partyFlags = 0,
        .trainerClass = CLASS_YOUNGSTER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_YOUNGSTER_A,
        .trainerName = {_S, _e, _l, _t, _z, _e, _r, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_NuggetBridgeYoungsterSeltzer),
        .party = {.NoItemDefaultMoves = sParty_NuggetBridgeYoungsterSeltzer}
    },
	
	[TRAINER_NUGGETBRIDGE_BATTLEGIRL_MASLINA] = {
        .partyFlags = 0,
        .trainerClass = CLASS_BATTLE_GIRL,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_BATTLE_GIRL,
        .trainerName = {_M, _a, _s, _l, _i, _n, _a, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_NuggetBridgeBattleGirlMaslina),
        .party = {.NoItemDefaultMoves = sParty_NuggetBridgeBattleGirlMaslina}
    },
	
	[TRAINER_NUGGETBRIDGE_PICNICKER_OATMEAL] = {
        .partyFlags = 0,
        .trainerClass = CLASS_PICNICKER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_PICNICKER,
        .trainerName = {_O, _a, _t, _m, _e, _a, _l, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_NuggetBridgePicnickerOatmeal),
        .party = {.NoItemDefaultMoves = sParty_NuggetBridgePicnickerOatmeal}
    },
	
	[TRAINER_ROUTE24_CAMPER_SHANE] = {
        .partyFlags = 0,
        .trainerClass = CLASS_CAMPER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_CAMPER,
        .trainerName = {_S, _h, _a, _n, _e, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_Route24CamperShane),
        .party = {.NoItemDefaultMoves = sParty_Route24CamperShane}
    },
	
	[TRAINER_RIVALBATTLE2] = {
        .partyFlags = 0,
        .trainerClass = CLASS_RIVAL,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_RIVAL,		
        .trainerName = NO_NAME, // Name replaced from RIVAL trainer classes
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE,
        .partySize = NELEMS(sParty_Route24_RivalBattle2),
        .party = {.NoItemDefaultMoves = sParty_Route24_RivalBattle2}
    },
	
	// Route 25

	[TRAINER_ROUTE25_BACKPACKER_JANEY] {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_BACKPACKER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
        .trainerPic = TRAINER_PIC_BACKPACKER,
        .trainerName = {_J, _a, _n, _e, _y, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_BAD_MOVE | AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_Route25BackpackerJaney),
        .party = {.NoItemCustomMoves = sParty_Route25BackpackerJaney}
    },
	
	[TRAINER_ROUTE25_LASS_IPHIGENIA] = {
        .partyFlags = 0,
        .trainerClass = CLASS_LASS,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_LASS,
        .trainerName = {_I, _p, _h, _i, _g, _e, _n, _i, _a, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_Route25_LassIphigenia),
        .party = {.NoItemDefaultMoves = sParty_Route25_LassIphigenia}
    },
	
	[TRAINER_ROUTE25_POKEKID_JAMIE] = {
        .partyFlags = 0,
        .trainerClass = CLASS_POKE_KID,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_POKEKID_B,
        .trainerName = {_J, _a, _m, _i, _e, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_CHECK_GOOD_MOVE,
        .partySize = NELEMS(sParty_Route25_PokeKidJamie),
        .party = {.NoItemDefaultMoves = sParty_Route25_PokeKidJamie}
    },
	
	[TRAINER_BILLSGARDEN_MINT] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES | PARTY_FLAG_HAS_ITEM,
        .trainerClass = CLASS_TCG_FANATIC,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_MINT,
        .trainerName = {_M, _i, _n, _t, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_FIRST_BATTLE,
        .partySize = NELEMS(sParty_BillsGarden_Mint),
        .party = {.ItemCustomMoves = sParty_BillsGarden_Mint}
    },
	
	[TRAINER_BILLSGARDEN_LILLIE] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_PKMN_TRAINER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_LILLIE,
        .trainerName = {_L, _i, _l, _l, _i, _e, _END},
        .items = {},
        .doubleBattle = FALSE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_BillsGarden_Lillie),
        .party = {.NoItemCustomMoves = sParty_BillsGarden_Lillie}
    },
	
	// Cerulean Gym
	
		[TRAINER_CERULEANGYM_SWIMMER_JULIE_BADGE1] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_SWIMMER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_SWIMMER_B,
        .trainerName = {_J, _u, _l, _i, _e, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeruleanGym_SwimmerJulie_Badge1),
        .party = {.NoItemCustomMoves = sParty_CeruleanGym_SwimmerJulie_Badge1}
    },
	
		[TRAINER_CERULEANGYM_SWIMMER_JULIE_BADGE2] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_SWIMMER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_SWIMMER_B,
        .trainerName = {_J, _u, _l, _i, _e, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeruleanGym_SwimmerJulie_Badge2),
        .party = {.NoItemCustomMoves = sParty_CeruleanGym_SwimmerJulie_Badge2}
    },
	
		[TRAINER_CERULEANGYM_SWIMMER_MICK_BADGE1] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_SWIMMER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_SWIMMER_A,
        .trainerName = {_M, _i, _c, _k, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeruleanGym_SwimmerMick_Badge1),
        .party = {.NoItemCustomMoves = sParty_CeruleanGym_SwimmerMick_Badge1}
    },
	
		[TRAINER_CERULEANGYM_SWIMMER_MICK_BADGE2] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_SWIMMER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_SWIMMER_A,
        .trainerName = {_M, _i, _c, _k, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeruleanGym_SwimmerMick_Badge2),
        .party = {.NoItemCustomMoves = sParty_CeruleanGym_SwimmerMick_Badge2}
    },	
	
		[TRAINER_CERULEANGYM_MISTY_BADGE1] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES | PARTY_FLAG_HAS_ITEM,
        .trainerClass = CLASS_GYM_LEADER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_MISTY,
        .trainerName = {_M, _i, _s, _t, _y, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeruleanGym_Misty_Badge1),
        .party = {.ItemCustomMoves = sParty_CeruleanGym_Misty_Badge1}
    },
	
		[TRAINER_CERULEANGYM_MISTY_BADGE2] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES | PARTY_FLAG_HAS_ITEM,
        .trainerClass = CLASS_GYM_LEADER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_MISTY,
        .trainerName = {_M, _i, _s, _t, _y, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeruleanGym_Misty_Badge2),
        .party = {.ItemCustomMoves = sParty_CeruleanGym_Misty_Badge2}
    },
	
	// Celadon Gym
	
		[TRAINER_CELADONGYM_PICNICKER_FYNLEY_BADGE1] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_PICNICKER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_PICNICKER,
        .trainerName = {_F, _y, _n, _l, _e, _y, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_PicnickerFynley_Badge1),
        .party = {.NoItemCustomMoves = sParty_CeladonGym_PicnickerFynley_Badge1}
    },
	
		[TRAINER_CELADONGYM_PICNICKER_FYNLEY_BADGE2] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_PICNICKER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_PICNICKER,
        .trainerName = {_F, _y, _n, _l, _e, _y, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_PicnickerFynley_Badge2),
        .party = {.NoItemCustomMoves = sParty_CeladonGym_PicnickerFynley_Badge2}
    },			
	
		[TRAINER_CELADONGYM_GUITARIST_CLINT_BADGE1] = {
        .partyFlags = 0,
        .trainerClass = CLASS_GUITARIST,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_GUITARIST_A,
        .trainerName = {_C, _l, _i, _n, _t, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_GuitaristClint_Badge1),
        .party = {.NoItemDefaultMoves = sParty_CeladonGym_GuitaristClint_Badge1}
    },
	
		[TRAINER_CELADONGYM_GUITARIST_CLINT_BADGE2] = {
        .partyFlags = 0,
        .trainerClass = CLASS_GUITARIST,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_MALE,
		.trainerPic = TRAINER_PIC_GUITARIST_A,
        .trainerName = {_C, _l, _i, _n, _t, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_GuitaristClint_Badge2),
        .party = {.NoItemDefaultMoves = sParty_CeladonGym_GuitaristClint_Badge2}
    },				
	
		[TRAINER_CELADONGYM_PKMN_BREEDER_MURPHY_BADGE1] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_PKMN_BREEDER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_PKMN_BREEDER_B,
        .trainerName = {_M, _u, _r, _p, _h, _y, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_PkmnBreederMurphy_Badge1),
        .party = {.NoItemCustomMoves = sParty_CeladonGym_PkmnBreederMurphy_Badge1}
    },
	
		[TRAINER_CELADONGYM_PKMN_BREEDER_MURPHY_BADGE2] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_PKMN_BREEDER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_PKMN_BREEDER_B,
        .trainerName = {_M, _u, _r, _p, _h, _y, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_PkmnBreederMurphy_Badge2),
        .party = {.NoItemCustomMoves = sParty_CeladonGym_PkmnBreederMurphy_Badge2}
    },					
	
		[TRAINER_CELADONGYM_LADY_TORGAL_BADGE1] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
        .trainerClass = CLASS_LADY,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_LADY_A,
        .trainerName = {_T, _o, _r, _g, _a, _l, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_LadyTorgal_Badge1),
        .party = {.NoItemCustomMoves = sParty_CeladonGym_LadyTorgal_Badge1}
    },
	
		[TRAINER_CELADONGYM_LADY_TORGAL_BADGE2] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES,
		.trainerClass = CLASS_LADY,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_LADY_A,
        .trainerName = {_T, _o, _r, _g, _a, _l, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_LadyTorgal_Badge2),
        .party = {.NoItemCustomMoves =  sParty_CeladonGym_LadyTorgal_Badge2}
    },		
	
		[TRAINER_CELADONGYM_ERIKA_BADGE1] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES | PARTY_FLAG_HAS_ITEM,
        .trainerClass = CLASS_GYM_LEADER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_ERIKA,
        .trainerName = {_E, _r, _i, _k, _a, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_Erika_Badge1),
        .party = {.ItemCustomMoves = sParty_CeladonGym_Erika_Badge1}
    },
	
		[TRAINER_CELADONGYM_ERIKA_BADGE2] = {
        .partyFlags = PARTY_FLAG_CUSTOM_MOVES | PARTY_FLAG_HAS_ITEM,
        .trainerClass = CLASS_GYM_LEADER,
        .encounterMusic = TRAINER_ENCOUNTER_MUSIC_FEMALE,
		.trainerPic = TRAINER_PIC_ERIKA,
        .trainerName = {_E, _r, _i, _k, _a, _END},
        .items = {},
        .doubleBattle = TRUE,
        .aiFlags = AI_SCRIPT_DOUBLE_BATTLE | AI_SCRIPT_SETUP_FIRST_TURN | AI_SCRIPT_SEMI_SMART,
        .partySize = NELEMS(sParty_CeladonGym_Erika_Badge2),
        .party = {.ItemCustomMoves = sParty_CeladonGym_Erika_Badge2}
    },
	
};
