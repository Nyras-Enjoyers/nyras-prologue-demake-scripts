const string G1R_DEMO_0040_NC_DRAX_0040 = "Drax";
instance ORG_819_Drax (NPC_DEFAULT)
{
	//-------- Primary Data --------
	name 		=	G1R_DEMO_0040_NC_DRAX_0040;
	guild 		=	GIL_ORG; 
	id 			=	819;
	voice 		=	22;
	npctype		=	NPCTYPE_MAIN;
	level 		=	3;

	//-------- Visuals --------
	Mdl_SetVisual		(self, "HUMANS.MDS");
	//							Body-Mesh			Body-Tex	Skin-Color	Head-MMS				Head-Tex	Teeth-Tex 	Armor
	Mdl_SetVisualBody 	(self, "hum_body_Naked0",	0, 			1, 			"Hum_Head_FatBald", 	39, 		2, 			ORG_ARMOR_L);
	
	B_Scale 			(self);	
	Mdl_SetModelFatness (self, 0);	

	//--------- Abilities --------
	attribute	[ATR_STRENGTH] 		=	30;
	attribute	[ATR_DEXTERITY] 	=	30;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	attribute	[ATR_HITPOINTS_MAX] =	136;
	attribute	[ATR_HITPOINTS] 	=	136;

	//-------- Talente --------                                    
	Npc_SetTalentSkill (self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill (self, NPC_TALENT_1H, 1);
	
	//-------- Inventory --------
	EquipItem 		(self, ItMw_1H_Mace_03);
	EquipItem 		(self, ItRw_Bow_Long_01);
	CreateInvItem 	(self, ItMi_Stuff_Plate_01);
	CreateInvItem 	(self, ItMi_Stuff_Cup_01);
	CreateInvItem 	(self, ItFoLoaf);                        
	CreateInvItems 	(self, ItKeLockpick,2);		
	CreateInvItems	(self, ItMiNugget, 14);
	CreateInvItems 	(self, ItFoRice,6);
	CreateInvItems 	(self, ItFoBooze, 2);
	CreateInvItems 	(self, ItLsTorch, 3);
	CreateInvItems 	(self, ItFo_Potion_Health_01, 3);
	CreateInvItems 	(self, ItAmArrow, 20);
	
	//-------------Daily Routine-------------
	daily_routine 				= Rtn_Start_819;
	self.aivar	[AIV_IMPORTANT] = true;
	fight_tactic				= FAI_HUMAN_STRONG;
};

func void Rtn_Start_819 ()
{
	TA_Sneak_Observe (00,00, 23,00, "DRAX_START");
	TA_Sneak_Observe (23,00, 00,00, "DRAX_START");
};

func void Rtn_Hunting_819 ()
{
	TA_Drax_Hunt(23,00, 10,00, "DRAX_GO_001");
	TA_Drax_Hunt(10,00, 23,00, "DRAX_GO_001");
};

func void Rtn_AfterHuntWait_819 ()
{
	TA_Stand(23,00, 10,00, "DRAX_START");
	TA_Stand(10,00, 23,00, "DRAX_START");
};

func void Rtn_HuntersCamp_819 ()
{
	TA_RunToHuntersCamp	(23,00, 10,00, "HUNTERSCAMP_DRAX"); 
	TA_RunToHuntersCamp	(10,00, 23,00, "HUNTERSCAMP_DRAX");
};

func void Rtn_WaitHuntersCamp_Drax_819 ()
{
	TA_Trialog_Drax(23,00, 02,00, "HUNTERSCAMP_DRAX"); 
	TA_Trialog_Drax(02,00, 23,00, "HUNTERSCAMP_DRAX");
};
