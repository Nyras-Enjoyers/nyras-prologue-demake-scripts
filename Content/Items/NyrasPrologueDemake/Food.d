// ************************************************************************************************
// Heilwirkung und Kosten von Nahrung
// ************************************************************************************************

const int	HP_Potato			=	1;
const int	HP_Pear				=	2;

/******************************************************************************************/
const string ItFo_Potato = "Ziemniak";
const string ItFo_Potato_description_1 = "Bulwy, stanowi¹ce podstawowy posi³ek we wszystkich";
const string ItFo_Potato_description_2 = "obozach, zapewniaj¹ si³ê górnikom z Kolonii.";
INSTANCE ItFoPotato(C_Item)
{	
	name 				=	ItFo_Potato;

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	visual 				=	"ow_potato_nm.3DS"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	UsePotato;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Potato;
	TEXT[4]				= ItFo_Potato_description_1;
	TEXT[5]				= ItFo_Potato_description_2;
};
FUNC VOID UsePotato()
{
	Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Potato);
};
/******************************************************************************************/
const string ItFo_Pear = "Gruszka";
const string ItFo_Pear_description = "S³odkie owoce spoza bariery – smak domu";
INSTANCE ItFoPear(C_Item)
{	
	name 				=	ItFo_Pear;

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	visual 				=	"ow_pear_nm.3DS"; 
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	UsePear;

	description			= name;
	TEXT[1]				= NAME_Bonus_HP;				COUNT[1]	= HP_Pear;
	TEXT[5]				= ItFo_Pear_description;
};
FUNC VOID UsePear()
{
	Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Pear);
};
