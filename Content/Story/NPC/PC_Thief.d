instance PC_Thief (NPC_DEFAULT)
{
	//-------- Primary Data --------
	name 		= 	"Diego";
	guild		= 	GIL_STT;
	id			= 	1;
	voice		= 	18;
	npctype		= 	NPCTYPE_MAIN;
	level		= 	999;			// real 25, aber 999 damit er nicht vor dem Troll flieht!

	//-------- Visuals --------
	Mdl_SetVisual		(self, "HUMANS.MDS");
	//							Body-Mesh			Body-Tex	Skin-Color	Head-MMS				Head-Tex	Teeth-Tex 	Armor
	Mdl_SetVisualBody 	(self, "hum_body_Naked0",	0,			2,			"Hum_Head_Thief", 		15,  		4,			STT_ARMOR_H);

	//--------- Abilities --------
	attribute	[ATR_STRENGTH] 		=	70;
	attribute	[ATR_DEXTERITY] 	=	90;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	attribute	[ATR_HITPOINTS_MAX]	=	340;
	attribute	[ATR_HITPOINTS] 	=	340;
	
	protection	[PROT_FIRE]			=	1000;

	//-------- Talente -------- 
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKPOCKET, 1); 	Npc_SetTalentValue	(self, NPC_TALENT_PICKPOCKET, 60); 
	Npc_SetTalentSkill	(self, NPC_TALENT_SNEAK, 1);	
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKLOCK,	1);		Npc_SetTalentValue	(self, NPC_TALENT_PICKLOCK, 60); 
	Npc_SetTalentSkill	(self, NPC_TALENT_MAGE, 6);
	Npc_SetTalentSkill	(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill	(self, NPC_TALENT_BOW, 1);
	
	//-------- Inventory --------
	EquipItem			(self, ItMw_1H_Sword_04);
	EquipItem			(self, Diegos_Bogen);
	CreateInvItems		(self, ItAmArrow, 100);

	//-------------Daily Routine-------------
	daily_routine 				= Rtn_Start_1;
	self.aivar	[AIV_IMPORTANT] = true;
	senses						= SENSE_SEE|SENSE_HEAR|SENSE_SMELL;
	fight_tactic 				= FAI_HUMAN_MASTER;
};

func void Rtn_Start_1 ()
{
	TA_Start_Diego(00,00, 23,00, "DIEGO_START");
	TA_Start_Diego(23,00, 00,00, "DIEGO_START");	
};

func void Rtn_GoWhistler_1 ()
{
	TA_Inspect(10,20, 10,50, "WP_INTRO_011");
	TA_Inspect(10,50, 11,05, "WP_INTRO_005");
	TA_Inspect(11,05, 11,35, "WP_INTRO_011");
	TA_Inspect(11,35, 11,50, "WP_INTRO_005");
	TA_Inspect(11,50, 12,20, "WP_INTRO_011");
	TA_Inspect(12,20, 12,35, "WP_INTRO_005");
	TA_Inspect(12,35, 13,05, "WP_INTRO_011");
	TA_Inspect(13,05, 13,20, "WP_INTRO_005");
	TA_Inspect(13,20, 13,50, "WP_INTRO_011");
	TA_Inspect(13,50, 14,05, "WP_INTRO_005");
	TA_Inspect(14,05, 14,35, "WP_INTRO_011");
	TA_Inspect(14,35, 14,50, "WP_INTRO_005");
	TA_Inspect(14,50, 15,20, "WP_INTRO_011");
	TA_Inspect(15,20, 15,35, "WP_INTRO_005");
	TA_Inspect(15,35, 16,05, "WP_INTRO_011");
	TA_Inspect(16,05, 16,20, "WP_INTRO_005");
	TA_Inspect(16,20, 16,50, "WP_INTRO_011");
	TA_Inspect(16,50, 17,05, "WP_INTRO_005");
	TA_Inspect(17,05, 17,35, "WP_INTRO_011");
	TA_Inspect(17,35, 17,50, "WP_INTRO_005");
	TA_Inspect(17,50, 18,20, "WP_INTRO_011");
	TA_Inspect(18,20, 18,35, "WP_INTRO_005");
	TA_Inspect(18,35, 19,05, "WP_INTRO_011");
	TA_Inspect(19,05, 19,20, "WP_INTRO_005");
	TA_Inspect(19,20, 19,50, "WP_INTRO_011");
	TA_Inspect(19,50, 20,05, "WP_INTRO_005");
	TA_Inspect(20,05, 20,35, "WP_INTRO_011");
	TA_Inspect(20,35, 20,50, "WP_INTRO_005");
	TA_Inspect(20,50, 21,20, "WP_INTRO_011");
	TA_Inspect(21,20, 21,35, "WP_INTRO_005");
	TA_Inspect(21,35, 22,05, "WP_INTRO_011");
	TA_Inspect(22,05, 22,20, "WP_INTRO_005");
	TA_Inspect(22,20, 22,50, "WP_INTRO_011");
	TA_Inspect(22,50, 23,05, "WP_INTRO_005");
	TA_Inspect(23,05, 23,35, "WP_INTRO_011");
	TA_Inspect(23,35, 23,50, "WP_INTRO_005");
	TA_Inspect(23,50, 0,20, "WP_INTRO_011");
	TA_Inspect(0,20, 0,35, "WP_INTRO_005");
	TA_Inspect(0,35, 1,05, "WP_INTRO_011");
	TA_Inspect(1,05, 1,20, "WP_INTRO_005");
	TA_Inspect(1,20, 1,50, "WP_INTRO_011");
	TA_Inspect(1,50, 2,05, "WP_INTRO_005");
	TA_Inspect(2,05, 2,35, "WP_INTRO_011");
	TA_Inspect(2,35, 2,50, "WP_INTRO_005");
	TA_Inspect(2,50, 3,20, "WP_INTRO_011");
	TA_Inspect(3,20, 3,35, "WP_INTRO_005");
	TA_Inspect(3,35, 4,05, "WP_INTRO_011");
	TA_Inspect(4,05, 4,20, "WP_INTRO_005");
	TA_Inspect(4,20, 4,50, "WP_INTRO_011");
	TA_Inspect(4,50, 5,05, "WP_INTRO_005");
	TA_Inspect(5,05, 5,35, "WP_INTRO_011");
	TA_Inspect(5,35, 5,50, "WP_INTRO_005");
	TA_Inspect(5,50, 6,20, "WP_INTRO_011");
	TA_Inspect(6,20, 6,35, "WP_INTRO_005");
	TA_Inspect(6,35, 7,05, "WP_INTRO_011");
	TA_Inspect(7,05, 7,20, "WP_INTRO_005");
	TA_Inspect(7,20, 7,50, "WP_INTRO_011");
	TA_Inspect(7,50, 8,05, "WP_INTRO_005");
	TA_Inspect(8,05, 8,35, "WP_INTRO_011");
	TA_Inspect(8,35, 8,50, "WP_INTRO_005");
	TA_Inspect(8,50, 9,20, "WP_INTRO_011");
	TA_Inspect(9,20, 9,35, "WP_INTRO_005");
	TA_Inspect(9,35, 10,05, "WP_INTRO_011");
	TA_Inspect(10,05, 10,20, "WP_INTRO_005");
};

func void Rtn_SmallTalkDiegoWhistler_1 ()
{
	// If WP is not set
	if (Hlp_StrCmp(Smalltalk_Diego_WP, ""))
	{
		// If is near `FP_INSPECT`, get current WP
		if (self.aivar[AIV_TAPOSITION] == ISINPOS)
		{
			Smalltalk_Diego_WP = self.wp;
		// In other case, get the next WP to Whistler
		} else
		{
			Smalltalk_Diego_WP = Npc_GetNextWP(WhistlerNpc);
		};
		
		// SAFETY CHECK
		if (Hlp_StrCmp(Smalltalk_Diego_WP, ""))
		{
			Smalltalk_Diego_WP = "WP_INTRO_006";
		};
	};
	
	TA_Smalltalk_Diego(1,00, 22,00, Smalltalk_Diego_WP);
	TA_Smalltalk_Diego(22,00, 1,00, Smalltalk_Diego_WP);
};

func void Rtn_AfterSmalltalk_1 ()
{
	TA_Pee(7,35, 7,55, "WP_INTRO_017");
	TA_SitAround(7,25, 7,55, "WP_INTRO_019");
	TA_WoodChoppin_Diego(7,55, 8,40, "DIEGO_WOODCHOPPIN");
	TA_SitAround(8,40, 9,10, "WP_INTRO_019");
	TA_WoodChoppin_Diego(9,10, 9,55, "DIEGO_WOODCHOPPIN");
	TA_SitAround(9,55, 10,25, "WP_INTRO_019");
	TA_Pee(10,25, 10,45, "WP_INTRO_017");
	TA_SitAround(10,45, 11,15, "WP_INTRO_019");
	TA_WoodChoppin_Diego(11,15, 12,00, "DIEGO_WOODCHOPPIN");
	TA_SitAround(12,00, 12,30, "WP_INTRO_019");
	TA_WoodChoppin_Diego(12,30, 13,15, "DIEGO_WOODCHOPPIN");
	TA_SitAround(13,15, 13,45, "WP_INTRO_019");
	TA_Pee(13,45, 14,05, "WP_INTRO_017");
	TA_SitAround(14,05, 14,35, "WP_INTRO_019");
	TA_WoodChoppin_Diego(14,35, 15,20, "DIEGO_WOODCHOPPIN");
	TA_SitAround(15,20, 15,50, "WP_INTRO_019");
	TA_WoodChoppin_Diego(15,50, 16,35, "DIEGO_WOODCHOPPIN");
	TA_SitAround(16,35, 17,05, "WP_INTRO_019");
	TA_Pee(17,05, 17,25, "WP_INTRO_017");
	TA_SitAround(17,25, 17,55, "WP_INTRO_019");
	TA_WoodChoppin_Diego(17,55, 18,40, "DIEGO_WOODCHOPPIN");
	TA_SitAround(18,40, 19,10, "WP_INTRO_019");
	TA_WoodChoppin_Diego(19,10, 19,55, "DIEGO_WOODCHOPPIN");
	TA_SitAround(19,55, 20,25, "WP_INTRO_019");
	TA_Pee(20,25, 20,45, "WP_INTRO_017");
	TA_SitAround(20,45, 21,15, "WP_INTRO_019");
	TA_WoodChoppin_Diego(21,15, 22,00, "DIEGO_WOODCHOPPIN");
	TA_SitAround(22,00, 22,30, "WP_INTRO_019");
	TA_WoodChoppin_Diego(23,00, 00,15, "DIEGO_WOODCHOPPIN");
	TA_SitAround(00,15, 00,45, "WP_INTRO_019");
	TA_Pee(00,45, 1,05, "WP_INTRO_017");
	TA_SitAround(1,05, 1,35, "WP_INTRO_019");
	TA_WoodChoppin_Diego(1,35, 2,20, "DIEGO_WOODCHOPPIN");
	TA_SitAround(2,20, 2,50, "WP_INTRO_019");
	TA_WoodChoppin_Diego(2,50, 3,35, "DIEGO_WOODCHOPPIN");
	TA_SitAround(3,35, 4,05, "WP_INTRO_019");
	TA_Pee(4,05, 4,25, "WP_INTRO_017");
	TA_SitAround(4,25, 4,55, "WP_INTRO_019");
	TA_WoodChoppin_Diego(4,55, 5,40, "DIEGO_WOODCHOPPIN");
	TA_SitAround(5,40, 6,10, "WP_INTRO_019");
	TA_WoodChoppin_Diego(6,10, 6,55, "DIEGO_WOODCHOPPIN");
	TA_SitAround(6,55, 7,35, "WP_INTRO_019");
};
