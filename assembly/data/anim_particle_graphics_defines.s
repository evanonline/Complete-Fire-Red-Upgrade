/*
definitions for animation particles
*/

.equ SWORD_IMG, SwordTiles
.equ SEED_IMG, Leech_SeedTiles
.equ HORN_HIT_IMG, HornTiles
.equ SMALL_EMBER_IMG, EmbersTiles
.equ LEAF_IMG, LeavesTiles
.equ SHARP_TEETH_IMG, TeethTiles
.equ HANDS_AND_FEET_IMG, ThrashTiles
.equ ROUND_SHADOW_IMG, FlyTiles
.equ NEEDLE_IMG, NeedleTiles
.equ ROCKS_IMG, RocksTiles
.equ BATON_PASS_POKEBALL_IMG, Baton_Pass_BallTiles
.equ GREEN_STAR_IMG, Green_StarTiles
.equ HELPING_HAND_IMG, Helping_HandTiles
.equ EYE_IMG, Mean_LookTiles
.equ NAIL_IMG, Curse_NailTiles
.equ SPIKES_IMG, SpikesTiles
.equ MONSTER_DOLL_IMG, Substitute_FrontTiles

.equ WOOD_IMG, WoodTiles
.equ FLASH_CANNON_BALL_IMG, Flash_Cannon_BallTiles
.equ POISON_JAB_IMG, Poison_JabTiles
.equ POWER_GEM_IMG, Power_GemTiles
.equ SHELL_RIGHT_IMG, Shell_RightTiles
.equ SHELL_LEFT_IMG, Shell_LeftTiles
.equ RAZOR_SHELL_IMG, Razor_ShellTiles
.equ HYDRO_PUMP_IMG, Hydro_PumpTiles
.equ WATER_GUN_IMG, Water_GunTiles
.equ BRINE_IMG, BrineTiles
.equ STEALTH_ROCK_IMG, Stealth_RockTiles
.equ STONE_EDGE_IMG, Stone_EdgeTiles
.equ GEAR_IMG, GearTiles
.equ ASSURANCE_HAND_IMG, Assurance_HandTiles
.equ ACUPRESSURE_FINGER_IMG, Accupressure_FingerTiles
.equ PUNISHMENT_BLADES_IMG, PunishmentTiles
.equ BEES_IMG, BeeTiles
.equ WISHIWASHI_FISH_IMG, FishiesTiles
.equ ZYGARDE_HEXES_IMG, HexesTiles
.equ AURA_SPHERE_IMG, Aura_SphereTiles
.equ ENERGY_BALL_IMG, Energy_BallTiles
.equ MEGA_RAINBOW_IMG, Mega_Evolution_RainbowTiles
.equ MEGA_STONE_IMG, Mega_StoneTiles
.equ MEGA_SYMBOL_IMG, Mega_Evolution_SymbolTiles
.equ OMEGA_STONE_IMG, Omega_StoneTiles
.equ ALPHA_STONE_IMG, Alpha_StoneTiles
.equ BERRY_NORMAL_IMG, Berry_NormalTiles
.equ BERRY_EATEN_IMG, Berry_EatenTiles
.equ DRAGON_ASCENT_IMG, Purple_DrakeTiles @Can be changed
.equ PINK_DIAMOND_IMG, Pink_DiamondTiles
.equ STEAM_ERUPTION_IMG, Steam_EruptionTiles
.equ CONFIDE_IMG, ConfideTiles
.equ VERTICAL_HEX_IMG, ArrowsTiles
.equ POWER_TRICK_IMG, Power_TrickTiles
.equ CHAIN_LINK_IMG, Chain_LinkTiles
.equ ANCHOR_IMG, AnchorTiles
.equ HORSESHOE_SIDE_FIST_IMG, Horseshoe_HammerFistTiles
.equ DRAGON_ASCENT_FOE_IMG, Purple_DrakeTiles @Can be changed
.equ CRAFTY_SHIELD_IMG, Crafty_ShieldTiles
.equ QUICK_GUARD_HAND_IMG, Quick_GuardTiles
.equ BLACEPHALON_HEAD_IMG, Blacephalon_HeadTiles
.equ FAIRY_LOCK_CHAINS_IMG, Fairy_Lock_ChainsTiles
.equ IONS_IMG, Lightning_RainTiles
.equ CHOP_IMG, ChopTiles
.equ HEART_STAMP_IMG, Heart_StampTiles
.equ HORN_LEECH_IMG, Horn_LeechTiles
.equ STEAMROLLER_IMG, SteamrollerTiles
.equ HOOPA_HAND_IMG, Hoopa_HandTiles
.equ HOOPA_RING_IMG, Hoopa_RingTiles
.equ UNAVAILABLE_1_IMG, 0x8777777
.equ UNAVAILABLE_2_IMG, 0x8777777
.equ METAL_BITS_IMG, Metal_BitsTiles
.equ SMALL_ROCK_IMG, Rock_SmallTiles
.equ SPIRIT_ARROW_IMG, Spirit_Shackle_ArrowTiles
.equ ULTRA_BURST_SYMBOL_IMG, Necrozma_StarTiles
.equ Z_MOVE_SYMBOL_IMG, Z_Move_SymbolTiles
.equ REALLY_BIG_ROCK_IMG, Big_RockTiles
.equ COCOON_IMG, CocoonTiles
.equ CORKSCREW_IMG, DrillTiles
.equ HAVOC_SPEAR_IMG, Gigavolt_Havoc_SpearTiles
.equ PURPLE_DRAKE_IMG, Purple_DrakeTiles
.equ ABILITY_POP_UP_IMG, Ability_Pop_UpTiles
.equ MUD_BOMB_IMG, Mud_BombTiles
.equ BRANCH_IMG, BranchTiles
.equ APPLE_IMG, AppleTiles
.equ OBSTRUCT_IMG, ObstructTiles
.equ POISON_COLUMN_IMG, Poison_ColumnTiles
.equ LARGE_SPIKE_IMG, Large_SpikeTiles
.equ DRAGON_PULSE_RING_IMG, Dragon_Pulse_RingTiles
.equ STONE_PILLAR_IMG, Stone_PillarTiles
.equ MUSHROOM_IMG, MushroomTiles
.equ GOLDEN_APPLE_IMG, Golden_AppleTiles
.equ ICE_ROCK_IMG, Ice_RockTiles
.equ TORNADO_IMG, TornadoTiles
.equ STRAIGHT_BEAM_IMG, Straight_BeamTiles
.equ DREEPY_IMG, Dreepy_MissileTiles
.equ SCALE_SHOT_IMG, Scale_ShotTiles
.equ EXPANDING_FORCE_BALL_IMG, Expanding_Force_BallTiles
.equ STONE_AXE_IMG, Stone_AxeTiles
.equ WICKED_ENERGY_IMG, Wicked_EnergyTiles
.equ SURGING_ENERGY_IMG, Surging_EnergyTiles
.equ FREEZING_BEAM_IMG, Freezing_BeamTiles
.equ LASH_OUT_IMG, Lash_OutTiles
.equ MISTY_EXPLOSION_IMG, Misty_ExplosionTiles
.equ BABY_IMG, BabyTiles
.equ LEEK_IMG, LeekTiles
.equ DECORATE_IMG, DecorateTiles
.equ SNAPTRAP_IMG, SnapTrapTiles
.equ TEATIME_IMG, TeatimeTiles

@;Palettes
.equ SWORD_PAL, SwordPal
.equ SEED_PAL, Leech_SeedPal
.equ HORN_HIT_PAL, HornPal
.equ SMALL_EMBER_PAL, EmbersPal
.equ LEAF_PAL, LeavesPal
.equ SHARP_TEETH_PAL, TeethPal
.equ HANDS_AND_FEET_PAL, ThrashPal
.equ ROUND_SHADOW_PAL, FlyPal
.equ NEEDLE_PAL, NeedlePal
.equ ROCKS_PAL, RocksPal
.equ BATON_PASS_POKEBALL_PAL, Baton_Pass_BallPal
.equ GREEN_STAR_PAL, Green_StarPal
.equ HELPING_HAND_PAL, Helping_HandPal
.equ EYE_PAL, Mean_LookPal
.equ NAIL_PAL, Curse_NailPal
.equ SPIKES_PAL, SpikesPal
.equ MONSTER_DOLL_PAL, Substitute_FrontPal

.equ IMPACT_PAL, ImpactPal
.equ WOOD_PAL, WoodPal
.equ FLASH_CANNON_BALL_PAL, Flash_Cannon_BallPal
.equ POISON_JAB_PAL, Poison_JabPal
.equ POWER_GEM_PAL, Power_GemPal
.equ SHELL_RIGHT_PAL, Shell_RightPal
.equ SHELL_LEFT_PAL, Shell_RightPal
.equ RAZOR_SHELL_PAL, Razor_ShellPal
.equ HYDRO_PUMP_PAL, Hydro_PumpPal
.equ WATER_GUN_PAL, Water_GunPal
.equ BRINE_PAL, BrinePal
.equ STEALTH_ROCK_PAL, Stealth_RockPal
.equ STONE_EDGE_PAL, Stealth_RockPal
.equ GEAR_PAL, GearPal
.equ ASSURANCE_HAND_PAL, Assurance_HandPal
.equ ACUPRESSURE_FINGER_PAL, Accupressure_FingerPal
.equ PUNISHMENT_BLADES_PAL, PunishmentPal
.equ BEES_PAL, BeePal
.equ WISHIWASHI_FISH_PAL, FishiesPal
.equ ZYGARDE_HEXES_PAL, HexesPal
.equ AURA_SPHERE_PAL, Aura_SpherePal
.equ ENERGY_BALL_PAL, Energy_BallPal
.equ MEGA_RAINBOW_PAL, Mega_Evolution_RainbowPal
.equ MEGA_STONE_PAL, Mega_StonePal
.equ MEGA_SYMBOL_PAL, Mega_Evolution_SymbolPal
.equ OMEGA_STONE_PAL, Omega_StonePal
.equ ALPHA_STONE_PAL, Alpha_StonePal
.equ BERRY_NORMAL_PAL, Berry_NormalPal
.equ BERRY_EATEN_PAL, Spacial_Rend_SlicesPal
.equ DRAGON_ASCENT_PAL, Drake_GreenPal
.equ PINK_DIAMOND_PAL, Pink_DiamondPal
.equ STEAM_ERUPTION_PAL, Steam_EruptionPal
.equ CONFIDE_PAL, ConfidePal
.equ VERTICAL_HEX_PAL, Fusion_FlarePal
.equ POWER_TRICK_PAL, Power_TrickPal
.equ CHAIN_LINK_PAL, Chain_LinkPal
.equ ANCHOR_PAL, Natural_Gift_RingPal
.equ HORSESHOE_SIDE_FIST_PAL, Horseshoe_HammerFistPal
.equ DRAGON_ASCENT_FOE_PAL, Avalanche_RocksPal
.equ CRAFTY_SHIELD_PAL, Crafty_ShieldPal
.equ QUICK_GUARD_HAND_PAL, Quick_GuardPal
.equ BLACEPHALON_HEAD_PAL, Blacephalon_HeadPal
.equ FAIRY_LOCK_CHAINS_PAL, Draco_MeteorPal
.equ IONS_PAL, Lightning_RainPal
.equ CHOP_PAL, ChopPal
.equ HEART_STAMP_PAL, Heart_StampPal
.equ HORN_LEECH_PAL, Horn_LeechPal
.equ STEAMROLLER_PAL, SteamrollerPal
.equ HOOPA_HAND_PAL, Hoopa_HandPal
.equ HOOPA_RING_PAL, Hoopa_RingPal
.equ UNAVAILABLE_1_PAL, 0x8777777
.equ UNAVAILABLE_2_PAL, 0x8777777
.equ METAL_BITS_PAL, Blue_FlarePal @Also includes the metal bits
.equ SMALL_ROCK_PAL, RocksPal
.equ SPIRIT_ARROW_PAL, Spirit_Shackle_ArrowPal
.equ ULTRA_BURST_SYMBOL_PAL, Necrozma_StarPal
.equ Z_MOVE_SYMBOL_PAL, Z_Move_SymbolPal
.equ REALLY_BIG_ROCK_PAL, Big_RockPal
.equ COCOON_PAL, CocoonPal
.equ CORKSCREW_PAL, DrillPal
.equ HAVOC_SPEAR_PAL, Gigavolt_Havoc_SpearPal
.equ PURPLE_DRAKE_PAL, Purple_DrakePal
.equ ABILITY_POP_UP_PAL, Ability_Pop_UpPal
.equ MUD_BOMB_PAL, Mud_BombPal
.equ BRANCH_PAL, BranchPal
.equ APPLE_PAL, ApplePal
.equ OBSTRUCT_PAL, ObstructPal
.equ POISON_COLUMN_PAL, Poison_ColumnPal
.equ GARBAGE_COLUMN_PAL, Garbage_Poison_ColumnPal
.equ LARGE_SPIKE_PAL, Large_SpikePal
.equ DRAGON_PULSE_RING_PAL, Dragon_Pulse_RingPal
.equ STONE_PILLAR_PAL, Stone_PillarPal
.equ MUSHROOM_PAL, MushroomPal
.equ GOLDEN_APPLE_PAL, Golden_ApplePal
.equ ICE_ROCK_PAL, Ice_RockPal
.equ TORNADO_PAL, TornadoPal
.equ STRAIGHT_BEAM_PAL, Straight_BeamPal
.equ DREEPY_PAL, Dreepy_MissilePal
.equ SCALE_SHOT_PAL, Scale_ShotPal
.equ EXPANDING_FORCE_BALL_PAL, Expanding_Force_BallPal
.equ STONE_AXE_PAL, Stone_AxePal
.equ WICKED_ENERGY_PAL, Wicked_EnergyPal
.equ SURGING_ENERGY_PAL, Surging_EnergyPal
.equ FREEZING_BEAM_PAL, Freezing_BeamPal
.equ LASH_OUT_PAL, Lash_OutPal
.equ MISTY_EXPLOSION_PAL, Misty_ExplosionPal
.equ BABY_PAL, BabyPal
.equ LEEK_PAL, LeekPal
.equ DECORATE_PAL, DecoratePal
.equ SNAPTRAP_PAL, SnapTrapPal
.equ TEATIME_PAL, TeatimePal
