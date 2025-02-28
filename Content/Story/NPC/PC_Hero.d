instance PC_Hero(NPC_DEFAULT)
{
	//-------- primary data --------		
	name 			= "Nyras";
	Npctype			= NPCTYPE_MAIN;
	guild			= GIL_NONE;
	level			= 0;
	voice			= 15;
	id				= 0;
	
	//------------------------------
	exp				= 0;
	exp_next		= 500;
	lp				= 0;
	//------------------------------
	
	//--------- abilities --------
	attribute[ATR_STRENGTH] 	=	10;     
	attribute[ATR_DEXTERITY] 	=	10;     
	attribute[ATR_MANA_MAX] 	=	5;
	attribute[ATR_MANA] 		=	5;
	attribute[ATR_HITPOINTS_MAX]=	40;    
	attribute[ATR_HITPOINTS] 	=	40;    
	
	// NyrasPrologueDemake: protection adjusted to fight with Kirgo.
	protection	[PROT_BLUNT]		=	37;
	protection	[PROT_EDGE]			=	37;
	
	//-------- visuals --------
	// 						animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	//						Body-Mesh			Body-Tex	Skin-Color	Head-MMS    		Head-Tex	Teeth-Tex 	Armor-Tex
	Mdl_SetVisualBody (self,"hum_body_Naked0",	4,			2,			"Hum_Head_Nyras",	118, 			2,			-1);
	
	Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);
	//-------------------------
};
