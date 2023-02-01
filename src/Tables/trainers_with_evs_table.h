#ifdef TRAINERS_WITH_EVS
/*
trainers_with_evs_table.h
	defining the EV/IV/ability/ball type to be assigned to trainer pokemon
*/

const struct TrainersWithEvs gTrainersWithEvsSpreads[] =
{
	[0] = {0}, //Empty Spread
	[1] =
	{ //Physical Sweeper: Power Based
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[2] =
	{ //Physical Sweeper: Speed Based
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[3] =
	{ //Special Sweeper: Power Based
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[4] =
	{ //Special Sweeper: Speed Based
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[5] =
	{ //Bulky Physical Attacker 
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spdEv = 6,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[6] =
	{ //Bulky Physical Attacker 
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[7] =
	{ //Bulky Physical Attacker 
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[8] =
	{ //Bulky Special Attacker 
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 6,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[9] =
	{ //Bulky Special Attacker 
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.defEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[10] =
	{ //Bulky Special Attacker 
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spAtkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[11] =
	{ //Physical Wall 
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[12] =
	{ //Physical Wall 
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[13] =
	{ //Special Wall: Less Attack
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[14] =
	{ //Special Wall: Less Special Attack
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[15] =
	{ //Mixed Attacker: Attack Based, Less Defense
		.nature = NATURE_LONELY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[16] =
	{ //Mixed Attacker: Attack Based, Less Sp. Defense
		.nature = NATURE_NAUGHTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[17] =
	{ //Mixed Attacker: Sp. Attack Based, Less Defense
		.nature = NATURE_MILD,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[18] =
	{ //Mixed Attacker: Sp. Attack Based, Less Sp. Defense
		.nature = NATURE_RASH,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[19] =
	{ //Mixed Attacker: Speed Based, Less Defense
		.nature = NATURE_HASTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[20] =
	{ //Mixed Attacker: Speed Based, Less Sp. Defense
		.nature = NATURE_NAIVE,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[21] =
	{ //Mixed Wall: Defense Based, Less Attack
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[22] =
	{ //Mixed Wall: Defense Based, Less Sp. Attack
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[23] =
	{ //Mixed Wall: Sp. Defense Based, Less Attack
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[24] =
	{ //Mixed Wall: Sp. Defense Based, Less Sp. Attack
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[25] =
	{ //Fast Wall: HP Based, Less Attack
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 252,
		.spAtkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[26] =
	{ //Fast Wall: HP Based, Less Sp. Attack
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 4,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[27] =
	{ //Fast Wall: Defense Based, Less Attack
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[28] =
	{ //Fast Wall: Defense Based, Less Sp. Attack
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[29] =
	{ //Fast Wall: Sp. Defense Based, Less Attack
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[30] =
	{ //Fast Wall: Sp. Defense Based, Less Sp. Attack
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[31] =
	{ //Physical Sweeper: Power Based - Ability_1
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[32] =
	{ //Physical Sweeper: Speed Based - Ability_1
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[33] =
	{ //Special Sweeper: Power Based - Ability_1
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[34] =
	{ //Special Sweeper: Speed Based - Ability_1
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[35] =
	{ //Bulky Physical Attacker - Ability_1
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spdEv = 6,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[36] =
	{ //Bulky Physical Attacker - Ability_1
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[37] =
	{ //Bulky Physical Attacker - Ability_1
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[38] =
	{ //Bulky Special Attacker - Ability_1
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 6,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[39] =
	{ //Bulky Special Attacker - Ability_1
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.defEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[40] =
	{ //Bulky Special Attacker - Ability_1
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spAtkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[41] =
	{ //Physical Wall - Ability_1
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[42] =
	{ //Physical Wall - Ability_1
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[43] =
	{ //Special Wall - Ability_1
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[44] =
	{ //Special Wall - Ability_1
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[45] =
	{ //Mixed Attacker: Attack Based, Less Defense - Ability_1
		.nature = NATURE_LONELY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[46] =
	{ //Mixed Attacker: Attack Based, Less Sp. Defense - Ability_1
		.nature = NATURE_NAUGHTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[47] =
	{ //Mixed Attacker: Sp. Attack Based, Less Defense - Ability_1
		.nature = NATURE_MILD,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[48] =
	{ //Mixed Attacker: Sp. Attack Based, Less Sp. Defense - Ability_1
		.nature = NATURE_RASH,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[49] =
	{ //Mixed Attacker: Speed Based, Less Defense - Ability_1
		.nature = NATURE_HASTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[50] =
	{ //Mixed Attacker: Speed Based, Less Sp. Defense - Ability_1
		.nature = NATURE_NAIVE,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[51] =
	{ //Mixed Wall: Defense Based, Less Attack - Ability_1
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[52] =
	{ //Mixed Wall: Defense Based, Less Sp. Attack - Ability_1
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[53] =
	{ //Mixed Wall: Sp. Defense Based, Less Attack - Ability_1
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[54] =
	{ //Mixed Wall: Sp. Defense Based, Less Sp. Attack - Ability_1
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[55] =
	{ //Fast Wall: HP Based, Less Attack - Ability_1
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 252,
		.spAtkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[56] =
	{ //Fast Wall: HP Based, Less Sp. Attack - Ability_1
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 4,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[57] =
	{ //Fast Wall: Defense Based, Less Attack - Ability_1
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[58] =
	{ //Fast Wall: Defense Based, Less Sp. Attack - Ability_1
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[59] =
	{ //Fast Wall: Sp. Defense Based, Less Attack - Ability_1
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[60] =
	{ //Fast Wall: Sp. Defense Based, Less Sp. Attack - Ability_1
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[61] =
	{ //Physical Sweeper: Power Based - Ability_2
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[62] =
	{ //Physical Sweeper: Speed Based - Ability_2
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[63] =
	{ //Special Sweeper: Power Based - Ability_2
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[64] =
	{ //Special Sweeper: Speed Based - Ability_2
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[65] =
	{ //Bulky Physical Attacker - Ability_2
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spdEv = 6,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[66] =
	{ //Bulky Physical Attacker - Ability_2
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[67] =
	{ //Bulky Physical Attacker - Ability_2
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[68] =
	{ //Bulky Special Attacker - Ability_2
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 6,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[69] =
	{ //Bulky Special Attacker - Ability_2
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.defEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[70] =
	{ //Bulky Special Attacker - Ability_2
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spAtkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[71] =
	{ //Physical Wall - Ability_2
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[72] =
	{ //Physical Wall - Ability_2
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[73] =
	{ //Special Wall - Ability_2
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[74] =
	{ //Special Wall - Ability_2
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[75] =
	{ //Mixed Attacker: Attack Based, Less Defense - Ability_2
		.nature = NATURE_LONELY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[76] =
	{ //Mixed Attacker: Attack Based, Less Sp. Defense - Ability_2
		.nature = NATURE_NAUGHTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[77] =
	{ //Mixed Attacker: Sp. Attack Based, Less Defense - Ability_2
		.nature = NATURE_MILD,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[78] =
	{ //Mixed Attacker: Sp. Attack Based, Less Sp. Defense - Ability_2
		.nature = NATURE_RASH,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[79] =
	{ //Mixed Attacker: Speed Based, Less Defense - Ability_2
		.nature = NATURE_HASTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[80] =
	{ //Mixed Attacker: Speed Based, Less Sp. Defense - Ability_2
		.nature = NATURE_NAIVE,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[81] =
	{ //Mixed Wall: Defense Based, Less Attack - Ability_2
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[82] =
	{ //Mixed Wall: Defense Based, Less Sp. Attack - Ability_2
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[83] =
	{ //Mixed Wall: Sp. Defense Based, Less Attack - Ability_2
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[84] =
	{ //Mixed Wall: Sp. Defense Based, Less Sp. Attack - Ability_2
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[85] =
	{ //Fast Wall: HP Based, Less Attack - Ability_2
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 252,
		.spAtkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[86] =
	{ //Fast Wall: HP Based, Less Sp. Attack - Ability_2
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 4,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[87] =
	{ //Fast Wall: Defense Based, Less Attack - Ability_2
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[88] =
	{ //Fast Wall: Defense Based, Less Sp. Attack - Ability_2
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[89] =
	{ //Fast Wall: Sp. Defense Based, Less Attack - Ability_2
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[90] =
	{ //Fast Wall: Sp. Defense Based, Less Sp. Attack - Ability_2
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[91] =
	{ //Physical Sweeper: Power Based - Ability_Hidden
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[92] =
	{ //Physical Sweeper: Speed Based - Ability_Hidden
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[93] =
	{ //Special Sweeper: Power Based - Ability_Hidden
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[94] =
	{ //Special Sweeper: Speed Based - Ability_Hidden
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[95] =
	{ //Bulky Physical Attacker - Ability_Hidden
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spdEv = 6,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[96] =
	{ //Bulky Physical Attacker - Ability_Hidden
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[97] =
	{ //Bulky Physical Attacker - Ability_Hidden
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[98] =
	{ //Bulky Special Attacker - Ability_Hidden
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 6,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[99] =
	{ //Bulky Special Attacker - Ability_Hidden
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.defEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[100] =
	{ //Bulky Special Attacker - Ability_Hidden
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spAtkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[101] =
	{ //Physical Wall - Ability_Hidden
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[102] =
	{ //Physical Wall - Ability_Hidden
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[103] =
	{ //Special Wall - Ability_Hidden
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[104] =
	{ //Special Wall - Ability_Hidden
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[105] =
	{ //Mixed Attacker: Attack Based, Less Defense - Ability_Hidden
		.nature = NATURE_LONELY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[106] =
	{ //Mixed Attacker: Attack Based, Less Sp. Defense - Ability_Hidden
		.nature = NATURE_NAUGHTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[107] =
	{ //Mixed Attacker: Sp. Attack Based, Less Defense - Ability_Hidden
		.nature = NATURE_MILD,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[108] =
	{ //Mixed Attacker: Sp. Attack Based, Less Sp. Defense - Ability_Hidden
		.nature = NATURE_RASH,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[109] =
	{ //Mixed Attacker: Speed Based, Less Defense - Ability_Hidden
		.nature = NATURE_HASTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[110] =
	{ //Mixed Attacker: Speed Based, Less Sp. Defense - Ability_Hidden
		.nature = NATURE_NAIVE,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[111] =
	{ //Mixed Wall: Defense Based, Less Attack - Ability_Hidden
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[112] =
	{ //Mixed Wall: Defense Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[113] =
	{ //Mixed Wall: Sp. Defense Based, Less Attack - Ability_Hidden
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[114] =
	{ //Mixed Wall: Sp. Defense Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[115] =
	{ //Fast Wall: HP Based, Less Attack - Ability_Hidden
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 252,
		.spAtkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[116] =
	{ //Fast Wall: HP Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 4,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[117] =
	{ //Fast Wall: Defense Based, Less Attack - Ability_Hidden
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[118] =
	{ //Fast Wall: Defense Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[119] =
	{ //Fast Wall: Sp. Defense Based, Less Attack - Ability_Hidden
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[120] =
	{ //Fast Wall: Sp. Defense Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
};
#endif

#ifndef UNBOUND //Modify this
const u8 gBaseIVsByTrainerClass[NUM_TRAINER_CLASSES] =
{
	[CLASS_PKMN_TRAINER] = 29,
	[CLASS_RIVAL] = 25,
	[CLASS_AMBASSADOR] = 9,
	[CLASS_VIKING] = 24,
	[CLASS_BOOKWORM] =	24,
	[CLASS_TUBER] =	5,
	[CLASS_JANITOR] = 11,
	[CLASS_COOLTRAINER] = 31,
	[CLASS_HEX_MANIAC] = 15,
	[CLASS_JUNIOR_HEXER] = 5,
	[CLASS_BACKPACKER] = 14,
	[CLASS_CLOWN] =	9,
	[CLASS_HOOPSTER] =	5,
	[CLASS_INFIELDER] =	7,
	[CLASS_PITCHER_SLUGGER] = 18,
	[CLASS_GUITARIST] = 10,
	[CLASS_KINDLER] = 10,
	[CLASS_BUG_MANIAC] = 10,
	[CLASS_WARRIOR_GAL] = 29,
	[CLASS_FUN_OLD_MAN] = 10,
	[CLASS_ENCHANTED_BOY] = 22,
	[CLASS_KALOS_LEADER] = 31,
	[CLASS_JOHTO_LEADER] = 31,
	[CLASS_SCHOOLKID] = 20,
	[CLASS_TEAMMATES] = 10,
	[CLASS_RAIL_STAFF] = 10,
	[CLASS_POKEFAN] = 12,
	[CLASS_EXPERT] = 20,
	[CLASS_OLDSTER] = 20,
	[CLASS_YOUNGSTER] = 5,
	[CLASS_FOREIGN_CHAMP] = 31,
	[CLASS_NURSE] = 5,
	[CLASS_CYCLIST] = 14,
	[CLASS_TRIATHLETE] = 15,
	[CLASS_BIRD_KEEPER] = 11,
	[CLASS_KUNOICHI] = 11,
	[CLASS_LAB_INTERN] = 26,
	[CLASS_PARASOL_LADY] = 13,
	[CLASS_FUNNY_AUNT] = 31,
	[CLASS_RANGER_CHIEF] = 24,
	[CLASS_LOREKEEPER] = 31,
	[CLASS_FITNESS_MANIAC] = 31,
	[CLASS_GARCHOMP] = 31,
	[CLASS_ALOLAN_TRAVELER] = 31,
	[CLASS_GALAR_LEADER] = 31,
	[CLASS_GENIUS_KID] = 31,
	[CLASS_BROKEN_PRODIGY] = 31,
	[CLASS_KALOS_ELITE] = 31,
	[CLASS_POKE_KID] = 1,
	[CLASS_BAKER] =	5,
	[CLASS_IMPOSTOR] = 10,
	[CLASS_ROCKET_DUO] = 31,
	[CLASS_ROCKET_ADMIN] = 29,
	[CLASS_HOENN_LEADER] = 31,
	[CLASS_UNOVA_LEADER] = 31,
	[CLASS_SINNOH_LEADER] = 31,
    [CLASS_HOENN_ELITE] = 31,
    [CLASS_BUG_CATCHER] = 4,
    [CLASS_LASS] = 4,
    [CLASS_SAILOR] = 14,
    [CLASS_CAMPER] = 5,
    [CLASS_PICNICKER] = 5,
    [CLASS_POKE_MANIAC] = 25,
    [CLASS_SUPER_NERD] = 25,
    [CLASS_HIKER] = 17,
	[CLASS_OPERATING_BUDDIES] = 29,
	[CLASS_BURGLAR] = 10,
	[CLASS_FISHER] = 10,
	[CLASS_SWIMMER] = 10,
	[CLASS_FIREBREATHER] = 10,
	[CLASS_GAMER] = 19,
	[CLASS_PSYCHIC] = 15,
	[CLASS_KRICKETINA] = 25,
	[CLASS_DRAGON_TAMER] = 30,
	[CLASS_CHERISH_BALLER] = 31,
	[CLASS_BLACK_BELT] = 24,
	[CLASS_CHASER] = 15,
	[CLASS_MAD_SCIENTIST] = 16,
	[CLASS_ROCKET_BOSS] = 31,
	[CLASS_ROCKET_GRUNT] = 14,
	[CLASS_ACE_TRAINER] = 31,
	[CLASS_ELITE_FOUR] = 31,
	[CLASS_GYM_LEADER] = 31,
	[CLASS_CHAMPION] = 31,
	[CLASS_GHOST_HUNTER] = 22,
	[CLASS_CHANNELER] = 12,
	[CLASS_TWINS] = 6,
	[CLASS_DETECTIVES] = 31,
	[CLASS_YOUNG_COUPLE] = 10,
	[CLASS_MIGHTY_LOVERS] = 23,
	[CLASS_WINTRY_IDOL] = 31,
	[CLASS_PROFESSOR] = 31,
	[CLASS_BATTLE_GIRL] = 20,
	[CLASS_PKMN_BREEDER] = 29,
	[CLASS_PKMN_RANGER] = 10,
	[CLASS_IDOL] = 17,
	[CLASS_RUIN_MANIAC] = 17,
	[CLASS_LADY] = 18,
	[CLASS_BAD_EGG] = 31,
	[CLASS_RESEARCHER] = 19,
	[CLASS_ARTIST] = 10,
	[CLASS_BABYSITTER] = 8,
	[CLASS_MASTER_THIEVES] = 30,
	[CLASS_TOGA_GIRL] = 31,
	[CLASS_FRONTIER_BRAIN] =	31,
};
#else //For Pokemon Unbound
const u8 gBaseIVsByTrainerClass[NUM_TRAINER_CLASSES] =
{
	[CLASS_YOUNGSTER] = 5,
	[CLASS_BUG_CATCHER] = 1,
	[CLASS_LASS] =  5,
	[CLASS_SAILOR] = 10,
	[CLASS_CAMPER] = 5,
	[CLASS_PICNICKER] =  5,
	[CLASS_CAMPING_DUO] = 5,
	[CLASS_POKEMANIAC] = 10,
	[CLASS_SUPER_NERD] = 15,
	[CLASS_HIKER] = 10,
	[CLASS_BIKER] = 10,
	[CLASS_BURGLAR] = 10,
	[CLASS_WORKER] = 10,
	[CLASS_FISHERMAN] = 10,
	[CLASS_SWIMMER_M] = 10,
	[CLASS_SWIMMER_F] = 10,
	[CLASS_TUBER] = 5,
	[CLASS_SIS_AND_BRO] = 10,
	[CLASS_ROUGHNECK] = 10,
	[CLASS_GAMBLER] = 10,
	[CLASS_BEAUTY] =  10,
	[CLASS_PSYCHIC] = 15,
	[CLASS_ROCKER] = 10,
	[CLASS_JUGGLER] = 10,
	[CLASS_TAMER] = 20,
	[CLASS_BIRD_KEEPER] = 10,
	[CLASS_BLACK_BELT] = 15,
	[CLASS_CRUSH_GIRL] = 15,
	[CLASS_CRUSH_KIN] = 15,
	[CLASS_RIVAL] = 25,
	[CLASS_SCIENTIST] = 15,
	[CLASS_GENTLEMAN] = 15,
	[CLASS_MEDIUM] = 10,
	[CLASS_TWINS] = 5,
	[CLASS_YOUNG_COUPLE] = 15,
	[CLASS_PKMN_BREEDER] = 15,
	[CLASS_PKMN_RANGER] = 20,
	[CLASS_AROMA_LADY] = 10,
	[CLASS_RUIN_MANIAC] = 10,
	[CLASS_LADY] = 20,
	[CLASS_PAINTER] = 10,
	[CLASS_IDOL] = 20,
	[CLASS_WAITER] = 10,
	[CLASS_WAITRESS] = 10,
	[CLASS_INTERVIEWER] = 10,
	[CLASS_CYCLIST] = 10,
	[CLASS_NURSE] = 15,
	[CLASS_POKE_KID] = 5,
	[CLASS_RICH_BOY] = 20,
	[CLASS_SKIIER] = 10,
	[CLASS_GUITARIST] = 10,
	[CLASS_KINDLER] = 10,
	[CLASS_SHOCKER] = 10,
	[CLASS_BUG_MANIAC] = 10,
	[CLASS_POLICEMAN] = 15,
	[CLASS_BOARDER] = 10,
	[CLASS_SCHOOL_KID] = 5,
	[CLASS_COLLECTOR] = 10,
	[CLASS_ACE_TRAINER] = 25,
	[CLASS_ACE_DUO] = 25,
	[CLASS_JOGGER] = 10,
	[CLASS_DRAGON_TAMER] = 25,
	[CLASS_NINJA_BOY] = 10,
	[CLASS_PARASOL_LADY] = 10,
	[CLASS_POKEFAN] = 10,
	[CLASS_RANCHER] = 10,
	[CLASS_EXPERT] = 25,
	[CLASS_OLD_COUPLE] = 25,
	[CLASS_MEGA_TRAINER] = 31,

	[CLASS_SHADOW] = 18,
	[CLASS_SHADOW_ADMIN] = 31,
	[CLASS_BOSS] = 31,
	[CLASS_LOR] = 18,
	[CLASS_LOR_ADMIN] = 31,
	[CLASS_LOR_LEADER] = 31,

	[CLASS_BLACK_EMBOAR] = 18,
	[CLASS_TERROR_GRANBULL] = 18,
	[CLASS_BLACK_FERROTHORN] = 25,
	[CLASS_SCIENCE_SOCIETY] = 25,

	[CLASS_LEADER] = 31,
	[CLASS_SINNOH_LEADER] = 31,
	[CLASS_SUCCESSOR] = 31,
	[CLASS_ELITE_4] = 31,
	[CLASS_PKMN_PROF] = 31,
	[CLASS_DEVELOPER] = 31,
	[CLASS_CHAMPION] = 31,
	[CLASS_FRONTIER_BRAIN] = 31,
	[CLASS_PKMN_TRAINER_1] = 25,
	[CLASS_PKMN_TRAINER_2] = 25,
	[CLASS_PKMN_TRAINER_3] = 25,
};
#endif