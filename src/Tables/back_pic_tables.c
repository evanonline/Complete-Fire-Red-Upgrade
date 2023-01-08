#include "../defines.h"
#include "../../include/data2.h"
#include "../../include/sprite.h"
#include "../../include/constants/trainers.h"
/*
back_pic_tables.c
	Set up tables to switch the player's back sprite

tables to edit:
	gTrainerBackPicPaletteTable
	gTrainerBackAnimsPtrTable
	gTrainerBackPicCoords
	sTrainerBackPicTable_[backsprite]
	gSpriteTemplateTable_TrainerBackSprites
*/

#define gTrainerBackPicPalette_Red (const u8*) 0x8E76EBC
//#define gTrainerBackPicPalette_Leaf (const u8*) 0x8E76EE4
//#define gTrainerPalette_Brendan (const u8*) 0x8E550A4
//#define gTrainerPalette_May (const u8*) 0x8E553CC
//#define gTrainerPalette_PokeDude (const u8*) 0x8E76F0C
//#define gTrainerPalette_OldMan (const u8*) 0x8E76F34

extern const u8 gTrainerBackPic_Protag2SherryPal[];
#define gTrainerPalette_Protag2Sherry gTrainerBackPic_Protag2SherryPal
extern const u8 gTrainerBackPic_BrendanORASPal[];
#define gTrainerPalette_BrendanORAS gTrainerBackPic_BrendanORASPal
extern const u8 gTrainerBackPic_MayORASPal[];
#define gTrainerPalette_MayORAS gTrainerBackPic_MayORASPal
extern const u8 gTrainerBackPic_MayRSPal[];
#define gTrainerPalette_MayRS gTrainerBackPic_MayRSPal
extern const u8 gTrainerBackPic_MayEmPal[];
#define gTrainerPalette_MayEm gTrainerBackPic_MayEmPal
extern const u8 gTrainerBackPic_PrimoPal[];
#define gTrainerPalette_Primo gTrainerBackPic_PrimoPal
extern const u8 gTrainerBackPic_OldManPal[];
#define gTrainerPalette_OldMan gTrainerBackPic_OldManPal
extern const u8 gTrainerBackPic_MarleyPal[];
#define gTrainerPalette_Marley gTrainerBackPic_MarleyPal

extern const u8 gTrainerBackPic_MarlonPal[];
#define gTrainerPalette_Marlon gTrainerBackPic_MarlonPal
extern const u8 gTrainerBackPic_PokeKidPal[];
#define gTrainerPalette_PokeKid gTrainerBackPic_PokeKidPal
extern const u8 gTrainerBackPic_RivalPal[];
#define gTrainerPalette_Rival gTrainerBackPic_RivalPal
extern const u8 gTrainerBackPic_JaxPal[];
#define gTrainerPalette_Jax gTrainerBackPic_JaxPal
extern const u8 gTrainerBackPic_RedNewPal[];
#define gTrainerPalette_RedNew gTrainerBackPic_RedNewPal
extern const u8 gTrainerBackPic_CatherinePal[];
#define gTrainerPalette_Catherine gTrainerBackPic_CatherinePal
extern const u8 gTrainerBackPic_GingerPal[];
#define gTrainerPalette_Ginger gTrainerBackPic_GingerPal
extern const u8 gTrainerBackPic_AbimbolaPal[];
#define gTrainerPalette_Abimbola gTrainerBackPic_AbimbolaPal
extern const u8 gTrainerBackPic_MahinaPal[];
#define gTrainerPalette_Mahina gTrainerBackPic_MahinaPal
extern const u8 gTrainerBackPic_AlfordPal[];
#define gTrainerPalette_Alford gTrainerBackPic_AlfordPal
extern const u8 gTrainerBackPic_TessyPal[];
#define gTrainerPalette_Tessy gTrainerBackPic_TessyPal


const struct CompressedSpritePalette gTrainerBackPicPaletteTable[] =
{
	[TRAINER_BACK_PIC_RED] =		{gTrainerBackPicPalette_Red, 	TRAINER_BACK_PIC_RED},
	[TRAINER_BACK_PIC_SHERRY] =		{gTrainerPalette_Protag2Sherry, TRAINER_BACK_PIC_SHERRY},
	[TRAINER_BACK_PIC_BRENDAN] =	{gTrainerPalette_BrendanORAS, 	TRAINER_BACK_PIC_BRENDAN},
	[TRAINER_BACK_PIC_MAY_ORAS] =	{gTrainerPalette_MayORAS, 		TRAINER_BACK_PIC_MAY_ORAS},
	[TRAINER_BACK_PIC_MAY_RS] =		{gTrainerPalette_MayRS, 		TRAINER_BACK_PIC_MAY_RS},
	[TRAINER_BACK_PIC_MAY_EM] =		{gTrainerPalette_MayEm, 		TRAINER_BACK_PIC_MAY_EM},
	[TRAINER_BACK_PIC_PRIMO] =		{gTrainerPalette_Primo, 		TRAINER_BACK_PIC_PRIMO},
	[TRAINER_BACK_PIC_OLD_MAN] =	{gTrainerPalette_OldMan, 		TRAINER_BACK_PIC_OLD_MAN},
	[TRAINER_BACK_PIC_MARLEY] =		{gTrainerPalette_Marley,		TRAINER_BACK_PIC_MARLEY},


#ifdef UNBOUND //For Pokemon Unbound
	[TRAINER_BACK_PIC_MARLON] =		{gTrainerPalette_Marlon, 		TRAINER_BACK_PIC_MARLON},
	[TRAINER_BACK_PIC_POKE_KID] =	{gTrainerPalette_PokeKid, 		TRAINER_BACK_PIC_POKE_KID},
	[TRAINER_BACK_PIC_RIVAL] =		{gTrainerPalette_Rival, 		TRAINER_BACK_PIC_RIVAL},
	[TRAINER_BACK_PIC_JAX] =		{gTrainerPalette_Jax, 			TRAINER_BACK_PIC_JAX},
	[TRAINER_BACK_PIC_RED_NEW] =	{gTrainerPalette_RedNew, 		TRAINER_BACK_PIC_RED_NEW},
	[TRAINER_BACK_PIC_CATHERINE] =	{gTrainerPalette_Catherine, 	TRAINER_BACK_PIC_CATHERINE},
	[TRAINER_BACK_PIC_GINGER] =		{gTrainerPalette_Ginger, 		TRAINER_BACK_PIC_GINGER},
	[TRAINER_BACK_PIC_ABIMBOLA] =	{gTrainerPalette_Abimbola, 		TRAINER_BACK_PIC_ABIMBOLA},
	[TRAINER_BACK_PIC_MAHINA] =		{gTrainerPalette_Mahina, 		TRAINER_BACK_PIC_MAHINA},
	[TRAINER_BACK_PIC_ALFORD] =		{gTrainerPalette_Alford, 		TRAINER_BACK_PIC_ALFORD},
	[TRAINER_BACK_PIC_TESSY] = 		{gTrainerPalette_Tessy, 		TRAINER_BACK_PIC_TESSY},
#endif
};

#define gTrainerBackAnims_Red (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_Protag2Sherry (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_BrendanORAS (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_MayORAS (const union AnimCmd* const*) 0x8239F54
#define gTrainerBackAnims_MayRS (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_MayEm (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_Primo (const union AnimCmd* const*) 0x8239F54
#define gTrainerBackAnims_OldMan (const union AnimCmd* const*) 0x8239F54

#define gTrainerBackAnims_Marlon (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_PokeKid (const union AnimCmd* const*)0x8239F54
#define gTrainerBackAnims_Rival (const union AnimCmd* const*) 0x8239F54
#define gTrainerBackAnims_Jax (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_RedNew (const union AnimCmd* const*) 0x8239F54
#define gTrainerBackAnims_Catherine (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_Ginger (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_Abimbola (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_Mahina (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_Alford (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_Tessy (const union AnimCmd* const*) 0x8239F44
#define gTrainerBackAnims_Marley (const union AnimCmd* const*) 0x8239F44

const union AnimCmd* const* const gTrainerBackAnimsPtrTable[] =
{
	[TRAINER_BACK_PIC_RED] = gTrainerBackAnims_Red,
	[TRAINER_BACK_PIC_SHERRY] = gTrainerBackAnims_Protag2Sherry,
	[TRAINER_BACK_PIC_BRENDAN] = gTrainerBackAnims_BrendanORAS,
	[TRAINER_BACK_PIC_MAY_ORAS] = gTrainerBackAnims_MayORAS,
	[TRAINER_BACK_PIC_MAY_RS] = gTrainerBackAnims_MayRS,
	[TRAINER_BACK_PIC_MAY_EM] = gTrainerBackAnims_MayEm,
	[TRAINER_BACK_PIC_PRIMO] = gTrainerBackAnims_Primo,
	[TRAINER_BACK_PIC_OLD_MAN] = gTrainerBackAnims_OldMan,
	[TRAINER_BACK_PIC_MARLEY] = gTrainerBackAnims_Marley,

#ifdef UNBOUND
	[TRAINER_BACK_PIC_MARLON] = gTrainerBackAnims_Marlon,
	[TRAINER_BACK_PIC_POKE_KID] = gTrainerBackAnims_PokeKid,
	[TRAINER_BACK_PIC_RIVAL] = gTrainerBackAnims_Rival,
	[TRAINER_BACK_PIC_JAX] = gTrainerBackAnims_Jax,
	[TRAINER_BACK_PIC_RED_NEW] = gTrainerBackAnims_RedNew,
	[TRAINER_BACK_PIC_CATHERINE] = gTrainerBackAnims_Catherine,
	[TRAINER_BACK_PIC_GINGER] = gTrainerBackAnims_Ginger,
	[TRAINER_BACK_PIC_ABIMBOLA] = gTrainerBackAnims_Abimbola,
	[TRAINER_BACK_PIC_MAHINA] = gTrainerBackAnims_Mahina,
	[TRAINER_BACK_PIC_ALFORD] = gTrainerBackAnims_Alford,
	[TRAINER_BACK_PIC_TESSY] =	gTrainerBackAnims_Tessy,
#endif
};

const struct MonCoords gTrainerBackPicCoords[] =
{
	[TRAINER_BACK_PIC_RED] = 		{.coords = 8, .y_offset = 5},
	[TRAINER_BACK_PIC_SHERRY] = 	{.coords = 8, .y_offset = 5},
	[TRAINER_BACK_PIC_BRENDAN] = 	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_MAY_ORAS] = 	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_MAY_RS] = 	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_MAY_EM] = 	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_PRIMO] = 	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_OLD_MAN] = 	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_MARLEY] = 	{.coords = 8, .y_offset = 4},

#ifdef UNBOUND
	[TRAINER_BACK_PIC_MARLON] = 	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_POKE_KID] = 	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_RIVAL] = 		{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_JAX] = 		{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_RED_NEW] =	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_CATHERINE] = 	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_GINGER] =		{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_ABIMBOLA] =	{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_MAHINA] =		{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_ALFORD] =		{.coords = 8, .y_offset = 4},
	[TRAINER_BACK_PIC_TESSY] =		{.coords = 8, .y_offset = 4},
#endif
};

#define gOamData_TrainerBacksprite (void*) 0x824F018
#define gAffineAnims_TrainerBacksprite (void*) 0x82348C8
#define gSpriteCB_TrainerBacksprite (void*) (0x80120C4 | 1)

#define gTrainerBackPicTable_Red (void*) 0x8234718
#define gTrainerBackPicTable_Leaf (void*) 0x8234740
//#define gTrainerBackPicTable_Brendan (void*) 0x82347A8
//#define gTrainerBackPicTable_May (void*) 0x82347C8
//#define gTrainerBackPicTable_PokeDude (void*) 0x8234768
//#define gTrainerBackPicTable_OldMan (void*) 0x8234788

extern const u8 gTrainerBackPic_Protag2SherryTiles[];
extern const u8 gTrainerBackPic_BrendanORASTiles[];
extern const u8 gTrainerBackPic_MayORASTiles[];
extern const u8 gTrainerBackPic_MayRSTiles[];
extern const u8 gTrainerBackPic_MayEmTiles[];
extern const u8 gTrainerBackPic_PrimoTiles[];
extern const u8 gTrainerBackPic_OldManTiles[];
extern const u8 gTrainerBackPic_MarleyTiles[];

extern const u8 gTrainerBackPic_MarlonTiles[];
extern const u8 gTrainerBackPic_PokeKidTiles[];
extern const u8 gTrainerBackPic_RivalTiles[];
extern const u8 gTrainerBackPic_JaxTiles[];
extern const u8 gTrainerBackPic_RedNewTiles[];
extern const u8 gTrainerBackPic_CatherineTiles[];
extern const u8 gTrainerBackPic_GingerTiles[];
extern const u8 gTrainerBackPic_AbimbolaTiles[];
extern const u8 gTrainerBackPic_MahinaTiles[];
extern const u8 gTrainerBackPic_AlfordTiles[];
extern const u8 gTrainerBackPic_TessyTiles[];

static const struct SpriteFrameImage gTrainerBackPicTable_Protag2Sherry[] =
{
	{gTrainerBackPic_Protag2SherryTiles,  			0x800, 0},
	{gTrainerBackPic_Protag2SherryTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_Protag2SherryTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_Protag2SherryTiles + 0x1800, 	0x800, 0},
	{gTrainerBackPic_Protag2SherryTiles + 0x2000, 	0x800, 0},
};

static const struct SpriteFrameImage gTrainerBackPicTable_BrendanORAS[] =
{
	{gTrainerBackPic_BrendanORASTiles, 			0x800, 0},
	{gTrainerBackPic_BrendanORASTiles + 0x0800, 0x800, 0},
	{gTrainerBackPic_BrendanORASTiles + 0x1000, 0x800, 0},
	{gTrainerBackPic_BrendanORASTiles + 0x1800, 0x800, 0},
	{gTrainerBackPic_BrendanORASTiles + 0x2000, 0x800, 0},
};

static const struct SpriteFrameImage gTrainerBackPicTable_MayORAS[] =
{
	{gTrainerBackPic_MayORASTiles, 				0x800, 0},
	{gTrainerBackPic_MayORASTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_MayORASTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_MayORASTiles + 0x1800, 	0x800, 0},
};

static const struct SpriteFrameImage gTrainerBackPicTable_MayRS[] =
{
	{gTrainerBackPic_MayRSTiles, 			0x800, 0},
	{gTrainerBackPic_MayRSTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_MayRSTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_MayRSTiles + 0x1800, 	0x800, 0},
	{gTrainerBackPic_MayRSTiles + 0x2000, 	0x800, 0},
};

static const struct SpriteFrameImage gTrainerBackPicTable_MayEm[] =
{
	{gTrainerBackPic_MayEmTiles, 			0x800, 0},
	{gTrainerBackPic_MayEmTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_MayEmTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_MayEmTiles + 0x1800, 	0x800, 0},
	{gTrainerBackPic_MayEmTiles + 0x2000, 	0x800, 0},
};

static const struct SpriteFrameImage gTrainerBackPicTable_Primo[] =
{
	{gTrainerBackPic_PrimoTiles, 			0x800, 0},
	{gTrainerBackPic_PrimoTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_PrimoTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_PrimoTiles + 0x1800, 	0x800, 0},
};

static const struct SpriteFrameImage gTrainerBackPicTable_OldMan[] =
{
	{gTrainerBackPic_OldManTiles, 			0x800, 0},
	{gTrainerBackPic_OldManTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_OldManTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_OldManTiles + 0x1800, 	0x800, 0},
};

static const struct SpriteFrameImage gTrainerBackPicTable_Marley[] =
{
	{gTrainerBackPic_MarleyTiles, 			0x800, 0},
	{gTrainerBackPic_MarleyTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_MarleyTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_MarleyTiles + 0x1800, 	0x800, 0},
	{gTrainerBackPic_MarleyTiles + 0x2000, 	0x800, 0},
};

#ifdef UNBOUND

static const struct SpriteFrameImage sTrainerBackPicTable_Marlon[] =
{
	{gTrainerBackPic_MarlonTiles, 			0x800, 0},
	{gTrainerBackPic_MarlonTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_MarlonTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_MarlonTiles + 0x1800, 	0x800, 0},
	{gTrainerBackPic_MarlonTiles + 0x2000, 	0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_PokeKid[] =
{
	{gTrainerBackPic_PokeKidTiles, 			0x800, 0},
	{gTrainerBackPic_PokeKidTiles + 0x0800, 0x800, 0},
	{gTrainerBackPic_PokeKidTiles + 0x1000, 0x800, 0},
	{gTrainerBackPic_PokeKidTiles + 0x1800, 0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_Rival[] =
{
	{gTrainerBackPic_RivalTiles, 			0x800, 0},
	{gTrainerBackPic_RivalTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_RivalTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_RivalTiles + 0x1800, 	0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_Jax[] =
{
	{gTrainerBackPic_JaxTiles, 				0x800, 0},
	{gTrainerBackPic_JaxTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_JaxTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_JaxTiles + 0x1800, 	0x800, 0},
	{gTrainerBackPic_JaxTiles + 0x2000, 	0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_RedNew[] =
{
	{gTrainerBackPic_RedNewTiles, 			0x800, 0},
	{gTrainerBackPic_RedNewTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_RedNewTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_RedNewTiles + 0x1800, 	0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_Catherine[] =
{
	{gTrainerBackPic_CatherineTiles, 			0x800, 0},
	{gTrainerBackPic_CatherineTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_CatherineTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_CatherineTiles + 0x1800, 	0x800, 0},
	{gTrainerBackPic_CatherineTiles + 0x2000, 	0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_Ginger[] =
{
	{gTrainerBackPic_GingerTiles, 			0x800, 0},
	{gTrainerBackPic_GingerTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_GingerTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_GingerTiles + 0x1800, 	0x800, 0},
	{gTrainerBackPic_GingerTiles + 0x2000, 	0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_Abimbola[] =
{
	{gTrainerBackPic_AbimbolaTiles,				0x800, 0},
	{gTrainerBackPic_AbimbolaTiles + 0x0800,	0x800, 0},
	{gTrainerBackPic_AbimbolaTiles + 0x1000,	0x800, 0},
	{gTrainerBackPic_AbimbolaTiles + 0x1800,	0x800, 0},
	{gTrainerBackPic_AbimbolaTiles + 0x2000,	0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_Mahina[] =
{
	{gTrainerBackPic_MahinaTiles,			0x800, 0},
	{gTrainerBackPic_MahinaTiles + 0x0800,	0x800, 0},
	{gTrainerBackPic_MahinaTiles + 0x1000,	0x800, 0},
	{gTrainerBackPic_MahinaTiles + 0x1800,	0x800, 0},
	{gTrainerBackPic_MahinaTiles + 0x2000,	0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_Alford[] =
{
	{gTrainerBackPic_AlfordTiles, 			0x800, 0},
	{gTrainerBackPic_AlfordTiles + 0x0800,	0x800, 0},
	{gTrainerBackPic_AlfordTiles + 0x1000,	0x800, 0},
	{gTrainerBackPic_AlfordTiles + 0x1800,	0x800, 0},
	{gTrainerBackPic_AlfordTiles + 0x2000,	0x800, 0},
};

static const struct SpriteFrameImage sTrainerBackPicTable_Tessy[] =
{
	{gTrainerBackPic_TessyTiles, 			0x800, 0},
	{gTrainerBackPic_TessyTiles + 0x0800, 	0x800, 0},
	{gTrainerBackPic_TessyTiles + 0x1000, 	0x800, 0},
	{gTrainerBackPic_TessyTiles + 0x1800, 	0x800, 0},
	{gTrainerBackPic_TessyTiles + 0x2000, 	0x800, 0},
};

#endif

const struct SpriteTemplate gSpriteTemplateTable_TrainerBackSprites[] =
{
	[TRAINER_BACK_PIC_RED] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = gTrainerBackPicTable_Red,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_SHERRY] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = gTrainerBackPicTable_Protag2Sherry,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_BRENDAN] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = gTrainerBackPicTable_BrendanORAS,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_MAY_ORAS] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = gTrainerBackPicTable_MayORAS,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_MAY_RS] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = gTrainerBackPicTable_MayRS,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_MAY_EM] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = gTrainerBackPicTable_MayEm,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_PRIMO] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = gTrainerBackPicTable_Primo,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_OLD_MAN] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = gTrainerBackPicTable_OldMan,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_MARLEY] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = gTrainerBackPicTable_Marley,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},


#ifdef UNBOUND
	[TRAINER_BACK_PIC_MARLON] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_Marlon,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_POKE_KID] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_PokeKid,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_RIVAL] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_Rival,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_JAX] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_Jax,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_RED_NEW] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_RedNew,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_CATHERINE] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_Catherine,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_GINGER] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_Ginger,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_ABIMBOLA] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_Abimbola,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_MAHINA] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_Mahina,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_ALFORD] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_Alford,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
	[TRAINER_BACK_PIC_TESSY] =
	{
		.tileTag = 0xFFFF,
		.paletteTag = 0,
		.oam = gOamData_TrainerBacksprite,
		.anims = NULL,
		.images = sTrainerBackPicTable_Tessy,
		.affineAnims = gAffineAnims_TrainerBacksprite,
		.callback = gSpriteCB_TrainerBacksprite,
	},
#endif
};
