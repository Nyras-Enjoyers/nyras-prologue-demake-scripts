instance GRD_251_Kirgo (NPC_DEFAULT)
{
	//-------- Primary Data --------
	name 		=	"Kirgo";
	guild 		=	GIL_NONE;
	id 			=	251;
	voice		=	23;
	npctype		= 	NPCTYPE_MAIN;
	level 		=	10;

	//-------- Visuals --------
	Mdl_SetVisual		(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	//							Body-Mesh			Body-Tex	Skin-Color	Head-MMS				Head-Tex	Teeth-Tex 	Armor
	Mdl_SetVisualBody 	(self, "hum_body_Naked0", 	0, 	 		3,			"Hum_Head_FatBald", 	2,  		1, 			GRD_ARMOR_L);

    B_Scale 			(self);
    Mdl_SetModelFatness	(self, 0);

	//--------- Abilities --------
	attribute	[ATR_STRENGTH] 		= 	30;
	attribute	[ATR_DEXTERITY] 	= 	15;
	attribute	[ATR_MANA_MAX] 		= 	0;
	attribute	[ATR_MANA] 			= 	0;
	attribute	[ATR_HITPOINTS_MAX]	= 	160;
	attribute	[ATR_HITPOINTS] 	= 	160;

	//-------- Talente -------- 
	Npc_SetTalentSkill (self, NPC_TALENT_1H, 1);
			
	//-------- Inventory --------
	EquipItem		(self, ItMw_1H_Sword_01);
	CreateInvItem	(self, ItFoApple);
	CreateInvItem	(self, ITMWPICKAXE);
	CreateInvItems	(self, ItMiNugget, 10);
	CreateInvItems	(self, ItFo_Potion_Health_01, 4);
	
	//-------------Daily Routine-------------
	daily_routine 				= Rtn_Start_251;
	self.aivar	[AIV_IMPORTANT] = true;	
    fight_tactic				= FAI_HUMAN_STRONG;
};

func void Rtn_Start_251 ()
{
	TA_PickOre	(23,00, 10,00, "KIRGO_START");
	TA_PickOre	(10,00, 23,00, "KIRGO_START");
};

func void Rtn_Wait_251 ()
{
	TA_Stand	(23,00, 10,00, "KIRGO_START");
	TA_Stand	(10,00, 23,00, "KIRGO_START");
};
