/*************************************************************************
**	Shadowbeast Prototype												**
*************************************************************************/

PROTOTYPE Mst_Default_Shadowbeast(C_Npc)			
{
	name							=	"Cieniostwór";
	guild							=	GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID]			= 	ID_SHADOWBEAST;
	level							=	2000;
//---------------------------------------------------------
	attribute	[ATR_STRENGTH]		=	110;
	attribute	[ATR_DEXTERITY]		=	110;
	
	attribute	[ATR_HITPOINTS_MAX]	=	400;
	attribute	[ATR_HITPOINTS]		=	400;

	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
//---------------------------------------------------------
	protection	[PROT_BLUNT]		=	100;
	protection	[PROT_EDGE]			=	100;
	protection	[PROT_POINT]		=	100;
	protection	[PROT_FIRE]			=	50;
	protection	[PROT_FLY]			=	9999;
	protection	[PROT_MAGIC]		=	50;
//---------------------------------------------------------
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;
//---------------------------------------------------------
//---------------------------------------------------------
	fight_tactic					=	FAI_SHADOWBEAST;
//---------------------------------------------------------
	senses						= SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range				= 3000;

	aivar[AIV_MM_Behaviour]		= HUNTER;
	aivar[AIV_MM_TEMP_PRIO]		= PRIO_PREY;
	aivar[AIV_MM_PercRange]		= 1500;
	aivar[AIV_MM_DrohRange]		= 1300;
	aivar[AIV_MM_AttackRange]	= 700;
	aivar[AIV_MM_DrohTime]		= 4;
	aivar[AIV_MM_FollowTime]	= 999;
	aivar[AIV_MM_FollowInWater] = FALSE;
//-------------------------------------------------------------
	aivar[AIV_MM_RoamStart] 	= OnlyRoutine;
};
//-------------------------------------------------------------
func void Set_Shadowbeast_Visuals()
{
	Mdl_SetVisual			(self,"Shadow.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Sha_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};


/*************************************************************************
**	Shadowbeast    														**
*************************************************************************/

INSTANCE Shadowbeast	(Mst_Default_Shadowbeast)
{
	id = 864;

	Set_Shadowbeast_Visuals();
	Npc_SetToFistMode(self);
	CreateInvItems (self,ItFoMuttonRaw,4);
	
	daily_routine = Rtn_Start_864;
};
func void Rtn_Start_864()
{
	TA_MM_Shadowbeast(22,00,22,15,"SHADOWBEAST_START");
	TA_MM_Shadowbeast(22,15,22,30,"PLATEAU_003");
	TA_MM_Shadowbeast(22,30,22,45,"PLATEAU_005");
	TA_MM_Shadowbeast(22,45,23,00,"PLATEAU_010");
	TA_MM_Shadowbeast(23,00,23,15,"RATFORD_RETURN_HUNTERSCAMP_WAY_011");
	TA_MM_Shadowbeast(23,15,22,00,"HUNTERSCAMP_000");
};
