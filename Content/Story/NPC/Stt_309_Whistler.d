instance STT_309_Whistler (NPC_DEFAULT)
{
	//-------- Primary Data --------
	name 		=	"Œwistak";
	guild 		=	GIL_STT;
	id 			=	309;
	voice 		=	19;
	npctype 	=	NPCTYPE_MAIN;
	level 		=	5;
	
	//-------- Visuals ---------
	Mdl_SetVisual		(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	//							Body-Mesh			Body-Tex	Skin-Color	Head-MMS				Head-Tex	Teeth-Tex 	Armor
	Mdl_SetVisualBody 	(self, "hum_body_Naked0", 	0, 			1, 			"Hum_Head_Psionic", 	97, 		1, 			STT_ARMOR_M);

	B_Scale 			(self);
	Mdl_SetModelFatness	(self, 0);

	//--------- Abilities --------
	attribute	[ATR_STRENGTH] 		=	20;
	attribute	[ATR_DEXTERITY] 	=	15;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	attribute	[ATR_HITPOINTS_MAX]	=	100;
	attribute	[ATR_HITPOINTS] 	=	100; 

	//-------- Talente -------- 
	Npc_SetTalentSkill (self, NPC_TALENT_BOW, 2);
	Npc_SetTalentSkill (self, NPC_TALENT_1H, 1);	
		
	//-------- Inventory --------
	EquipItem		(self, ItMw_1H_Sword_Short_02);
	EquipItem		(self, ItRw_Bow_Small_02);
	CreateInvItems	(self, ItAmArrow, 10);
	CreateInvItems	(self, ItKeLockpick, 2);
	
	//-------------Daily Routine-------------
	daily_routine 				= Rtn_Start_309;
	self.aivar	[AIV_IMPORTANT] = true;
	fight_tactic				= FAI_HUMAN_STRONG;

};

func void Rtn_Start_309 ()
{
	TA_Start_Whistler(00,00,11,00,"WHISTLER_START");
	TA_Start_Whistler(11,00,00,00,"WHISTLER_START");
};

func void Rtn_SmallTalkDiegoWhistler_309 ()
{
	TA_Smalltalk_Whistler(00,00,11,00,"WHISTLER_START");
	TA_Smalltalk_Whistler(11,00,00,00,"WHISTLER_START");
};

func void Rtn_AfterSmalltalk_309 ()
{
	TA_Inspect(10,20, 10,50, "WP_INTRO_012");
	TA_Inspect(10,50, 11,05, "WP_INTRO_005");
	TA_Inspect(11,05, 11,20, "WP_INTRO_004");
	TA_Inspect(11,20, 11,35, "WP_INTRO_014");
	TA_Inspect(11,35, 11,50, "WP_INTRO_008");
	TA_Inspect(11,50, 12,20, "WP_INTRO_012");
	TA_Inspect(12,20, 12,35, "WP_INTRO_005");
	TA_Inspect(12,35, 12,50, "WP_INTRO_004");
	TA_Pee(12,50, 13,15, "WP_INTRO_017");
	TA_SitAround(13,15, 14,20, "WP_INTRO_012");
	TA_Inspect(14,20, 14,50, "WP_INTRO_012");
	TA_Inspect(14,50, 15,05, "WP_INTRO_005");
	TA_Inspect(15,05, 15,20, "WP_INTRO_004");
	TA_Inspect(15,20, 15,35, "WP_INTRO_014");
	TA_Inspect(15,35, 15,50, "WP_INTRO_008");
	TA_Inspect(15,50, 16,20, "WP_INTRO_012");
	TA_Inspect(16,20, 16,35, "WP_INTRO_005");
	TA_Inspect(16,35, 16,50, "WP_INTRO_004");
	TA_Pee(16,50, 17,15, "WP_INTRO_017");
	TA_SitAround(17,15, 18,20, "WP_INTRO_012");
	TA_Inspect(18,20, 10,50, "WP_INTRO_012");
	TA_Inspect(18,50, 11,05, "WP_INTRO_005");
	TA_Inspect(19,05, 11,20, "WP_INTRO_004");
	TA_Inspect(19,20, 11,35, "WP_INTRO_014");
	TA_Inspect(19,35, 11,50, "WP_INTRO_008");
	TA_Inspect(19,50, 12,20, "WP_INTRO_012");
	TA_Inspect(20,20, 12,35, "WP_INTRO_005");
	TA_Inspect(20,35, 12,50, "WP_INTRO_004");
	TA_Pee(20,50, 21,15, "WP_INTRO_017");
	TA_SitAround(21,15, 22,20, "WP_INTRO_012");
	TA_Inspect(22,20, 22,50, "WP_INTRO_012");
	TA_Inspect(22,50, 23,05, "WP_INTRO_005");
	TA_Inspect(23,05, 23,20, "WP_INTRO_004");
	TA_Inspect(23,20, 23,35, "WP_INTRO_014");
	TA_Inspect(23,35, 23,50, "WP_INTRO_008");
	TA_Inspect(23,50, 0,20, "WP_INTRO_012");
	TA_Inspect(0,20, 0,35, "WP_INTRO_005");
	TA_Inspect(0,35, 0,50, "WP_INTRO_004");
	TA_Pee(0,50, 1,15, "WP_INTRO_017");
	TA_SitAround(1,15, 2,20, "WP_INTRO_012");
	TA_Inspect(2,20, 10,50, "WP_INTRO_012");
	TA_Inspect(2,50, 11,05, "WP_INTRO_005");
	TA_Inspect(3,05, 11,20, "WP_INTRO_004");
	TA_Inspect(3,20, 11,35, "WP_INTRO_014");
	TA_Inspect(3,35, 11,50, "WP_INTRO_008");
	TA_Inspect(3,50, 12,20, "WP_INTRO_012");
	TA_Inspect(4,20, 12,35, "WP_INTRO_005");
	TA_Inspect(4,35, 12,50, "WP_INTRO_004");
	TA_Pee(4,50, 5,15, "WP_INTRO_017");
	TA_SitAround(5,15, 6,20, "WP_INTRO_012");
	TA_Inspect(6,20, 6,50, "WP_INTRO_012");
	TA_Inspect(6,50, 7,05, "WP_INTRO_005");
	TA_Inspect(7,05, 7,20, "WP_INTRO_004");
	TA_Inspect(7,20, 7,35, "WP_INTRO_014");
	TA_Inspect(7,35, 7,50, "WP_INTRO_008");
	TA_Inspect(7,50, 8,20, "WP_INTRO_012");
	TA_Inspect(8,20, 8,35, "WP_INTRO_005");
	TA_Inspect(8,35, 8,50, "WP_INTRO_004");
	TA_Pee(8,50, 9,15, "WP_INTRO_017");
	TA_SitAround(9,15, 10,20, "WP_INTRO_012");
};

