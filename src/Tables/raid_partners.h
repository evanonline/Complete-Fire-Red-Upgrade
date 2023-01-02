#include "../config.h"

static const struct BattleTowerSpread sRaidPartnerSpread_MayORAS_Rank2[] =
{
    {
        .species = SPECIES_TORCHIC,
        .item = ITEM_EXPERT_BELT,
        .ability = FRONTIER_ABILITY_HIDDEN, //Speed Boost
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_FLAMECHARGE,
            MOVE_AERIALACE,
            MOVE_ROCKSLIDE,
            MOVE_SHADOWCLAW,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_PLUSLE,
        .item = ITEM_LUM_BERRY,
        .ability = FRONTIER_ABILITY_1, //Plus
        .nature = NATURE_TIMID,
        .hpEv = 4,
        .spAtkEv = 252,
        .spdfEv = 252,
        .hpIv = 31,
        .atkIv = 11,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 30,
        .spdIv = 27,
        .moves = 
        {
            MOVE_CHARGE,
            MOVE_DISCHARGE,
            MOVE_NASTYPLOT,
            MOVE_WISH,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_WAILMER,
        .item = ITEM_CHESTO_BERRY,
        .ability = FRONTIER_ABILITY_2, //Oblivious
        .nature = NATURE_NAUGHTY,
        .hpEv = 252,
        .spAtkEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 27,
        .moves = 
        {
            MOVE_REST,
            MOVE_WATERSPOUT,
            MOVE_WATERFALL,
            MOVE_TICKLE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_MayORAS_Rank5[] =
{
    {
        .species = SPECIES_BLAZIKEN,
        .item = ITEM_BLAZIKENITE,
        .ability = FRONTIER_ABILITY_HIDDEN, //Speed Boost
        .nature = NATURE_ADAMANT,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_FIREPUNCH,
            MOVE_BRICKBREAK,
            MOVE_THUNDERPUNCH,
            MOVE_KNOCKOFF,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_WAILORD,
        .item = ITEM_LEFTOVERS,
        .ability = FRONTIER_ABILITY_2, //Oblivious
        .nature = NATURE_NAUGHTY,
        .hpEv = 252,
        .spAtkEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 27,
        .moves = 
        {
            MOVE_SUBSTITUTE,
            MOVE_WATERSPOUT,
            MOVE_WATERFALL,
            MOVE_TICKLE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_LUDICOLO,
        .item = ITEM_LIFE_ORB,
        .ability = FRONTIER_ABILITY_1, //Swift Swim
        .nature = NATURE_MODEST,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_HYDROPUMP,
            MOVE_GIGADRAIN,
            MOVE_ICEBEAM,
            MOVE_FOCUSBLAST,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_MayORAS_Rank6[] =
{
    {
        .species = SPECIES_GROUDON,
        .item = ITEM_RED_ORB,
        .ability = FRONTIER_ABILITY_1, //Drought
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_PRECIPICEBLADES,
            MOVE_HEATCRASH,
            MOVE_DRAGONCLAW,
            MOVE_STONEEDGE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_LATIAS,
        .item = ITEM_LATIASITE,
        .ability = FRONTIER_ABILITY_1, //Levitate
        .nature = NATURE_TIMID,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_PSYSHOCK,
            MOVE_DRAGONPULSE,
            MOVE_ICEBEAM,
            MOVE_THUNDERBOLT,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_HOOPA,
        .item = ITEM_LUM_BERRY,
        .ability = FRONTIER_ABILITY_1, //Magician
        .nature = NATURE_MILD,
        .HpEv = 252,
        .spAtkEv = 248,
        .spdEv = 8,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_HYPERSPACEHOLE,
            MOVE_SHADOWBALL,
            MOVE_PSYCHIC,
            MOVE_LIGHTSCREEN,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};


static const struct BattleTowerSpread sRaidPartnerSpread_MayRS_Rank2[] =
{
    {
        .species = SPECIES_TORCHIC,
        .item = ITEM_EXPERT_BELT,
        .ability = FRONTIER_ABILITY_HIDDEN, //Speed Boost
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_FLAMECHARGE,
            MOVE_AERIALACE,
            MOVE_ROCKSLIDE,
            MOVE_SHADOWCLAW,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_MUNCHLAX,
        .item = ITEM_NORMAL_GEM,
        .ability = FRONTIER_ABILITY_2, //Thick Fat
        .nature = NATURE_BRAVE,
        .hpEv = 252,
        .atkEv = 252,
        .spDefEv = 4,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 1,
        .spDefIv = 30,
        .spdIv = 27,
        .moves = 
        {
            MOVE_ZENHEADBUTT,
            MOVE_METRONOME,
            MOVE_TACKLE,
            MOVE_DEFENSECURL,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_LOTAD,
        .item = ITEM_BLUNDER_POLICY,
        .ability = FRONTIER_ABILITY_1, //Swift Swim
        .nature = NATURE_MODEST,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_WHIRLPOOL,
            MOVE_BUBBLEBEAM,
            MOVE_MEGADRAIN,
            MOVE_ICYWIND,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_MayRS_Rank5[] =
{
    {
        .species = SPECIES_BLAZIKEN,
        .item = ITEM_BLAZIKENITE,
        .ability = FRONTIER_ABILITY_HIDDEN, //Speed Boost
        .nature = NATURE_ADAMANT,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_FIREPUNCH,
            MOVE_BRICKBREAK,
            MOVE_THUNDERPUNCH,
            MOVE_KNOCKOFF,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_SNORLAX,
        .item = ITEM_LEFTOVERS,
        .ability = FRONTIER_ABILITY_2, //Thick Fat
        .nature = NATURE_BRAVE,
        .hpEv = 12,
        .atkEv = 244,
        .spDefEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 1,
        .spDefIv = 30,
        .spdIv = 27,
        .moves = 
        {
            MOVE_CURSE,
            MOVE_DARKESTLARIAT,
            MOVE_BODYSLAM,
            MOVE_REST,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_LUDICOLO,
        .item = ITEM_LIFE_ORB,
        .ability = FRONTIER_ABILITY_1, //Swift Swim
        .nature = NATURE_MODEST,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_HYDROPUMP,
            MOVE_GIGADRAIN,
            MOVE_ICEBEAM,
            MOVE_FOCUSBLAST,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_MayRS_Rank6[] =
{
    {
        .species = SPECIES_REGISTEEL,
        .item = ITEM_LEFTOVERS,
        .ability = FRONTIER_ABILITY_1, //Clear Body
        .nature = NATURE_SASSY,
        .atkEv = 20,
	.defEv = 236,
        .spDefEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 19,
        .moves = 
        {
            MOVE_THUNDERWAVE,
            MOVE_STEELBEAM,
            MOVE_PSYCHUP,
            MOVE_HEAVYSLAM,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_LATIAS,
        .item = ITEM_LATIASITE,
        .ability = FRONTIER_ABILITY_1, //Levitate
        .nature = NATURE_TIMID,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_PSYSHOCK,
            MOVE_DRAGONPULSE,
            MOVE_ICEBEAM,
            MOVE_THUNDERBOLT,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_DEOXYS_ATTACK,
        .item = ITEM_LIFE_ORB,
        .ability = FRONTIER_ABILITY_1, //Pressure
        .nature = NATURE_TIMID,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_PSYCHIC,
            MOVE_SHADOWBALL,
            MOVE_FOCUSBLAST,
            MOVE_METEORBEAM,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_Brendan_Rank2[] =
{
    {
        .species = SPECIES_MUDKIP,
        .item = ITEM_SHELL_BELL,
        .ability = FRONTIER_ABILITY_1, //Torrent
        .nature = NATURE_ADAMANT,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_WATERFALL,
            MOVE_ROCKSMASH,
            MOVE_ROCKTHROW,
            MOVE_BITE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_ARON,
        .item = ITEM_EVIOLITE,
        .ability = FRONTIER_ABILITY_1, //Sturdy
        .nature = NATURE_ADAMANT,
        .hpEv = 248,
        .atkEv = 252,
        .spDefEv = 8,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_ROCKTOMB,
            MOVE_IRONTAIL,
            MOVE_SHADOWCLAW,
            MOVE_BULLDOZE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_SEEDOT,
        .item = ITEM_SITRUS_BERRY,
        .ability = FRONTIER_ABILITY_1, //Chlorophyll
        .nature = NATURE_ADAMANT,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_BULLETSEED,
            MOVE_PAYBACK,
            MOVE_RETALIATE,
            MOVE_ROCKSMASH,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_Brendan_Rank5[] =
{
    {
        .species = SPECIES_SWAMPERT,
        .item = ITEM_SWAMPERTITE,
        .ability = FRONTIER_ABILITY_1, //Torrent
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_WATERFALL,
            MOVE_EARTHQUAKE,
            MOVE_STONEEDGE,
            MOVE_ICEPUNCH,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_AGGRON,
        .item = ITEM_LEFTOVERS,
        .ability = FRONTIER_ABILITY_2, //Rock Head
        .nature = NATURE_ADAMANT,
        .hpEv = 252,
        .atkEv = 120,
        .defEv = 132,
        .spDefEv = 4,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_BODYPRESS,
            MOVE_HEAVYSLAM,
            MOVE_EARTHQUAKE,
            MOVE_HEADSMASH,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_SHIFTRY,
        .item = ITEM_LIFE_ORB,
        .ability = FRONTIER_ABILITY_1, //Chlorophyll
        .nature = NATURE_ADAMANT,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_LEAFBLADE,
            MOVE_KNOCKOFF,
            MOVE_BRICKBREAK,
            MOVE_SUCKERPUNCH,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_Brendan_Rank6[] =
{
    {
        .species = SPECIES_KYOGRE,
        .item = ITEM_BLUE_ORB,
        .ability = FRONTIER_ABILITY_1, //Drizzle
        .nature = NATURE_TIMID,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_WATERSPOUT,
            MOVE_THUNDER,
            MOVE_ICEBEAM,
            MOVE_ORIGINPULSE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_LATIOS,
        .item = ITEM_LATIOSITE,
        .ability = FRONTIER_ABILITY_1, //Levitate
        .nature = NATURE_TIMID,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_PSYCHIC,
            MOVE_MYSTICALFIRE,
            MOVE_DRAGONPULSE,
            MOVE_SURF,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_JIRACHI,
        .item = ITEM_LEFTOVERS,
        .ability = FRONTIER_ABILITY_1, //Serene Grace
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_IRONHEAD,
            MOVE_ZENHEADBUTT,
            MOVE_ICEPUNCH,
            MOVE_THUNDERPUNCH,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_OldMan_Rank2[] =
{
    {
        .species = SPECIES_MUDKIP,
        .item = ITEM_SHELL_BELL,
        .ability = FRONTIER_ABILITY_1, //Torrent
        .nature = NATURE_ADAMANT,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_WATERFALL,
            MOVE_ROCKSMASH,
            MOVE_ROCKTHROW,
            MOVE_BITE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_KAKUNA,
        .item = ITEM_EVIOLITE,
        .ability = FRONTIER_ABILITY_1, //Shed Skin
        .nature = NATURE_JOLLY,
		.atkEv = 252,
		.defEv = 4,
		.spdEv = 252,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
        .moves = 
        {
            MOVE_POISONSTING,
            MOVE_STRINGSHOT,
            MOVE_BUGBITE,
            MOVE_HARDEN,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_BULBASAUR,
        .item = ITEM_SITRUS_BERRY,
        .ability = FRONTIER_ABILITY_HIDDEN, //Chlorophyll
		.nature = NATURE_BOLD,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 252,
		.spAtkEv = 4,
        .moves = 
        {
            MOVE_SYNTHESIS,
            MOVE_SEEDBOMB,
            MOVE_POISONPOWDER,
            MOVE_SLEEPPOWDER,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_OldMan_Rank5[] =
{
    {
        .species = SPECIES_MARSHTOMP,
        .item = ITEM_CHOICE_SCARF,
        .ability = FRONTIER_ABILITY_1, //Torrent
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_MUDDYWATER,
            MOVE_EARTHQUAKE,
            MOVE_ENDEAVOR,
            MOVE_ANCIENTPOWER,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_IVYSAUR,
        .item = ITEM_EVIOLITE,
        .ability = FRONTIER_ABILITY_HIDDEN, //Chlorophyll
		.nature = NATURE_BOLD,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 252,
		.spAtkEv = 4,
        .moves = 
		{
			MOVE_VINEWHIP,
			MOVE_LEECHSEED,
			MOVE_WORRYSEED,
			MOVE_POISONPOWDER,
		},
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
    {
        .species = SPECIES_BEEDRILL,
        .item = ITEM_FOCUS_SASH,
        .ability = FRONTIER_ABILITY_HIDDEN, //Sniper
        .nature = NATURE_JOLLY,
		.atkEv = 252,
		.defEv = 4,
		.spdEv = 252,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
        .moves = 
        {
            MOVE_LASERFOCUS,
            MOVE_TAILWIND,
            MOVE_POISONJAB,
            MOVE_ASSURANCE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_OldMan_Rank6[] =
{
    {
        .species = SPECIES_SWAMPERT,
        .item = ITEM_SWAMPERTITE,
        .ability = FRONTIER_ABILITY_1, //Torrent
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_WATERFALL,
            MOVE_EARTHQUAKE,
            MOVE_STONEEDGE,
            MOVE_ICEPUNCH,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_VENUSAUR,
        .item = ITEM_VENUSAURITE,
        .ability = FRONTIER_ABILITY_HIDDEN, //Chlorophyll
		.nature = NATURE_BOLD,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 252,
		.spAtkEv = 4,
		.moves =
		{
			MOVE_GRASSPLEDGE,
			MOVE_SLUDGEBOMB,
			MOVE_WEATHERBALL,
			MOVE_LEECHSEED,
		},
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
        .species = SPECIES_BEEDRILL,
        .item = ITEM_BEEDRILLITE,
        .ability = FRONTIER_ABILITY_HIDDEN, //Sniper
		.nature = NATURE_JOLLY,
		.atkEv = 252,
		.spDefEv = 4,
		.spdEv = 252,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.moves =
		{
			MOVE_DRILLRUN,
			MOVE_TAILWIND,
			MOVE_POISONJAB,
			MOVE_XSCISSOR,
		},
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Primo_Rank2[] =
{
    {
        .species = SPECIES_JIGGLYPUFF,
        .item = ITEM_METRONOME,
        .ability = FRONTIER_ABILITY_1, //Cute Charm
        .nature = NATURE_LONELY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_POUND,
            MOVE_DISARMINGVOICE,
            MOVE_SING,
            MOVE_COPYCAT,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_SMEARGLE,
        .item = ITEM_LUM_BERRY,
        .ability = FRONTIER_ABILITY_2, //Technician
        .nature = NATURE_JOLLY,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 30,
		.spdIv = 31,
        .moves = 
        {
            MOVE_BUGBITE,
            MOVE_NATURALGIFT,
            MOVE_AVALANCHE,
            MOVE_SPORE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_BASCULIN_WHITE,
        .item = ITEM_LEFTOVERS,
        .ability = FRONTIER_ABILITY_HIDDEN, //Mold Breaker
		.nature = NATURE_ADAMANT,
		.hpEv = 252,
		.atkEv = 252,
		.defEv = 4,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
        .moves = 
        {
            MOVE_AQUAJET,
            MOVE_SWIFT,
            MOVE_MUDDYWATER,
            MOVE_HEADSMASH,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_Primo_Rank5[] =
{
    {
        .species = SPECIES_WIGGLYTUFF,
        .item = ITEM_METRONOME,
        .ability = FRONTIER_ABILITY_1, //Cute Charm
        .nature = NATURE_TIMID,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_WISH,
            MOVE_DAZZLINGGLEAM,
            MOVE_HYPERVOICE,
            MOVE_HELPINGHAND,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_SMEARGLE,
        .item = ITEM_FOCUS_SASH,
        .ability = FRONTIER_ABILITY_2, //Technician
        .nature = NATURE_JOLLY,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 30,
		.spdIv = 31,
        .moves = 
        {
            MOVE_TAUNT,
            MOVE_NUZZLE,
            MOVE_AVALANCHE,
            MOVE_SPORE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_SMEARGLE,
        .item = ITEM_FOCUS_SASH,
        .ability = FRONTIER_ABILITY_HIDDEN, //Moody
        .nature = NATURE_JOLLY,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
        .moves = 
        {
            MOVE_SHELLSMASH,
            MOVE_SPORE,
            MOVE_SUBSTITUTE,
            MOVE_POWERTRIP,
        },
		.ball = BALL_TYPE_GREAT_BALL,
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_Primo_Rank6[] =
{
    {
        .species = SPECIES_BASCULEGION,
        .item = ITEM_PROTECTIVE_PADS,
        .ability = FRONTIER_ABILITY_HIDDEN, //Mold Breaker
		.nature = NATURE_ADAMANT,
		.hpEv = 252,
		.atkEv = 252,
		.defEv = 4,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
        .moves = 
        {
            MOVE_WAVECRASH,
            MOVE_SWIFT,
            MOVE_PHANTOMFORCE,
            MOVE_SOAK,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_ZARUDE_DADA,
        .item = ITEM_HEAVY_DUTY_BOOTS,
        .ability = FRONTIER_ABILITY_1, //Leaf Guard
		.nature = NATURE_JOLLY,
		.atkEv = 252,
		.spDefEv = 4,
		.spdEv = 252,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.moves =
		{
			MOVE_POWERWHIP,
			MOVE_DARKESTLARIAT,
			MOVE_JUNGLEHEALING,
			MOVE_SWAGGER,
		},
		.ball = BALL_TYPE_CHERISH_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
        .species = SPECIES_SMEARGLE,
        .item = ITEM_FOCUS_SASH,
        .ability = FRONTIER_ABILITY_HIDDEN, //Moody
        .nature = NATURE_JOLLY,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
        .moves = 
        {
            MOVE_PRECIPICEBLADES,
            MOVE_SHELLSMASH,
            MOVE_SUBSTITUTE,
            MOVE_POWERTRIP,
        },
		.ball = BALL_TYPE_GREAT_BALL,
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_Marley_Rank2[] =
{

    {
        .species = SPECIES_GROWLITHE,
        .item = ITEM_CHARCOAL,
        .ability = FRONTIER_ABILITY_2, //Flash Fire
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_FIREFANG,
            MOVE_THIEF,
            MOVE_AERIALACE,
            MOVE_WILDCHARGE,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_VOLTORB,
        .item = ITEM_MAGNET,
        .ability = FRONTIER_ABILITY_2, //Static
        .nature = NATURE_TIMID,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_CHARGEBEAM,
            MOVE_SHOCKWAVE,
            MOVE_SIGNALBEAM,
            MOVE_SWIFT,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_ZIGZAGOON_G,
        .item = ITEM_SITRUS_BERRY,
        .ability = FRONTIER_ABILITY_HIDDEN, //Quick Feet
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 8,
        .spdEv = 248,
        .hpIv = 29,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 5,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_SUPERFANG,
            MOVE_KNOCKOFF,
            MOVE_QUICKGUARD,
            MOVE_HEADBUTT,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_Marley_Rank5[] =
{
    {
        .species = SPECIES_ARCANINE,
        .item = ITEM_CHOICE_BAND,
        .ability = FRONTIER_ABILITY_2, //Flash Fire
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_FLAREBLITZ,
            MOVE_WILDCHARGE,
            MOVE_PLAYROUGH,
            MOVE_CLOSECOMBAT,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_ELECTRODE,
        .item = ITEM_LIFE_ORB,
        .ability = FRONTIER_ABILITY_2, //Static
        .nature = NATURE_HASTY,
        .atkEv = 4,
        .spAtkEv = 252,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_THUNDERBOLT,
            MOVE_VOLTSWITCH,
            MOVE_SIGNALBEAM,
            MOVE_EXPLOSION,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
	{
        .species = SPECIES_OBSTAGOON,
        .item = ITEM_SITRUS_BERRY,
        .ability = FRONTIER_ABILITY_HIDDEN, //Defiant
        .nature = NATURE_JOLLY,
        .atkEv = 248,
        .spDefEv = 8,
        .spdEv = 252,
        .hpIv = 29,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 5,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_TAUNT,
            MOVE_KNOCKOFF,
            MOVE_QUICKGUARD,
            MOVE_HEADBUTT,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

static const struct BattleTowerSpread sRaidPartnerSpread_Marley_Rank6[] =
{
    {
        .species = SPECIES_ENTEI,
        .item = ITEM_CHOICE_BAND,
        .ability = FRONTIER_ABILITY_1, //Pressure
        .nature = NATURE_JOLLY,
        .atkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_SACREDFIRE,
            MOVE_STOMPINGTANTRUM,
            MOVE_STONEEDGE,
            MOVE_EXTREMESPEED,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_SHAYMIN_SKY,
        .item = ITEM_LIFE_ORB,
        .ability = FRONTIER_ABILITY_1, //Serene Grace
        .nature = NATURE_MILD,
		.atkEv = 52,
        .spAtkEv = 204,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 31,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_SEEDFLARE,
            MOVE_AIRSLASH,
            MOVE_LEECHSEED,
            MOVE_EARTHPOWER,
        },
		.ball = BALL_TYPE_CHERISH_BALL,
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
    {
        .species = SPECIES_ENAMORUS,
        .item = ITEM_LIFE_ORB,
        .ability = FRONTIER_ABILITY_1, //Healer
        .nature = NATURE_MODEST,
        .spAtkEv = 252,
        .spDefEv = 4,
        .spdEv = 252,
        .hpIv = 31,
        .atkIv = 0,
        .defIv = 31,
        .spAtkIv = 31,
        .spDefIv = 31,
        .spdIv = 31,
        .moves = 
        {
            MOVE_MOONBLAST,
            MOVE_NASTYPLOT,
            MOVE_MYSTICALFIRE,
            MOVE_EARTHPOWER,
        },
        .forSingles = TRUE,
        .forDoubles = TRUE,
        .modifyMovesDoubles = FALSE,
    },
};

extern const u8 sTrainerName_May[];
extern const u8 sTrainerName_Brendan[];
extern const u8 sTrainerName_OldMan[];
extern const u8 sTrainerName_Primo[];
extern const u8 sTrainerName_Marley[];

const struct MultiRaidTrainer gRaidPartners[] =
{
	{
		.owNum = EVENT_OBJ_GFX_MAY,
		.trainerClass = CLASS_PKMN_TRAINER,
		.backSpriteId = TRAINER_BACK_PIC_MAY,
		.gender = FEMALE,
		.otId = 0x87116209,
		.name = sTrainerName_May,
		.spreads =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_May_Rank2,
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = sRaidPartnerSpread_May_Rank5,
			[SIX_STAR_RAID] = sRaidPartnerSpread_May_Rank6,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = NELEMS(sRaidPartnerSpread_May_Rank2),
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = NELEMS(sRaidPartnerSpread_May_Rank5),
			[SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_May_Rank6),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_BRENDAN,
		.trainerClass = CLASS_PKMN_TRAINER,
		.backSpriteId = TRAINER_BACK_PIC_BRENDAN,
		.gender = MALE,
		.otId = 0x87116209,
		.name = sTrainerName_Brendan,
		.spreads =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_Brendan_Rank2,
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = sRaidPartnerSpread_Brendan_Rank5,
			[SIX_STAR_RAID] = sRaidPartnerSpread_Brendan_Rank6,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = NELEMS(sRaidPartnerSpread_Brendan_Rank2),
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = NELEMS(sRaidPartnerSpread_Brendan_Rank5),
			[SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Brendan_Rank6),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_OLD_MAN_2,
		.trainerClass = CLASS_PKMN_TRAINER,
		.backSpriteId = TRAINER_BACK_PIC_OLD_MAN,
		.gender = MALE,
		.otId = 0x87116209,
		.name = sTrainerName_OldMan,
		.spreads =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_OldMan_Rank2,
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = sRaidPartnerSpread_OldMan_Rank5,
			[SIX_STAR_RAID] = sRaidPartnerSpread_OldMan_Rank6,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = NELEMS(sRaidPartnerSpread_OldMan_Rank2),
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = NELEMS(sRaidPartnerSpread_OldMan_Rank5),
			[SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_OldMan_Rank6),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_PRIMO,
		.trainerClass = CLASS_PKMN_TRAINER,
		.backSpriteId = TRAINER_BACK_PIC_POKE_DUDE,
		.gender = MALE,
		.otId = 0x87116209,
		.name = sTrainerName_Primo,
		.spreads =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_Primo_Rank2,
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = sRaidPartnerSpread_Primo_Rank5,
			[SIX_STAR_RAID] = sRaidPartnerSpread_Primo_Rank6,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = NELEMS(sRaidPartnerSpread_Primo_Rank2),
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = NELEMS(sRaidPartnerSpread_Primo_Rank5),
			[SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Primo_Rank6),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_MARLEY,
		.trainerClass = CLASS_PKMN_TRAINER,
		.backSpriteId = TRAINER_BACK_PIC_MARLEY,
		.gender = FEMALE,
		.otId = 0x87116209,
		.name = sTrainerName_Marley,
		.spreads =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_Marley_Rank2,
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = sRaidPartnerSpread_Marley_Rank5,
			[SIX_STAR_RAID] = sRaidPartnerSpread_Marley_Rank6,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = NELEMS(sRaidPartnerSpread_Marley_Rank2),
			[FOUR_STAR_RAID ... FIVE_STAR_RAID] = NELEMS(sRaidPartnerSpread_Marley_Rank5),
			[SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Marley_Rank6),
		},
	},
};

const u8 gNumRaidPartners = NELEMS(gRaidPartners);
