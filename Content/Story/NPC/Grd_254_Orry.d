instance GRD_254_Orry (Npc_Default)
{
	//-------- Primary Data --------
	name 		=	"Orry";
	guild 		=	GIL_GRD;
	id 			=	254;
	voice 		=	20;
	npctype		= 	NPCTYPE_MAIN;
	level 		=	10;
	
	//-------- Visuals --------
	Mdl_SetVisual		(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	//							Body-Mesh			Body-Tex	Skin-Color	Head-MMS				Head-Tex	Teeth-Tex 	Armor
	Mdl_SetVisualBody 	(self, "hum_body_Naked0", 	0, 			1, 			"Hum_Head_Psionic", 	14,  		1, 			GRD_ARMOR_L);

    B_Scale 			(self);
    Mdl_SetModelFatness	(self, 0);

	//--------- Abilities --------
	attribute	[ATR_STRENGTH] 		= 	35;
	attribute	[ATR_DEXTERITY] 	= 	35;
	attribute	[ATR_MANA_MAX] 		= 	0;
	attribute	[ATR_MANA] 			= 	0;
	attribute	[ATR_HITPOINTS_MAX]	= 	160;
	attribute	[ATR_HITPOINTS] 	= 	160;

	//-------- Talente -------- 		
	Npc_SetTalentSkill (self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill (self, NPC_TALENT_1H, 1);		
			
	//-------- Inventory --------
	EquipItem		(self, ItMw_1H_Sword_01);
	EquipItem		(self, ItRw_Crossbow_01);
	CreateInvItem	(self, ItFoApple);
	CreateInvItems	(self, ItAmBolt, 30);
	CreateInvItems	(self, ItMiNugget, 10);      
	
	//-------------Daily Routine-------------
	daily_routine 				= Rtn_Start_254;
    self.aivar	[AIV_IMPORTANT] = true;
    fight_tactic				= FAI_HUMAN_STRONG;
};

func void Rtn_Start_254 ()
{
	TA_Stand	(23,45, 07,45, "OW_PATH_1_16_C");
	TA_Stand 	(07,45, 10,00, "OW_PATH_1_16_C");
	TA_Stand	(10,00, 14,05, "OW_PATH_1_16_C");
};


