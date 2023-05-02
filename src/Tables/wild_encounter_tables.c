#include "../config.h"
#include "../../include/global.h"
#include "../../include/constants/maps.h"
#include "../../include/wild_encounter.h"
#include "../../include/constants/region_map_sections.h"
#include "../../include/constants/species.h"

/*
wild_encounter_tables.c
	day/night and/or regular map wild encounter species

tables to edit:
	gWildMonMorningHeaders
	gWildMonEveningHeaders
	gWildMonNightHeaders
	gSwarmTable

*/

// Vermilion Port (Outside)

const struct WildPokemon gVermilionPort_WaterMons[] =
{
    {20, 27, SPECIES_TENTACOOL},
    {20, 20, SPECIES_WAILMER},
    {25, 27, SPECIES_PELIPPER},
    {2, 21, SPECIES_HORSEA},
    {25, 26, SPECIES_WAILMER},
};

const struct WildPokemonInfo gVermilionPort_WaterMonsInfo = {2, gVermilionPort_WaterMons};

const struct WildPokemon gVermilionPort_FishingMons[] =
{
    {4, 4, SPECIES_WISHIWASHI},
    {4, 5, SPECIES_TENTACOOL},
    {10, 16, SPECIES_WISHIWASHI},
    {12, 16, SPECIES_TENTACOOL},
    {10, 15, SPECIES_DHELMISE},
    {25, 28, SPECIES_SKRELP},
    {30, 35, SPECIES_SKRELP},
    {21, 29, SPECIES_DHELMISE},
    {31, 31, SPECIES_TENTACRUEL},
    {25, 35, SPECIES_WISHIWASHI},
};

const struct WildPokemonInfo gVermilionPort_FishingMonsInfo = {20, gVermilionPort_FishingMons};

const struct WildPokemon gVermilionPort_FishingMonsEveningNight[] =
{
    {4, 4, SPECIES_TENTACOOL},
    {4, 5, SPECIES_WISHIWASHI},
    {10, 16, SPECIES_DHELMISE},
    {12, 16, SPECIES_TENTACOOL},
    {10, 15, SPECIES_WISHIWASHI},
    {25, 28, SPECIES_SKRELP},
    {30, 35, SPECIES_SKRELP},
    {21, 35, SPECIES_DHELMISE},
    {31, 31, SPECIES_TENTACRUEL},
    {25, 35, SPECIES_WISHIWASHI},
};

const struct WildPokemonInfo gVermilionPort_FishingMonsInfoEveningNight = {25, gVermilionPort_FishingMonsEveningNight};

// Vermilion City

const struct WildPokemon gVermilionCity_WaterMons[] =
{
    {20, 23, SPECIES_TENTACOOL},
    {10, 20, SPECIES_TENTACOOL},
    {20, 25, SPECIES_WAILMER},
    {20, 23, SPECIES_TENTACOOL},
    {21, 27, SPECIES_WAILMER},
};

const struct WildPokemonInfo gVermilionCity_WaterMonsInfo = {4, gVermilionCity_WaterMons};

const struct WildPokemon gVermilionCity_FishingMons[] =
{
    {5, 5, SPECIES_MAGIKARP},
    {5, 6, SPECIES_GOLDEEN},
    {10, 15, SPECIES_REMORAID},
    {12, 15, SPECIES_CARVANHA},
    {9, 17, SPECIES_GOLDEEN},
    {27, 31, SPECIES_CARVANHA},
    {26, 35, SPECIES_OCTILLERY},
    {21, 26, SPECIES_SKRELP},
    {35, 40, SPECIES_SKRELP},
    {40, 45, SPECIES_SKRELP},
};

const struct WildPokemonInfo gVermilionCity_FishingMonsInfo = {30, gVermilionCity_FishingMons};

// Celadon City

const struct WildPokemon gCeladonCity_LandMonsMorning[] =
{
	{6, 8, SPECIES_KOFFING},
	{6, 8, SPECIES_YANMA},
	{5, 5, SPECIES_GOSSIFLEUR},
	{3, 4, SPECIES_COMBEE},
	{4, 5, SPECIES_PACHIRISU},
	{5, 5, SPECIES_PIDOVE},
	{5, 5, SPECIES_GOSSIFLEUR},
	{6, 6, SPECIES_SUNKERN},
	{3, 4, SPECIES_SEEDOT},
	{2, 3, SPECIES_NICKIT},
	{2, 2, SPECIES_VOLBEAT},
	{2, 2, SPECIES_ILLUMISE},
};

const struct WildPokemonInfo gCeladonCity_LandMonsInfoMorning = {21, gCeladonCity_LandMonsMorning};

const struct WildPokemon gCeladonCity_LandMonsDay[] =
{
	{6, 8, SPECIES_SUNKERN},
	{4, 5, SPECIES_PACHIRISU},
	{5, 5, SPECIES_GOSSIFLEUR},
	{3, 4, SPECIES_COMBEE},
	{6, 8, SPECIES_YANMA},
	{5, 5, SPECIES_PIDOVE},
	{5, 6, SPECIES_PIDOVE},
	{6, 6, SPECIES_SUNKERN},
	{3, 4, SPECIES_SEEDOT},
	{2, 3, SPECIES_NICKIT},
	{2, 2, SPECIES_VOLBEAT},
	{2, 2, SPECIES_ILLUMISE},
};

const struct WildPokemonInfo gCeladonCity_LandMonsInfoDay = {21, gCeladonCity_LandMonsDay};

const struct WildPokemon gCeladonCity_LandMonsEvening[] =
{
	{6, 8, SPECIES_SEEDOT},
	{5, 6, SPECIES_NICKIT},
	{6, 6, SPECIES_SEEDOT},
	{5, 5, SPECIES_VOLBEAT},
	{5, 5, SPECIES_ILLUMISE},
	{4, 5, SPECIES_PACHIRISU},
	{6, 7, SPECIES_YANMA},
	{6, 8, SPECIES_YANMA},
	{5, 5, SPECIES_PIDOVE},
	{3, 4, SPECIES_COMBEE},
	{3, 5, SPECIES_GOSSIFLEUR},
	{3, 4, SPECIES_SUNKERN},
};

const struct WildPokemonInfo gCeladonCity_LandMonsInfoEvening = {21, gCeladonCity_LandMonsEvening};

const struct WildPokemon gCeladonCity_LandMonsNight[] =
{
	{5, 7, SPECIES_VOLBEAT},
	{5, 7, SPECIES_ILLUMISE},
	{6, 8, SPECIES_NICKIT},
	{5, 8, SPECIES_NICKIT},
	{6, 6, SPECIES_SEEDOT},
	{6, 7, SPECIES_SEEDOT},
	{6, 8, SPECIES_YANMA},
	{4, 5, SPECIES_PACHIRISU},
	{5, 5, SPECIES_PIDOVE},
	{3, 4, SPECIES_COMBEE},
	{2, 4, SPECIES_GOSSIFLEUR},
	{2, 4, SPECIES_SUNKERN},
};

const struct WildPokemonInfo gCeladonCity_LandMonsInfoNight = {21, gCeladonCity_LandMonsNight};

const struct WildPokemon gCeladonCity_WaterMons[] =
{
    {20, 23, SPECIES_LOTAD},
    {10, 20, SPECIES_CHEWTLE},
    {20, 25, SPECIES_DEWPIDER},
    {20, 23, SPECIES_PSYDUCK},
    {21, 27, SPECIES_LOTAD},
};

const struct WildPokemonInfo gCeladonCity_WaterMonsInfo = {4, gCeladonCity_WaterMons};

const struct WildPokemon gCeladonCity_WaterMonsNight[] =
{
    {20, 27, SPECIES_CHEWTLE},
    {10, 20, SPECIES_DEWPIDER},
    {20, 25, SPECIES_DEWPIDER},
    {20, 23, SPECIES_PSYDUCK},
    {21, 28, SPECIES_LOTAD},
};

const struct WildPokemonInfo gCeladonCity_WaterMonsInfoNight = {4, gCeladonCity_WaterMonsNight};

const struct WildPokemon gCeladonCity_FishingMons[] =
{
    {5, 5, SPECIES_LOTAD},
    {5, 6, SPECIES_TYMPOLE},
    {10, 15, SPECIES_TYMPOLE},
    {12, 15, SPECIES_MAGIKARP},
    {25, 25, SPECIES_WISHIWASHI},
    {30, 30, SPECIES_PALPITOAD},
    {30, 30, SPECIES_LOTAD},
    {25, 30, SPECIES_TYMPOLE},
    {35, 35, SPECIES_WISHIWASHI},
    {30, 40, SPECIES_PALPITOAD},
};

const struct WildPokemonInfo gCeladonCity_FishingMonsInfo = {30, gCeladonCity_FishingMons};

const struct WildPokemon gCeladonCity_FishingMonsNight[] =
{
    {5, 5, SPECIES_WISHIWASHI},
    {5, 6, SPECIES_TYMPOLE},
    {10, 15, SPECIES_TYMPOLE},
    {5, 12, SPECIES_MAGIKARP},
    {25, 25, SPECIES_WISHIWASHI},
    {30, 30, SPECIES_PALPITOAD},
    {30, 30, SPECIES_LOTAD},
    {25, 30, SPECIES_TYMPOLE},
    {35, 35, SPECIES_WISHIWASHI},
    {30, 40, SPECIES_PALPITOAD},
};

const struct WildPokemonInfo gCeladonCity_FishingMonsInfoNight = {30, gCeladonCity_FishingMonsNight};

// Route 6

const struct WildPokemon gRoute6_LandMonsMorning[] =
{
	{3, 6, SPECIES_PIDGEY},
	{3, 4, SPECIES_ZIGZAGOON},
	{1, 5, SPECIES_DUCKLETT},
	{3, 4, SPECIES_YAMPER},
	{2, 3, SPECIES_SURSKIT},
	{1, 2, SPECIES_SWIRLIX},
	{1, 3, SPECIES_CHINGLING},
	{3, 5, SPECIES_SWIRLIX},
	{3, 4, SPECIES_SNUBBULL},
	{1, 3, SPECIES_IGGLYBUFF},
	{2, 3, SPECIES_PATRAT},
	{2, 2, SPECIES_ZIGZAGOON_G},
};

const struct WildPokemonInfo gRoute6_LandMonsInfoMorning = {21, gRoute6_LandMonsMorning};

const struct WildPokemon gRoute6_LandMonsDay[] =
{
	{3, 6, SPECIES_SURSKIT},
	{3, 4, SPECIES_YAMPER},
	{1, 5, SPECIES_DUCKLETT},
	{2, 3, SPECIES_ZIGZAGOON},
	{2, 3, SPECIES_PIDGEY},
	{1, 2, SPECIES_SWIRLIX},
	{1, 2, SPECIES_CHINGLING},
	{3, 5, SPECIES_SWIRLIX},
	{3, 4, SPECIES_SNUBBULL},
	{1, 3, SPECIES_IGGLYBUFF},
	{2, 3, SPECIES_PATRAT},
	{2, 2, SPECIES_ZIGZAGOON_G},
};

const struct WildPokemonInfo gRoute6_LandMonsInfoDay = {21, gRoute6_LandMonsDay};

const struct WildPokemon gRoute6_LandMonsEvening[] =
{
	{2, 4, SPECIES_PIDGEY},
	{2, 5, SPECIES_ZIGZAGOON},
	{3, 5, SPECIES_CHINGLING},
	{4, 4, SPECIES_YAMPER},
	{3, 6, SPECIES_SNUBBULL},
	{2, 3, SPECIES_SURSKIT},
	{1, 3, SPECIES_SWIRLIX},
	{2, 3, SPECIES_IGGLYBUFF},
	{1, 3, SPECIES_DUCKLETT},
	{1, 4, SPECIES_PATRAT},
	{4, 4, SPECIES_ZIGZAGOON_G},
	{5, 6, SPECIES_SURSKIT},
};

const struct WildPokemonInfo gRoute6_LandMonsInfoEvening = {21, gRoute6_LandMonsEvening};

const struct WildPokemon gRoute6_LandMonsNight[] =
{
	{4, 6, SPECIES_PATRAT},
	{4, 4, SPECIES_ZIGZAGOON_G},
	{2, 4, SPECIES_IGGLYBUFF},
	{2, 5, SPECIES_PATRAT},
	{3, 5, SPECIES_CHINGLING},
	{2, 3, SPECIES_SNUBBULL},
	{1, 3, SPECIES_SURSKIT},
	{1, 3, SPECIES_YAMPER},
	{1, 3, SPECIES_PIDGEY},
	{3, 3, SPECIES_ZIGZAGOON},
	{1, 2, SPECIES_SWIRLIX},
	{1, 3, SPECIES_DUCKLETT},
};

const struct WildPokemonInfo gRoute6_LandMonsInfoNight = {21, gRoute6_LandMonsNight};

const struct WildPokemon gRoute6_WaterMons[] =
{
    {20, 30, SPECIES_PSYDUCK},
    {20, 23, SPECIES_DUCKLETT},
    {20, 25, SPECIES_SURSKIT},
    {20, 22, SPECIES_DEWPIDER},
    {10, 27, SPECIES_SWIRLIX},
};

const struct WildPokemonInfo gRoute6_WaterMonsInfo = {4, gRoute6_WaterMons};

const struct WildPokemon gRoute6_FishingMons[] =
{
    {5, 8, SPECIES_MAGIKARP},
    {5, 7, SPECIES_SWIRLIX},
    {10, 19, SPECIES_MAGIKARP},
    {12, 18, SPECIES_GOLDEEN},
    {10, 15, SPECIES_POLIWAG},
    {25, 30, SPECIES_SWIRLIX},
    {30, 35, SPECIES_CORPHISH},
    {20, 25, SPECIES_CORPHISH},
    {35, 40, SPECIES_POLIWHIRL},
    {40, 45, SPECIES_GYARADOS},
};

const struct WildPokemonInfo gRoute6_FishingMonsInfo = {30, gRoute6_FishingMons};

const struct WildPokemon gRoute6_FishingMonsNight[] =
{
    {5, 8, SPECIES_SWIRLIX},
    {5, 7, SPECIES_CORPHISH},
    {10, 19, SPECIES_MAGIKARP},
    {12, 18, SPECIES_GOLDEEN},
    {10, 15, SPECIES_POLIWAG},
    {25, 30, SPECIES_CORPHISH},
    {30, 35, SPECIES_CORPHISH},
    {20, 25, SPECIES_SWIRLIX},
    {35, 41, SPECIES_POLIWHIRL},
    {40, 47, SPECIES_GYARADOS},
};

const struct WildPokemonInfo gRoute6_FishingMonsInfoNight = {30, gRoute6_FishingMonsNight};

// Route 7

const struct WildPokemon gRoute7_LandMonsMorning[] =
{
	{3, 6, SPECIES_ODDISH},
	{5, 6, SPECIES_BELLSPROUT},
	{5, 6, SPECIES_MORELULL},
	{6, 6, SPECIES_COMBEE},
	{5, 6, SPECIES_MEOWTH},
	{4, 6, SPECIES_FURFROU},
	{4, 6, SPECIES_THROH},
	{3, 6, SPECIES_SAWK},
	{3, 6, SPECIES_SPEAROW},
	{4, 6, SPECIES_MURKROW},
	{4, 4, SPECIES_HOUNDOUR},
	{4, 4, SPECIES_MEOWTH_A},
};

const struct WildPokemonInfo gRoute7_LandMonsInfoMorning = {21, gRoute7_LandMonsMorning};

const struct WildPokemon gRoute7_LandMonsDay[] =
{
	{5, 6, SPECIES_MEOWTH},
	{4, 6, SPECIES_ODDISH},
	{6, 6, SPECIES_MORELULL},
	{4, 6, SPECIES_THROH},
	{5, 6, SPECIES_BELLSPROUT},
	{6, 6, SPECIES_COMBEE},
	{4, 6, SPECIES_SAWK},
	{4, 6, SPECIES_FURFROU},
	{3, 6, SPECIES_SPEAROW},
	{4, 6, SPECIES_MURKROW},
	{4, 4, SPECIES_HOUNDOUR},
	{4, 4, SPECIES_MEOWTH_A},
};

const struct WildPokemonInfo gRoute7_LandMonsInfoDay = {21, gRoute7_LandMonsDay};

const struct WildPokemon gRoute7_LandMonsEvening[] =
{
	{5, 6, SPECIES_SPEAROW},
	{4, 6, SPECIES_ODDISH},
	{6, 6, SPECIES_MORELULL},
	{5, 6, SPECIES_BELLSPROUT},
	{4, 6, SPECIES_THROH},
	{4, 6, SPECIES_SAWK},
	{4, 6, SPECIES_HOUNDOUR},
	{4, 4, SPECIES_MURKROW},
	{4, 4, SPECIES_MEOWTH_A},
	{6, 6, SPECIES_COMBEE},
	{4, 6, SPECIES_FURFROU},
	{5, 6, SPECIES_MEOWTH},
};

const struct WildPokemonInfo gRoute7_LandMonsInfoEvening = {21, gRoute7_LandMonsEvening};

const struct WildPokemon gRoute7_LandMonsNight[] =
{
	{5, 6, SPECIES_MURKROW},
	{5, 7, SPECIES_MEOWTH_A},
	{3, 6, SPECIES_SPEAROW},
	{5, 5, SPECIES_MORELULL},
	{4, 6, SPECIES_SAWK},
	{6, 6, SPECIES_HOUNDOUR},
	{4, 6, SPECIES_ODDISH},
	{5, 6, SPECIES_BELLSPROUT},
	{4, 6, SPECIES_THROH},
	{4, 4, SPECIES_FURFROU},
	{6, 6, SPECIES_COMBEE},
	{4, 4, SPECIES_MEOWTH},
};

const struct WildPokemonInfo gRoute7_LandMonsInfoNight = {23, gRoute7_LandMonsNight};

// Route 16

const struct WildPokemon gRoute16_LandMonsMorning[] =
{
	{3, 7, SPECIES_CUTIEFLY},
	{5, 6, SPECIES_CHINGLING},
	{5, 6, SPECIES_SHINX},
	{6, 6, SPECIES_SLUGMA},
	{5, 6, SPECIES_MUNCHLAX},
	{4, 6, SPECIES_PLUSLE},
	{4, 6, SPECIES_MINUN},
	{3, 6, SPECIES_SKWOVET},
	{3, 6, SPECIES_SKWOVET},
	{4, 4, SPECIES_IMPIDIMP},
	{5, 9, SPECIES_CHINGLING},
	{4, 4, SPECIES_MURKROW},
};

const struct WildPokemonInfo gRoute16_LandMonsInfoMorning = {21, gRoute16_LandMonsMorning};

const struct WildPokemon gRoute16_LandMonsDay[] =
{
	{3, 6, SPECIES_MUNCHLAX},
	{5, 6, SPECIES_SKWOVET},
	{5, 6, SPECIES_SHINX},
	{6, 6, SPECIES_SKWOVET},
	{5, 6, SPECIES_CUTIEFLY},
	{4, 6, SPECIES_PLUSLE},
	{4, 6, SPECIES_MINUN},
	{3, 6, SPECIES_CHINGLING},
	{3, 6, SPECIES_SKWOVET},
	{4, 6, SPECIES_IMPIDIMP},
	{4, 4, SPECIES_SLUGMA},
	{4, 4, SPECIES_MURKROW},
};

const struct WildPokemonInfo gRoute16_LandMonsInfoDay = {21, gRoute16_LandMonsDay};

const struct WildPokemon gRoute16_LandMonsEvening[] =
{
	{3, 8, SPECIES_MUNCHLAX},
	{5, 6, SPECIES_IMPIDIMP},
	{5, 6, SPECIES_SHINX},
	{6, 6, SPECIES_SKWOVET},
	{5, 8, SPECIES_SHINX},
	{4, 6, SPECIES_MINUN},
	{4, 6, SPECIES_PLUSLE},
	{5, 9, SPECIES_MUNCHLAX},
	{3, 6, SPECIES_MURKROW},
	{4, 6, SPECIES_CUTIEFLY},
	{4, 4, SPECIES_CHINGLING},
	{4, 4, SPECIES_SLUGMA},
};

const struct WildPokemonInfo gRoute16_LandMonsInfoEvening = {21, gRoute16_LandMonsEvening};

const struct WildPokemon gRoute16_LandMonsNight[] =
{
	{4, 8, SPECIES_MURKROW},
	{5, 6, SPECIES_SKWOVET},
	{5, 6, SPECIES_IMPIDIMP},
	{6, 6, SPECIES_MURKROW},
	{5, 6, SPECIES_SHINX},
	{4, 6, SPECIES_MINUN},
	{4, 6, SPECIES_PLUSLE},
	{3, 6, SPECIES_MUNCHLAX},
	{3, 6, SPECIES_MUNCHLAX},
	{4, 6, SPECIES_CUTIEFLY},
	{3, 4, SPECIES_CHINGLING},
	{4, 6, SPECIES_SLUGMA},
};

const struct WildPokemonInfo gRoute16_LandMonsInfoNight = {21, gRoute16_LandMonsNight};

// Iced Path

const struct WildPokemon gIcedPath_LandMons[] =
{
	{4, 6, SPECIES_SNEASEL},
	{4, 6, SPECIES_SNEASEL},
	{2, 6, SPECIES_SNEASEL},
	{3, 6, SPECIES_SNEASEL},
	{3, 3, SPECIES_SNEASEL},
	{2, 3, SPECIES_SNOM},
	{3, 3, SPECIES_SNOM},
	{5, 5, SPECIES_CRYOGONAL},
	{3, 6, SPECIES_CRYOGONAL},
	{5, 5, SPECIES_SNEASEL_H},
	{3, 5, SPECIES_SNEASEL_H},
	{4, 6, SPECIES_SNEASEL_H},
};

const struct WildPokemonInfo gIcedPath_LandMonsInfo = {24, gIcedPath_LandMons};

static const struct WildPokemon gIcedPath_LandMonsMorning[] =
{
	{5, 6, SPECIES_SNEASEL_H},
	{4, 4, SPECIES_SNEASEL},
	{4, 5, SPECIES_SNEASEL},
	{5, 6, SPECIES_SNEASEL_H},
	{5, 6, SPECIES_SNOM},
	{3, 5, SPECIES_SNOM},
	{3, 5, SPECIES_SNOM},
	{4, 5, SPECIES_SNEASEL_H},
	{6, 6, SPECIES_CRYOGONAL},
	{4, 4, SPECIES_SNEASEL_H},
	{3, 6, SPECIES_SNEASEL},
	{4, 7, SPECIES_SNEASEL_H},
};

static const struct WildPokemonInfo gIcedPath_LandMonsInfoMorning = {24, gIcedPath_LandMonsMorning};

const struct WildPokemon gIcedPath_WaterMons[] =
{
    {20, 24, SPECIES_SPHEAL},
    {20, 20, SPECIES_SPHEAL},
    {20, 25, SPECIES_EISCUE},
    {24, 30, SPECIES_EISCUE},
    {20, 27, SPECIES_SPHEAL},
};

const struct WildPokemonInfo gIcedPath_WaterMonsInfo = {3, gIcedPath_WaterMons};

const struct WildPokemon gIcedPath_FishingMons[] =
{
    {5, 5, SPECIES_SHELLDER},
    {5, 7, SPECIES_SHELLDER},
    {10, 19, SPECIES_SHELLDER},
    {15, 18, SPECIES_SHELLDER},
    {10, 15, SPECIES_SHELLDER},
    {25, 30, SPECIES_SHELLDER},
    {30, 35, SPECIES_SHELLDER},
    {20, 25, SPECIES_SHELLDER},
    {30, 38, SPECIES_EISCUE},
    {38, 41, SPECIES_CLOYSTER},
};

const struct WildPokemonInfo gIcedPath_FishingMonsInfo = {21, gIcedPath_FishingMons};

const struct WildPokemonHeader gWildMonMorningHeaders[] =
{
	{
		.mapGroup = MAP_GROUP(VERMILION_PORT_EXTERIOR),
		.mapNum = MAP_NUM(VERMILION_PORT_EXTERIOR),
		.landMonsInfo = NULL,
		.waterMonsInfo = &gVermilionPort_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gVermilionPort_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(VERMILION_CITY),
		.mapNum = MAP_NUM(VERMILION_CITY),
		.landMonsInfo = NULL,
		.waterMonsInfo = &gVermilionCity_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gVermilionCity_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(CELADON_CITY),
		.mapNum = MAP_NUM(CELADON_CITY),
		.landMonsInfo = &gCeladonCity_LandMonsInfoMorning,
		.waterMonsInfo = &gCeladonCity_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gCeladonCity_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_6),
		.mapNum = MAP_NUM(ROUTE_6),
		.landMonsInfo = &gRoute6_LandMonsInfoMorning,
		.waterMonsInfo = &gRoute6_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gRoute6_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(ICED_PATH),
		.mapNum = MAP_NUM(ICED_PATH),
		.landMonsInfo = &gIcedPath_LandMonsInfoMorning,
		.waterMonsInfo = &gIcedPath_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gIcedPath_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_7),
		.mapNum = MAP_NUM(ROUTE_7),
		.landMonsInfo = &gRoute7_LandMonsInfoMorning,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_16),
		.mapNum = MAP_NUM(ROUTE_16),
		.landMonsInfo = &gRoute16_LandMonsInfoMorning,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
};

const struct WildPokemonHeader gWildMonDayHeaders[] =
{
	{
		.mapGroup = MAP_GROUP(VERMILION_PORT_EXTERIOR),
		.mapNum = MAP_NUM(VERMILION_PORT_EXTERIOR),
		.landMonsInfo = NULL,
		.waterMonsInfo = &gVermilionPort_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gVermilionPort_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(VERMILION_CITY),
		.mapNum = MAP_NUM(VERMILION_CITY),
		.landMonsInfo = NULL,
		.waterMonsInfo = &gVermilionCity_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gVermilionCity_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(CELADON_CITY),
		.mapNum = MAP_NUM(CELADON_CITY),
		.landMonsInfo = &gCeladonCity_LandMonsInfoDay,
		.waterMonsInfo = &gCeladonCity_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gCeladonCity_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_6),
		.mapNum = MAP_NUM(ROUTE_6),
		.landMonsInfo = &gRoute6_LandMonsInfoDay,
		.waterMonsInfo = &gRoute6_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gRoute6_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(ICED_PATH),
		.mapNum = MAP_NUM(ICED_PATH),
		.landMonsInfo = &gIcedPath_LandMonsInfo,
		.waterMonsInfo = &gIcedPath_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gIcedPath_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_7),
		.mapNum = MAP_NUM(ROUTE_7),
		.landMonsInfo = &gRoute7_LandMonsInfoDay,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_16),
		.mapNum = MAP_NUM(ROUTE_16),
		.landMonsInfo = &gRoute16_LandMonsInfoDay,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
};

const struct WildPokemonHeader gWildMonEveningHeaders[] =
{
	{
		.mapGroup = MAP_GROUP(VERMILION_PORT_EXTERIOR),
		.mapNum = MAP_NUM(VERMILION_PORT_EXTERIOR),
		.landMonsInfo = NULL,
		.waterMonsInfo = &gVermilionPort_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gVermilionPort_FishingMonsInfoEveningNight,
	},
	{
		.mapGroup = MAP_GROUP(VERMILION_CITY),
		.mapNum = MAP_NUM(VERMILION_CITY),
		.landMonsInfo = NULL,
		.waterMonsInfo = &gVermilionCity_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gVermilionCity_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(CELADON_CITY),
		.mapNum = MAP_NUM(CELADON_CITY),
		.landMonsInfo = &gCeladonCity_LandMonsInfoEvening,
		.waterMonsInfo = &gCeladonCity_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gCeladonCity_FishingMonsInfoNight,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_6),
		.mapNum = MAP_NUM(ROUTE_6),
		.landMonsInfo = &gRoute6_LandMonsInfoEvening,
		.waterMonsInfo = &gRoute6_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gRoute6_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(ICED_PATH),
		.mapNum = MAP_NUM(ICED_PATH),
		.landMonsInfo = &gIcedPath_LandMonsInfo,
		.waterMonsInfo = &gIcedPath_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gIcedPath_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_7),
		.mapNum = MAP_NUM(ROUTE_7),
		.landMonsInfo = &gRoute7_LandMonsInfoEvening,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_16),
		.mapNum = MAP_NUM(ROUTE_16),
		.landMonsInfo = &gRoute16_LandMonsInfoEvening,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
};

const struct WildPokemonHeader gWildMonNightHeaders[] =
{
	{
		.mapGroup = MAP_GROUP(VERMILION_PORT_EXTERIOR),
		.mapNum = MAP_NUM(VERMILION_PORT_EXTERIOR),
		.landMonsInfo = NULL,
		.waterMonsInfo = &gVermilionPort_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gVermilionPort_FishingMonsInfoEveningNight,
	},
	{
		.mapGroup = MAP_GROUP(VERMILION_CITY),
		.mapNum = MAP_NUM(VERMILION_CITY),
		.landMonsInfo = NULL,
		.waterMonsInfo = &gVermilionCity_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gVermilionCity_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(CELADON_CITY),
		.mapNum = MAP_NUM(CELADON_CITY),
		.landMonsInfo = &gCeladonCity_LandMonsInfoNight,
		.waterMonsInfo = &gCeladonCity_WaterMonsInfoNight,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gCeladonCity_FishingMonsInfoNight,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_6),
		.mapNum = MAP_NUM(ROUTE_6),
		.landMonsInfo = &gRoute6_LandMonsInfoNight,
		.waterMonsInfo = &gRoute6_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gRoute6_FishingMonsInfoNight,
	},
	{
		.mapGroup = MAP_GROUP(ICED_PATH),
		.mapNum = MAP_NUM(ICED_PATH),
		.landMonsInfo = &gIcedPath_LandMonsInfo,
		.waterMonsInfo = &gIcedPath_WaterMonsInfo,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = &gIcedPath_FishingMonsInfo,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_7),
		.mapNum = MAP_NUM(ROUTE_7),
		.landMonsInfo = &gRoute7_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_16),
		.mapNum = MAP_NUM(ROUTE_16),
		.landMonsInfo = &gRoute16_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
};

const struct SwarmData gSwarmTable[] =
{
	/*{
		.mapName = 0xFF,
		.species = 0xFFFF,
	},*/
};

const u16 gSwarmTableLength = NELEMS(gSwarmTable);
