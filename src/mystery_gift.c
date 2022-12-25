#include "defines.h"
#include "../include/gba/defines.h"
#include "../include/decompress.h"
#include "../include/event_data.h"
#include "../include/field_weather.h"
#include "../include/mgba.h"
#include "../include/new_menu_helpers.h"
#include "../include/random.h"
#include "../include/pokemon.h"
#include "../include/script_menu.h"
#include "../include/sprite.h"
#include "../include/string_util.h"
#include "../include/task.h"

#include "../include/constants/species.h"
#include "../include/constants/items.h"
#include "../include/constants/abilities.h"
#include "../include/constants/moves.h"
#include "../include/constants/pokemon.h"
#include "../include/constants/region_map_sections.h"

#include "../include/new/build_pokemon.h"
#include "../include/new/catching.h"
#include "../include/new/ram_locs.h"
#include "../include/new/mystery_gift.h"
#include "../include/new/util.h"

bool8 CheckMysteryGiftPassword(void);
void GiveMysteryGiftMon(u8 giftId);

//Strings
extern const u8 gText_MysteryGift_CharizardMonoPassword[];
extern const u8 gText_MysteryGift_StoutlandEternalPassword[];
extern const u8 gText_MysteryGift_ChanseyMintPassword[];
extern const u8 gText_MysteryGift_FarfetchdMintPassword[];
extern const u8 gText_MysteryGift_HitmonchanMintPassword[];
extern const u8 gText_MysteryGift_ElectabuzzMintPassword[];
extern const u8 gText_MysteryGift_DracovishAshPassword[];
extern const u8 gText_MysteryGift_ShinyShayminSonicPassword[];
extern const u8 gText_MysteryGift_ShinyEmolgaEncorePassword[];
extern const u8 gText_MysteryGift_IncineroarSmashPassword[];
extern const u8 gText_MysteryGift_TrevenantUnboundShinyPassword[];
extern const u8 gText_MysteryGift_PachirisuSeJunParkPassword[];
extern const u8 gText_MysteryGift_BanetteCorbinPassword[];
extern const u8 gText_MysteryGift_LanturnDiannePassword[];
extern const u8 gText_MysteryGift_SableyeGolgoPassword[];
extern const u8 gText_MysteryGift_RayquazaVCreatePassword[];
extern const u8 gText_MysteryGift_CacneaPokeParkPassword[];
extern const u8 gText_MysteryGift_GameBoyAdvanceSecretCode[];

const struct NewMysteryGift gMysteryGifts[] = 
{
	// Debug Only
    {
        .species = SPECIES_TREECKO,
        .item = ITEM_LUM_BERRY,
        .abilityNum = 0,
        .nature = NATURE_JOLLY,
        .moves = 
        {
            MOVE_COACHING,
            MOVE_INFERNALPARADE,
            MOVE_SHELLSIDEARM,
            MOVE_DRAGONENERGY,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            252,
            0,
			0,
            0,
            252,
        },
        .level = 10,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_CHERISH_BALL,
        .password = gText_MysteryGift_GameBoyAdvanceSecretCode,
    },
	
	// Eternal Stoutland (Sparky)
    {
        .species = SPECIES_STOUTLAND_ETERNAL,
        .item = ITEM_CUSTAP_BERRY,
        .abilityNum = 2,
        .nature = NATURE_JOLLY,
        .moves = 
        {
            MOVE_LIGHTOFRUIN,
            MOVE_PURSUIT,
            MOVE_STRENGTH,
            MOVE_STOMPINGTANTRUM,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            252,
            4,
            0,
            0,
            252,
        },
        .level = 46,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_CHERISH_BALL,
        .password = gText_MysteryGift_StoutlandEternalPassword,
    },
	
	// Mint's Chansey (Scrunch)
	{
        .species = SPECIES_CHANSEY,
        .item = ITEM_LUCKY_PUNCH,
        .abilityNum = 2,
        .nature = NATURE_QUIRKY,
        .moves = 
        {
            MOVE_SCRUNCH,
            MOVE_DOUBLEEDGE,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            252,
            0,
            8,
            240,
            8,
        },
        .level = 50,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_POKE_BALL,
        .password = gText_MysteryGift_ChanseyMintPassword,
    },
	
	// Mint's Farfetch'd (Leek Slap & Pot Smash)
	{
        .species = SPECIES_FARFETCHD,
        .item = ITEM_LEEK,
        .abilityNum = 2,
        .nature = NATURE_QUIRKY,
        .moves = 
        {
            MOVE_LEEKSLAP,
            MOVE_POTSMASH,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            4,
            252,
            0,
            0,
            0,
            252,
        },
        .level = 50,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_POKE_BALL,
        .password = gText_MysteryGift_FarfetchdMintPassword,
    },
	
	// Mint's Hitmonchan (Jab & Special Punch)
	{
        .species = SPECIES_HITMONCHAN,
        .item = ITEM_SITRUS_BERRY,
        .abilityNum = 2,
        .nature = NATURE_QUIRKY,
        .moves = 
        {
            MOVE_JAB,
            MOVE_SPECIALPUNCH,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            248,
            0,
            252,
            0,
            8,
        },
        .level = 50,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_MASTER_BALL,
        .password = gText_MysteryGift_HitmonchanMintPassword,
    },
	
	// Mint's Electabuzz
	{
        .species = SPECIES_ELECTABUZZ,
        .item = ITEM_WACAN_BERRY,
        .abilityNum = 2,
        .nature = NATURE_QUIRKY,
        .moves = 
        {
            MOVE_THUNDERSHOCK,
            MOVE_THUNDERPUNCH,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            252,
            0,
            0,
            8,
            252,
        },
        .level = 50,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_MASTER_BALL,
        .password = gText_MysteryGift_ElectabuzzMintPassword,
    },
	
	// Ash's Dracovish
	{
        .species = SPECIES_DRACOVISH,
        .item = ITEM_NONE,
        .abilityNum = 1,
        .nature = NATURE_NAIVE,
        .moves = 
        {
            MOVE_FISHIOUSREND,
            MOVE_DRAGONRUSH,
            MOVE_ICEFANG,
            MOVE_WATERGUN,
        },
        .ivs =
        {
            30,
            31,
            31,
            30,
            30,
            31,
        },
        .evs = 
        {
            0,
            0,
            0,
            0,
            0,
            0,
        },
        .level = 80,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_POKE_BALL,
        .password = gText_MysteryGift_DracovishAshPassword,
    },
	
	// Encore Mode Shaymin
	{
        .species = SPECIES_SHAYMIN,
        .item = ITEM_SITRUS_BERRY,
        .abilityNum = 0,
        .nature = NATURE_TIMID,
        .moves = 
        {
            MOVE_CELEBRATE,
            MOVE_DEFENSECURL,
            MOVE_ROLLOUT,
            MOVE_QUICKATTACK,
        },
        .ivs =
        {
            30,
            29,
            30,
            29,
            31,
            28,
        },
        .evs = 
        {
            0,
            0,
            0,
            0,
            0,
            252,
        },
        .level = 20,
        .isShiny = TRUE,
        .ballType = BALL_TYPE_CHERISH_BALL,
        .password = gText_MysteryGift_ShinyShayminSonicPassword,
    },
	
	// Encore Mode Emolga
	{
        .species = SPECIES_EMOLGA,
        .item = ITEM_ROCKY_HELMET,
        .abilityNum = 0,
        .nature = NATURE_TIMID,
        .moves = 
        {
            MOVE_CELEBRATE,
            MOVE_UTURN,
            MOVE_ROLLOUT,
            MOVE_AERIALACE,
        },
        .ivs =
        {
            30,
            29,
            30,
            29,
            31,
            28,
        },
        .evs = 
        {
            0,
            0,
            0,
            0,
            0,
            0,
        },
        .level = 15,
        .isShiny = TRUE,
        .ballType = BALL_TYPE_CHERISH_BALL,
        .password = gText_MysteryGift_ShinyEmolgaEncorePassword,
    },
	
	// Smash Bros. Incineroar
	{
        .species = SPECIES_INCINEROAR,
        .item = ITEM_HEAVY_DUTY_BOOTS,
        .abilityNum = 2,
        .nature = NATURE_SASSY,
        .moves = 
        {
            MOVE_DARKESTLARIAT,
            MOVE_UTURN,
            MOVE_ROLLOUT,
            MOVE_AERIALACE,
        },
        .ivs =
        {
            30,
            31,
            31,
            31,
            31,
            30,
        },
        .evs = 
        {
            252,
            20,
            0,
            0,
            0,
            236,
        },
        .level = 45,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_CHERISH_BALL,
        .password = gText_MysteryGift_IncineroarSmashPassword,
    },
	
	// Unbound Halloween Trevenant
	{
        .species = SPECIES_TREVENANT,
        .item = ITEM_SITRUS_BERRY,
        .abilityNum = 2,
        .nature = NATURE_SASSY,
        .moves = 
        {
            MOVE_POLTERGEIST,
            MOVE_LEECHSEED,
            MOVE_WILLOWISP,
            MOVE_PROTECT,
        },
        .ivs =
        {
            30,
            31,
            31,
            31,
            31,
            30,
        },
        .evs = 
        {
            0,
            0,
            20,
            0,
            20,
            0,
        },
        .level = 50,
        .isShiny = TRUE,
        .ballType = BALL_TYPE_CHERISH_BALL,
        .password = gText_MysteryGift_TrevenantUnboundShinyPassword,
    },
	
	// Se Jun Park's Pachirisu
	{
        .species = SPECIES_PACHIRISU,
        .item = ITEM_SITRUS_BERRY,
        .abilityNum = 2,
        .nature = NATURE_IMPISH,
        .moves = 
        {
            MOVE_NUZZLE,
            MOVE_SUPERFANG,
            MOVE_FOLLOWME,
            MOVE_PROTECT,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            252,
            0,
            252,
            0,
            4,
            0,
        },
        .level = 50,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_CHERISH_BALL,
        .password = gText_MysteryGift_PachirisuSeJunParkPassword,
    },
	
	// Psychic Corbin's Shadow Force Banette
	{
        .species = SPECIES_BANETTE,
        .item = ITEM_NONE,
        .abilityNum = 0,
        .nature = NATURE_ADAMANT,
        .moves = 
        {
            MOVE_SHADOWFORCE,
            MOVE_SUCKERPUNCH,
            MOVE_SHADOWSNEAK,
            MOVE_CURSE,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            0,
            0,
            0,
            4,
            0,
        },
        .level = 58,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_POKE_BALL,
        .password = gText_MysteryGift_BanetteCorbinPassword,
    },

// Cooltrainer Dianne's Earthquake Lanturn
	{
        .species = SPECIES_LANTURN,
        .item = ITEM_NONE,
        .abilityNum = 0,
        .nature = NATURE_QUIRKY,
        .moves = 
        {
            MOVE_EARTHQUAKE,
            MOVE_THUNDERBOLT,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            0,
            0,
            0,
            4,
            0,
        },
        .level = 43,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_POKE_BALL,
        .password = gText_MysteryGift_LanturnDiannePassword,
    },

// Golgo's Sableye (Octazooka)
	{
        .species = SPECIES_SABLEYE,
        .item = ITEM_BLACK_SLUDGE,
        .abilityNum = 0,
        .nature = NATURE_QUIRKY,
        .moves = 
        {
            MOVE_FOULPLAY,
            MOVE_OCTAZOOKA,
            MOVE_TICKLE,
            MOVE_TRICK,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            0,
            0,
            0,
            4,
            0,
        },
        .level = 50,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_CHERISH_BALL,
        .password = gText_MysteryGift_SableyeGolgoPassword,
    },
	
	// V-Create Rayquaza
	{
        .species = SPECIES_RAYQUAZA,
        .item = ITEM_LIFE_ORB,
        .abilityNum = 0,
        .nature = NATURE_HASTY,
        .moves = 
        {
            MOVE_EXTREMESPEED,
            MOVE_HYPERBEAM,
            MOVE_DRAGONPULSE,
            MOVE_VCREATE,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            0,
            0,
            252,
            4,
            252,
        },
        .level = 100,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_CHERISH_BALL,
        .password = gText_MysteryGift_RayquazaVCreatePassword,
    },
	
	// PokePark Cacnea
	{
        .species = SPECIES_CACNEA,
        .item = ITEM_NONE,
        .abilityNum = 0,
        .nature = NATURE_MILD,
        .moves = 
        {
            MOVE_POISONSTING,
            MOVE_LEER,
            MOVE_ABSORB,
            MOVE_ENCORE,
        },
        .ivs =
        {
            31,
            31,
            31,
            31,
            31,
            31,
        },
        .evs = 
        {
            0,
            0,
            0,
            0,
            0,
            0,
        },
        .level = 5,
        .isShiny = FALSE,
        .ballType = BALL_TYPE_POKE_BALL,
        .password = gText_MysteryGift_CacneaPokeParkPassword,
    },
	
};

u8 CheckMysteryGiftPassword(void)
{
    u8 i;
    for(i = 0; i < ARRAY_COUNT(gMysteryGifts); i++)
    {
        struct NewMysteryGift gift = gMysteryGifts[i];
        if(StringCompare(gift.password, gStringVar1) == 0)
        {
            if(FlagGet(MYSTERY_GIFT_FLAGS_START + i))
            {
                return 2; //Password was correct but player has already receieved this gift.
            }
            GiveMysteryGiftMon(i);
            return 1; //Password was correct and mon was given to player.
        }
    }
    return 0; //Password was not correct.
}

void GiveMysteryGiftMon(u8 giftId)
{
	u8 sentToPc;
	struct Pokemon mon;
    struct NewMysteryGift gift = gMysteryGifts[giftId];
    u16 species = gift.species;
    u16 item = gift.item;
    u8 abilityNum = gift.abilityNum;
    u8 nature = gift.nature;
    u8 level = gift.level;
    u8 isShiny = gift.isShiny;
    u8 ballType = gift.ballType;
    u8 i;

	CreateMon(&mon, species, level, 32, 0, 0, 0, 0);
	SetMonData(&mon, MON_DATA_HELD_ITEM, &item);

	if (nature >= NUM_NATURES)
		nature = Random() % NUM_NATURES;

    GiveMonNatureAndAbility(&mon, nature, abilityNum, isShiny, FALSE, FALSE);
	if(abilityNum == 2)
		mon.hiddenAbility = TRUE;

    mon.pokeball = ballType;
    
    for (i = 0; i < MAX_MON_MOVES; ++i)
	{
		if (gift.moves[i] < MOVES_COUNT)
			SetMonData(&mon, MON_DATA_MOVE1 + i, &gift.moves[i]);
	}
	//Done manually instead of a switch statement because of stat 3 = speed instead of spatk
    SetMonData(&mon, MON_DATA_HP_IV, &gift.ivs[0]);
    SetMonData(&mon, MON_DATA_ATK_IV, &gift.ivs[1]);
    SetMonData(&mon, MON_DATA_DEF_IV, &gift.ivs[2]);
    SetMonData(&mon, MON_DATA_SPATK_IV, &gift.ivs[3]);
    SetMonData(&mon, MON_DATA_SPDEF_IV, &gift.ivs[4]);
    SetMonData(&mon, MON_DATA_SPEED_IV, &gift.ivs[5]);
    SetMonData(&mon, MON_DATA_HP_EV, &gift.evs[0]);
    SetMonData(&mon, MON_DATA_ATK_EV, &gift.evs[1]);
    SetMonData(&mon, MON_DATA_DEF_EV, &gift.evs[2]);
    SetMonData(&mon, MON_DATA_SPATK_EV, &gift.evs[3]);
    SetMonData(&mon, MON_DATA_SPDEF_EV, &gift.evs[4]);
    SetMonData(&mon, MON_DATA_SPEED_EV, &gift.evs[5]);

	HealMon(&mon);
	CalculateMonStats(&mon);

    Var8008 = 0xFE; //Tell GiveMonToPlayer it's a mystery gift encounter
	sentToPc = GiveMonToPlayer(&mon);

	switch (sentToPc) {
	case 0:
	case 1:
		SetMonPokedexFlags(&mon);
		break;
	}
    
    FlagSet(MYSTERY_GIFT_FLAGS_START + giftId); //Set the gift flag
    Var8004 = gPlayerPartyCount; //For nicknaming
    Var8005 = species;
    Var8006 = isShiny;

}

//showpokepic without cry & with shiny check. I don't recommend copying this, since the x & y values are hardcoded and could be buggy.

//#define gMonPaletteTable (*((struct CompressedSpritePalette**) 0x8000130))
//#define gMonShinyPaletteTable (*((struct CompressedSpritePalette**) 0x8000134))

//struct CompressedSpritePalette * GetSpritePalToUse(bool8 isShiny)
//{
//    if(isShiny)
//        return gMonShinyPaletteTable;
//    else
//        return gMonPaletteTable;
//}

//static u8 CreateMonSprite_MysteryGift(u16 species, s16 x, s16 y)
//{
//	u32 personality = 0xFFFFFFFF;
//	u32 otId = T1_READ_32(gSaveBlock2->playerTrainerId);
//   bool8 isShiny = Var8006;
//   const struct CompressedSpritePalette * spritePal = GetSpritePalToUse(isShiny);
//    u16 spriteId = CreateMonPicSprite_HandleDeoxys(species, otId, personality, 1, x, y, 0, spritePal[species].tag);
//    LoadCompressedSpritePalette(&spritePal[species]);
//    if(spriteId != 0xFFFF)
//    {
//        gSprites[spriteId].oam.paletteNum = IndexOfSpritePaletteTag(spritePal[species].tag);
//    }
//    if (spriteId == 0xFFFF)
//        return MAX_SPRITES;
//    else
//        return spriteId;
//}

//bool8 ScriptMenu_ShowMysteryPokemonPic(u16 species, u8 x, u8 y)
//{
//   u8 spriteId;
//    u8 taskId;
//    if (FindTaskIdByFunc(Task_ScriptShowMonPic) != 0xFF)
//        return FALSE;
//    spriteId = CreateMonSprite_MysteryGift(species, 8 * x + 40, 8 * y + 40);
//    taskId = CreateTask(Task_ScriptShowMonPic, 80);
//    gTasks[taskId].data[5] = CreateWindowFromRect(x, y, 8, 8);
//    gTasks[taskId].data[0] = 0;
//    gTasks[taskId].data[1] = species;
//    gTasks[taskId].data[2] = spriteId;
//    gSprites[spriteId].callback = SpriteCallbackDummy;
    // gSprites[spriteId].oam.priority = 0;
    // SetStandardWindowBorderStyle(gTasks[taskId].data[5], TRUE);
    // ScheduleBgCopyTilemapToVram(0);
    // return TRUE;
// }

// bool8 ShowMysteryGiftMon()
// {
    // u16 species = Var8005;
    // u8 x = 0xA;
    // u8 y = 0x3;

    // ScriptMenu_ShowMysteryPokemonPic(species, x, y);
    // return FALSE;
// }