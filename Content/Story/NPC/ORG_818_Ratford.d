const string G1R_DEMO_0030_NC_RATFORD_0030 = "Ratford";
instance ORG_818_Ratford (NPC_DEFAULT)
{
	//-------- Primary Data --------
	name 		=	G1R_DEMO_0030_NC_RATFORD_0030;
	guild 		=	GIL_ORG;
	id 			=	818;
	voice 		=	21;   
	npctype 	=	NPCTYPE_MAIN;	
	level 		=	8;

	//-------- Visuals --------
	Mdl_SetVisual		(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	//							Body-Mesh			Body-Tex	Skin-Color	Head-MMS				Head-Tex	Teeth-Tex 	Armor	
	Mdl_SetVisualBody 	(self, "hum_body_Naked0", 	0, 			2,			"Hum_Head_Fighter", 	9, 			3, 			ORG_ARMOR_L);
	
	B_Scale 			(self);	
	Mdl_SetModelFatness (self, 0);

	//--------- Abilities --------
	attribute	[ATR_STRENGTH] 		=	30;
	attribute	[ATR_DEXTERITY] 	=	30;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	attribute	[ATR_HITPOINTS_MAX] =	136;
	attribute[	ATR_HITPOINTS] 		=	136;

	//-------- Talente ----------
	Npc_SetTalentSkill (self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill (self, NPC_TALENT_1H, 1);
	
	//-------- Inventory -------- 
	EquipItem 		(self, ItMw_1H_Mace_03);
	EquipItem 		(self, ItRw_Bow_Small_04);
	CreateInvItem 	(self, ItMi_Stuff_Plate_01);
	CreateInvItem 	(self, ItMi_Stuff_Cup_01);
	CreateInvItem 	(self, ItFoLoaf);                  
	CreateInvItems 	(self, ItKeLockpick, 2);		
	CreateInvItems	(self, ItMiNugget, 17);
	CreateInvItems 	(self, ItFoRice,6);
	CreateInvItems 	(self, ItFoBooze, 2);
	CreateInvItems 	(self, ItLsTorch, 3);
	CreateInvItems 	(self, ItFo_Potion_Health_01, 3);
	CreateInvItems	(self, ItAmArrow, 20);

	//-------------Daily Routine-------------
	daily_routine 				= Rtn_Start_818;
	self.aivar	[AIV_IMPORTANT] = true;		
	fight_tactic				= FAI_HUMAN_STRONG;
};

func void Rtn_Start_818 ()
{
	TA_Start_Ratford (00,00, 23,00, "RATFORD_START");
	TA_Start_Ratford (23,00, 00,00, "RATFORD_START");
};

var string RtnJorik818_WpName;
func void Rtn_Jorik_818 ()
{
	if (Hlp_StrCmp(RtnJorik818_WpName, "") == true)
	{
		RtnJorik818_WpName = "RATFORD_JORIK_FOUND_WAY_002";
	} else
	{
		RtnJorik818_WpName = "RATFORD_JORIK_FOUND_STAY";
	};

	TA_Ratford_Jorik (00,00, 23,00, RtnJorik818_WpName);
	TA_Ratford_Jorik (23,00, 00,00, RtnJorik818_WpName);
};

func void Rtn_HuntersCamp_818 ()
{
	TA_RunToHuntersCamp	(23,00, 10,00, "HUNTERSCAMP_RATFORD"); 
	TA_RunToHuntersCamp	(10,00, 23,00, "HUNTERSCAMP_RATFORD");
};

func void Rtn_WaitHuntersCamp_Ratford_818 ()
{
	TA_Trialog_Ratford(23,00, 02,00, "HUNTERSCAMP_002"); 
	TA_Trialog_Ratford(02,00, 23,00, "HUNTERSCAMP_002");
};
