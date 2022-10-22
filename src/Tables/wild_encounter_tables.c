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

// Route 6

const struct WildPokemon gRoute6_LandMonsMorning[] =
{
	{3, 6, SPECIES_PIDGEY},
	{3, 4, SPECIES_ZIGZAGOON},
	{1, 5, SPECIES_WINGULL},
	{3, 4, SPECIES_YAMPER},
	{2, 3, SPECIES_CRAMORANT},
	{1, 2, SPECIES_SWIRLIX},
	{1, 3, SPECIES_PINECO},
	{3, 5, SPECIES_SWIRLIX},
	{3, 4, SPECIES_SNUBBULL},
	{1, 3, SPECIES_IGGLYBUFF},
	{2, 3, SPECIES_PATRAT},
	{2, 2, SPECIES_ZIGZAGOON_G},
};

const struct WildPokemonInfo gRoute6_LandMonsInfoMorning = {21, gRoute6_LandMonsMorning};

const struct WildPokemon gRoute6_LandMonsDay[] =
{
	{3, 6, SPECIES_CRAMORANT},
	{3, 4, SPECIES_YAMPER},
	{1, 5, SPECIES_WINGULL},
	{2, 3, SPECIES_ZIGZAGOON},
	{2, 3, SPECIES_PIDGEY},
	{1, 2, SPECIES_SWIRLIX},
	{1, 3, SPECIES_PINECO},
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
	{3, 5, SPECIES_PINECO},
	{4, 4, SPECIES_YAMPER},
	{3, 6, SPECIES_SNUBBULL},
	{2, 3, SPECIES_CRAMORANT},
	{1, 3, SPECIES_SWIRLIX},
	{2, 3, SPECIES_IGGLYBUFF},
	{1, 3, SPECIES_WINGULL},
	{1, 4, SPECIES_PATRAT},
	{4, 4, SPECIES_ZIGZAGOON_G},
	{5, 6, SPECIES_CRAMORANT},
};

const struct WildPokemonInfo gRoute6_LandMonsInfoEvening = {21, gRoute6_LandMonsEvening};

const struct WildPokemon gRoute6_LandMonsNight[] =
{
	{4, 6, SPECIES_PATRAT},
	{4, 4, SPECIES_ZIGZAGOON_G},
	{2, 4, SPECIES_IGGLYBUFF},
	{2, 5, SPECIES_PATRAT},
	{3, 3, SPECIES_PINECO},
	{2, 3, SPECIES_SNUBBULL},
	{1, 3, SPECIES_CRAMORANT},
	{1, 3, SPECIES_YAMPER},
	{1, 3, SPECIES_PIDGEY},
	{3, 3, SPECIES_ZIGZAGOON},
	{1, 2, SPECIES_SWIRLIX},
	{1, 3, SPECIES_WINGULL},
};

const struct WildPokemonInfo gRoute6_LandMonsInfoNight = {21, gRoute6_LandMonsNight};

const struct WildPokemon gRoute6_WaterMons[] =
{
    {20, 30, SPECIES_PSYDUCK},
    {10, 20, SPECIES_WINGULL},
    {20, 25, SPECIES_MARILL},
    {5, 10, SPECIES_AZURILL},
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
	{6, 7, SPECIES_MORELULL},
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
	{5, 7, SPECIES_MEOWTH},
	{4, 6, SPECIES_ODDISH},
	{6, 7, SPECIES_MORELULL},
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
	{5, 7, SPECIES_SPEAROW},
	{4, 6, SPECIES_ODDISH},
	{6, 7, SPECIES_MORELULL},
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
	{6, 7, SPECIES_HOUNDOUR},
	{4, 6, SPECIES_ODDISH},
	{5, 6, SPECIES_BELLSPROUT},
	{4, 6, SPECIES_THROH},
	{4, 4, SPECIES_FURFROU},
	{6, 6, SPECIES_COMBEE},
	{4, 4, SPECIES_MEOWTH},
};

const struct WildPokemonInfo gRoute7_LandMonsInfoNight = {23, gRoute7_LandMonsNight};

// Iced Path

const struct WildPokemon gIcedPath_LandMons[] =
{
	{4, 6, SPECIES_SNEASEL},
	{4, 6, SPECIES_SNEASEL},
	{2, 6, SPECIES_SNEASEL},
	{3, 7, SPECIES_SNEASEL},
	{3, 3, SPECIES_SNEASEL},
	{2, 3, SPECIES_SNOM},
	{3, 3, SPECIES_SNOM},
	{5, 5, SPECIES_CRYOGONAL},
	{3, 7, SPECIES_CRYOGONAL},
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
	{6, 7, SPECIES_CRYOGONAL},
	{4, 4, SPECIES_SNEASEL_H},
	{3, 9, SPECIES_SNEASEL},
	{4, 10, SPECIES_SNEASEL_H},
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
    {5, 7, SPECIES_FRILLISH},
    {10, 19, SPECIES_SHELLDER},
    {15, 18, SPECIES_SHELLDER},
    {10, 15, SPECIES_FRILLISH},
    {25, 30, SPECIES_SHELLDER},
    {30, 35, SPECIES_SHELLDER},
    {20, 25, SPECIES_FRILLISH},
    {30, 38, SPECIES_JELLICENT},
    {38, 41, SPECIES_CLOYSTER},
};

const struct WildPokemonInfo gIcedPath_FishingMonsInfo = {21, gIcedPath_FishingMons};

const struct WildPokemonHeader gWildMonMorningHeaders[] =
{
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
};

const struct WildPokemonHeader gWildMonDayHeaders[] =
{
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
};

const struct WildPokemonHeader gWildMonEveningHeaders[] =
{
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
};

const struct WildPokemonHeader gWildMonNightHeaders[] =
{
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
};

const struct SwarmData gSwarmTable[] =
{
	/*{
		.mapName = 0xFF,
		.species = 0xFFFF,
	},*/
};

const u16 gSwarmTableLength = NELEMS(gSwarmTable);
