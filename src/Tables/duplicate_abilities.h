#include "../config.h"
#include "../../include/constants/species.h"
#include "../../include/constants/items.h"
#include "../../include/constants/moves.h"

extern const u8 NAME_PURE_POWER[];
extern const u8 NAME_LIBERO[];
extern const u8 NAME_WIMP_OUT[];
extern const u8 NAME_PROPELLER_TAIL[];
extern const u8 NAME_CHILLING_NEIGH[];
extern const u8 NAME_IRON_BARBS[];
extern const u8 NAME_AIR_LOCK[];
extern const u8 NAME_DAZZLING[];
extern const u8 NAME_TANGLING_HAIR[];
extern const u8 NAME_TURBOBLAZE[];
extern const u8 NAME_TERAVOLT[];
extern const u8 NAME_FILTER[];

static struct DuplicateAbility sDuplicateAbilities[] =
{
    {
        .species = SPECIES_MEDITITE, //Mon
        .currAbility = ABILITY_HUGEPOWER, //The original abilitiy
        .replaceAbilityString = NAME_PURE_POWER, //The new ability name
    },
    {
        .species = SPECIES_MEDICHAM,
        .currAbility = ABILITY_HUGEPOWER,
        .replaceAbilityString = NAME_PURE_POWER,
    },
    {
        .species = SPECIES_MEDICHAM_MEGA,
        .currAbility = ABILITY_HUGEPOWER,
        .replaceAbilityString = NAME_PURE_POWER,
    },
    {
        .species = SPECIES_SCORBUNNY,
        .currAbility = ABILITY_PROTEAN,
        .replaceAbilityString = NAME_LIBERO,
    },
    {
        .species = SPECIES_RABOOT,
        .currAbility = ABILITY_PROTEAN,
        .replaceAbilityString = NAME_LIBERO,
    },
    {
        .species = SPECIES_CINDERACE,
        .currAbility = ABILITY_PROTEAN,
        .replaceAbilityString = NAME_LIBERO,
    },
    {
        .species = SPECIES_WIMPOD,
        .currAbility = ABILITY_EMERGENCYEXIT,
        .replaceAbilityString = NAME_WIMP_OUT,
    },
    {
        .species = SPECIES_ARROKUDA,
        .currAbility = ABILITY_STALWART,
        .replaceAbilityString = NAME_PROPELLER_TAIL,
    },
    {
        .species = SPECIES_BARRASKEWDA,
        .currAbility = ABILITY_STALWART,
        .replaceAbilityString = NAME_PROPELLER_TAIL,
    },   
	{
        .species = SPECIES_GLASTRIER,
        .currAbility = ABILITY_MOXIE,
        .replaceAbilityString = NAME_CHILLING_NEIGH,
    },
	{
        .species = SPECIES_FERROSEED,
        .currAbility = ABILITY_ROUGHSKIN,
        .replaceAbilityString = NAME_IRON_BARBS,
	},
	{
        .species = SPECIES_FERROTHORN,
        .currAbility = ABILITY_ROUGHSKIN,
        .replaceAbilityString = NAME_IRON_BARBS,
	},	
	{
        .species = SPECIES_TOGEDEMARU,
        .currAbility = ABILITY_ROUGHSKIN,
        .replaceAbilityString = NAME_IRON_BARBS,
	},
	{
        .species = SPECIES_RAYQUAZA,
        .currAbility = ABILITY_CLOUDNINE,
        .replaceAbilityString = NAME_AIR_LOCK,
	},
	{
        .species = SPECIES_BRUXISH,
        .currAbility = ABILITY_QUEENLYMAJESTY,
        .replaceAbilityString = NAME_DAZZLING,
	},
	{
        .species = SPECIES_DIGLETT_A,
        .currAbility = ABILITY_GOOEY,
        .replaceAbilityString = NAME_TANGLING_HAIR,
	},
	{
        .species = SPECIES_DUGTRIO_A,
        .currAbility = ABILITY_GOOEY,
        .replaceAbilityString = NAME_TANGLING_HAIR,
	},	
	{
        .species = SPECIES_RESHIRAM,
        .currAbility = ABILITY_MOLDBREAKER,
        .replaceAbilityString = NAME_TURBOBLAZE,
	},		
	{
        .species = SPECIES_KYUREM_WHITE,
        .currAbility = ABILITY_MOLDBREAKER,
        .replaceAbilityString = NAME_TURBOBLAZE,
	},		
	{
        .species = SPECIES_ZEKROM,
        .currAbility = ABILITY_MOLDBREAKER,
        .replaceAbilityString = NAME_TERAVOLT,
	},		
	{
        .species = SPECIES_KYUREM_BLACK,
        .currAbility = ABILITY_MOLDBREAKER,
        .replaceAbilityString = NAME_TERAVOLT,
	},
	{
        .species = SPECIES_MR_MIME,
        .currAbility = ABILITY_SOLIDROCK,
        .replaceAbilityString = NAME_FILTER,
	},	
	{
        .species = SPECIES_AGGRON_MEGA,
        .currAbility = ABILITY_SOLIDROCK,
        .replaceAbilityString = NAME_FILTER,
	},	
	{
        .species = SPECIES_MIME_JR,
        .currAbility = ABILITY_SOLIDROCK,
        .replaceAbilityString = NAME_FILTER,
	},	
};