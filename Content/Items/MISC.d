// ************************************************************************************************
// Wert von Kram
// ************************************************************************************************

// Items f�r Objektbenutzung und Item-Interaktion...
// z.B. Krautstampfer, Hammer, Koch�ffel, Laborflasche, Roheisen (Schmiede)
const int	Value_MobsiItem			=	3;

// mit 80% kann bei einem kompletten Durchgang ca. 10 Erz verdient werden
const int	Value_SwordBlade		= 	(Value_1H_Sword_01	*8)/10;	// 80% des Fertigen Schwerts
const int	Value_SwordBladeHot		= 	(Value_SwordBlade	*8)/10;	// 80% der geschliffenen Klinge
const int	Value_SwordRawHot		= 	(Value_SwordBladeHot*8)/10; // 80% der geschmiedeten Klinge
const int	Value_SwordRaw			= 	(Value_SwordRawHot	*8)/10; // 80% des erhitzen Rohstahls

const int	Value_Dietrich			=	10;
const int	Value_Schlussel			=	3;

const int	Value_Joint1			=	8;
const int	Value_Joint2			=	15;
const int	Value_Joint3			=	20;
const int	Value_Laute				=	10;

const int	Value_Erzbrocken		=	1;// UNBEDINGT SO LASSEN!!! M.F.
const int	Value_Fackel			=	2;

const int	Value_Sumpfkraut		=	8;
const int	Value_Pfeife			=	10;
const int	Value_Rasiermesser		=	5;// EX 25 NIEDRIGER WERT WEIL ES VIEL DAVON GIBT!!! 
const int	Value_Munze				=	0;// BITTE AUF 0 LASSEN, DAF�R IST SIE DA, F�R SONST NIX!!!!! M.F.
const int	Value_Schussel			=	4;
const int	Value_Kerzenstander		=	10;
const int	Value_Becher			=	 4;
const int	Value_Pokal				=	50;
const int	Value_Besteck			=	15;
const int	Value_Pfanne			=	10;
const int	Value_Krug				=	10; //35
const int	Value_Amphore			=	15; //EX 45
const int	Value_Statue			=	15;

// Alchemie-Ingredienzien
// FIXME: noch benutzen? // NEin, aber liegen �berall ind er Welt, von daher als Ambient Items drinlassen!M.F.
const int	Value_Schwefel			=	20;
const int	Value_Quecksilber		=	25;
const int	Value_Salz				=	10;
const int	Value_Ol				=	15;
const int	Value_Moleratfett		=	5;
const int	Value_Alcohol			=	18;



/*******************************************************************************************
**	Items f�r Mobsi-Benutzung               					  		  				  **
*******************************************************************************************/

/******************************************************************************************/
//	Dietrich
const string ItKe_Lockpick_description = "Niezb�dny dla tych, kt�rzy potrafi� otwiera� to, co jest zamkni�te.";
INSTANCE ItKeLockpick (C_Item)
{
	name 				=	"Wytrych";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Dietrich;

	visual 				=	"ItKe_Lockpick_01.3ds";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[5]				= ItKe_Lockpick_description;
};

/******************************************************************************************/
//	Schl�ssel

// FIXME: aussagekr�ftigere Schl�sselnamen?
INSTANCE ItKeKey1(C_Item)
{
	name 				=	"Klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Schlussel;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

/******************************************************************************************/
INSTANCE ItKeKey2(C_Item)
{
	name 				=	"Klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Schlussel;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

/******************************************************************************************/
INSTANCE ItKeKey3(C_Item)
{
	name 				=	"Klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Schlussel;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

/******************************************************************************************/
INSTANCE ItKeKey4(C_Item)
{
	name 				=	"Klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Schlussel;

	visual 				=	"ItKe_Key_04.3ds";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

/******************************************************************************************/
INSTANCE ItKeCavalorn01(C_Item)
{
	name 				=	"Klucz Cavalorna";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	Value_Schlussel;

	visual 				=	"ItKe_Key_04.3ds";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};




/******************************************************************************************/
// Krautstampfen
INSTANCE ItMiStomper (C_Item)
{
	name 				=	"Rozdrabniacz";

	mainflag 			=	ITEM_KAT_NONE;
	flags				=	ITEM_MULTI;

	value 				=	Value_MobsiItem;

	visual 				=	"ItMi_Stomper_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_MobsiItem;
};

/******************************************************************************************/
// Reparieren
INSTANCE ItMiHammer (C_Item)
{
	name 				=	"M�otek";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_MobsiItem;

	visual 				=	"ItMi_Hammer_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_MobsiItem;
};

/******************************************************************************************/
// im Topf r�hren
INSTANCE ItMiScoop (C_Item)
{
	name 				=	"Drewniana �y�ka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_MobsiItem;

	visual 				=	"ItMi_Scoop_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_MobsiItem;
};

/******************************************************************************************/
// Labor benutzen
// Fixme: wird dabei ein anderes Item generiert?
INSTANCE ItMiFlask(C_Item)
{
	name 				=	"Kolba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_MobsiItem;

	visual 				=	"ItFo_Potion_Mana_02.3ds";
	material 			=	MAT_GLAS;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_MobsiItem;
};


/******************************************************************************************/
//	Items f�r Schmiede	    					 								 		  **

INSTANCE ItMiSwordraw (C_Item)
{
	name 				=	"Stal";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Swordraw;

	visual 				=	"ItMi_SmithSword_Raw_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMiSwordrawhot (C_Item)
{
	name 				=	"Rozgrzana stal";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Swordrawhot;

	visual 				=	"ItMi_SmithSword_Rawhot_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMiSwordbladehot (C_Item)
{
	name 				=	"Rozgrzane ostrze";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Swordbladehot;

	visual 				=	"ItMi_SmithSword_Bladehot_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMiSwordblade	(C_Item)
{
	name 				=	"Ostrze";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Swordblade;

	visual 				=	"ItMi_SmithSword_Blade_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};




/*******************************************************************************************
**	Items f�r Item-Interaktionen (ohne Mobsi benutzbar)               		 		  	  **
*******************************************************************************************/

// f�r Feuerspucker
INSTANCE ItLsTorchFirespit(C_Item)
{
	name 				=	"Pochodnia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BURN|ITEM_TORCH;

	value 				=	Value_MobsiItem;

	visual 				=	"ITLSTORCHBURNING.ZEN";
	material 			=	MAT_WOOD;

	scemeName			=	"FIRESPIT";

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};


/******************************************************************************************/
// zum Rumklimpern
const string ItMi_Lute_description = "Namacalne po��czenie ze �wiatem zewn�trznym. Jej melodie pomagaj� zachowa� zdrowy rozs�dek i kultur�, przez co instrument jest nie mniej cenny ni� ruda.";
const string ItMi_Lute_description_1 = "Namacalne po��czenie ze �wiatem zewn�trznym. Jej melodie pomagaj� zachowa�";
const string ItMi_Lute_description_2 = "zdrowy rozs�dek i kultur�, przez co instrument jest nie mniej cenny ni� ruda.";
INSTANCE ItMiLute (C_Item)
{
	name 				=	"Lutnia";

	mainflag 			=	ITEM_KAT_NONE;

	value 				=	Value_Laute;

	visual 				=	"ItMi_Lute_01.3DS";
	material 			=	MAT_WOOD;

	scemeName			=	"LUTE";
	on_state[0]			= UseLute;
	description			= name;
	TEXT[4]				= ItMi_Lute_description_1;
	TEXT[5]				= ItMi_Lute_description_2;
};
func void UseLute()
{
	
};


/******************************************************************************************/
// F�r Babe-Luftzuf�cheln
INSTANCE ItMiWedel(C_Item)
{
	name 				=	"Li�� palmowy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_MobsiItem;

	visual				=	"ItMi_Wedel_01.3ds";
	material 			=	MAT_LEATHER;
	scemeName			=	"COOLAIR";

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
// F�r Babe-Putzen
const string ItMi_Stuff_Brush_description = "Szczotki te s� czym� wi�cej ni� tylko narz�dziem do czyszczenia � s� niezb�dne do utrzymania broni, pancerzy i zdrowia w dobrym stanie w trudnych warunkach panuj�cych w Kolonii.";
const string ItMi_Stuff_Brush_description_1 = "Szczotki te s� czym� wi�cej ni� tylko narz�dziem do czyszczenia �";
const string ItMi_Stuff_Brush_description_2 = "s� niezb�dne do utrzymania broni, pancerzy i zdrowia w dobrym stanie";
const string ItMi_Stuff_Brush_description_3 = "w trudnych warunkach panuj�cych w Kolonii.";
INSTANCE ItMiBrush(C_Item)
{
	name 				=	"Szczotka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_MobsiItem;

	visual				=	"ItMi_Brush_01.3ds";
	material 			=	MAT_GLAS;
	scemeName			=	"BRUSH";

	description			= name;
	TEXT[3]				= ItMi_Stuff_Brush_description_1;
	TEXT[4]				= ItMi_Stuff_Brush_description_2;
	TEXT[5]				= ItMi_Stuff_Brush_description_3;
};


/******************************************************************************************/
INSTANCE ItMiJoint_1(C_Item)
{
	name 				=	"Zielony Nowicjusz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint1;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= UseItMiJoint_1;
	description			= name;
};
func void UseItMiJoint_1()
{
	
};
/******************************************************************************************/
INSTANCE ItMiJoint_2(C_Item)
{
	name 				=	"Mrok P�nocy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint2;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= UseItMiJoint_2;
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
func void UseItMiJoint_2()
{
	
};
/******************************************************************************************/
INSTANCE ItMiJoint_3(C_Item)
{
	name 				=	"Zew nocy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Joint3;

	visual 				=	"ItMi_Joint_01.3ds";
	material 			=	MAT_WOOD;

	scemeName			=	"JOINT";
	on_state[0]			= UseItMiJoint_3;
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
func void UseItMiJoint_3()
{
	
};

/******************************************************************************************/
const string ItMi_Orenugget_description = "Si�a nap�dowa Kolonii. Unikalne w�a�ciwo�ci sprawiaj�, �e jest zar�wno walut�, jak i po��danym zasobem, kszta�tuj�c tym samym dynamik� w�adzy w Kolonii i kr�lestwie.";
const string ItMi_Orenugget_description_1 = "Si�a nap�dowa Kolonii. Unikalne w�a�ciwo�ci sprawiaj�, �e jest";
const string ItMi_Orenugget_description_2 = "zar�wno walut�, jak i po��danym zasobem, kszta�tuj�c tym samym";
const string ItMi_Orenugget_description_3 = "dynamik� w�adzy w Kolonii i kr�lestwie.";
INSTANCE ItMiNugget(C_Item)
{
	name 				=	"Bry�ka rudy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Erzbrocken;

	visual 				=	"ItMi_Nugget_01.3ds";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[3]				= ItMi_Orenugget_description_1;
	TEXT[4]				= ItMi_Orenugget_description_2;
	TEXT[5]				= ItMi_Orenugget_description_3;
};




/******************************************************************************************/
//	Fackel			                					  **
const string ItMw_1H_Torch_description = "Niezast�piona do poruszania si� po zdradliwych, pogr��onych w mroku obszarach Kolonii. Mo�e by� u�ywana jako prowizoryczna bro� przeciwko bestiom, czasami z ognistymi efektami.";
const string ItMw_1H_Torch_description_1 = "Niezast�piona do poruszania si� po zdradliwych, pogr��onych";
const string ItMw_1H_Torch_description_2 = "w mroku obszarach Kolonii. Mo�e by� u�ywana jako prowizoryczna";
const string ItMw_1H_Torch_description_3 = "bro� przeciwko bestiom, czasami z ognistymi efektami.";
INSTANCE ItLsTorch(C_Item)
{
	name 				=	"Pochodnia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BURN|ITEM_TORCH|ITEM_MULTI;

	value 				=	Value_Fackel;

	visual 				=	"ItLs_Torch_01.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[3]				= ItMw_1H_Torch_description_1;
	TEXT[4]				= ItMw_1H_Torch_description_2;
	TEXT[5]				= ItMw_1H_Torch_description_3;
};

/******************************************************************************************/
INSTANCE ItLsTorchburning(C_Item)
{
	name 				=	"P�on�ca pochodnia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BURN|ITEM_TORCH;

	value 				=	0;

	visual 				=	"ITLSTORCHBURNING.ZEN";
	material 			=	MAT_WOOD;

	description			= name;
	//	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

/******************************************************************************************/
INSTANCE ItLsTorchburned(C_Item)
{
	name 				=	"Pochodnia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BURN|ITEM_TORCH|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItLs_Torchburned_01.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};




/******************************************************************************************/
//STUFF//
/******************************************************************************************/

// Sumpfkraut (f�r Joints)
INSTANCE ItMi_Plants_Swampherb_01(C_Item)
{
	name 				=	"Bagienne ziele";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sumpfkraut;

	visual 				=	"ItMi_Plants_Swampherb_01.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
const string ItMi_Stuff_Pipe_01_description = "Ceniona odrobina rado�ci w Kolonii, cz�sto u�ywana do palenia miejscowych zi�.";
const string ItMi_Stuff_Pipe_01_description_1 = "Ceniona odrobina rado�ci w Kolonii,";
const string ItMi_Stuff_Pipe_01_description_2 = "cz�sto u�ywana do palenia miejscowych zi�.";
INSTANCE ItMi_Stuff_Pipe_01 (C_Item)
{
	name 				=	"Fajka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Pfeife;

	visual 				=	"ItMi_Stuff_Pipe_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= ItMi_Stuff_Pipe_01_description_1;
	TEXT[5]				= ItMi_Stuff_Pipe_01_description_2;
};

/******************************************************************************************/
INSTANCE ItMi_Stuff_Barbknife_01 (C_Item)
{
	name 				=	"Brzytwa";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Rasiermesser;

	visual 				=	"ItMi_Stuff_Barbknife_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
const string ItMi_Oldcoin_01_description = "Pozosta�o�� po �yciu przed powstaniem bariery. Niegdy� by�a cenna w Myrtanie, ale pod barier� jest bezwarto�ciowa.";
const string ItMi_Oldcoin_01_description_1 = "Pozosta�o�� po �yciu przed powstaniem bariery.";
const string ItMi_Oldcoin_01_description_2 = "Niegdy� by�a cenna w Myrtanie, ale pod barier� jest bezwarto�ciowa.";
INSTANCE ItMi_Stuff_OldCoin_01 (C_Item)
{
	name 				=	"Moneta";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Munze;

	visual 				=	"ItMi_Stuff_OldCoin_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= ItMi_Oldcoin_01_description_1;
	TEXT[5]				= ItMi_Oldcoin_01_description_2;
};

//	M�nze mit Mission Flag um tote liegenzulassen
INSTANCE ItMi_Stuff_OldCoin_02 (C_Item)
{
	name 				=	"Moneta";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_Munze;

	visual 				=	"ItMi_Stuff_OldCoin_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
const string ItMi_Stuff_Plate_01_description = "Zu�yte metalowe naczynie. Przypomina, �e nawet wi�niowie musz� je��.";
INSTANCE ItMi_Stuff_Plate_01 (C_Item)
{
	name 				=	"Talerz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Schussel;

	visual 				=	"ItMi_Stuff_Plate_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[5]				= ItMi_Stuff_Plate_01_description;
};

/******************************************************************************************/
INSTANCE ItMi_Stuff_Candel_01 (C_Item)
{
	name 				=	"�wiecznik";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Kerzenstander;

	visual 				=	"ItMi_Stuff_Candel_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
const string ItMi_Stuff_Cup_01_description = "Widzia� wiele toast�w. Cz�sto jedyny luksus w skromnym dobytku Kopacza.";
const string ItMi_Stuff_Cup_01_description_1 = "Widzia� wiele toast�w.";
const string ItMi_Stuff_Cup_01_description_2 = "Cz�sto jedyny luksus w skromnym dobytku Kopacza.";
INSTANCE ItMi_Stuff_Cup_01 (C_Item)
{
	name 				=	"Kubek";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Becher;

	visual 				=	"ItMi_Stuff_Cup_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= ItMi_Stuff_Cup_01_description_1;
	TEXT[5]				= ItMi_Stuff_Cup_01_description_2;
};

/******************************************************************************************/
INSTANCE ItMi_Stuff_Cup_02 (C_Item)
{
	name 				=	"Puchar";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Pokal;

	visual 				=	"ItMi_Stuff_Cup_02.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMi_Stuff_Silverware_01 (C_Item)
{
	name 				=	"Sztu�ce";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Besteck;

	visual 				=	"ItMi_Stuff_Silverware_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMi_Stuff_Pan_01 (C_Item)
{
	name 				=	"Patelnia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Pfanne;

	visual 				=	"ItMi_Stuff_Pan_01.3DS";
	material 			=	MAT_METAL;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
const string ItMi_Stuff_Mug_01_description = "Wszechobecne we wszystkich obozach. Te proste dzbany s� kluczowe w dystrybucji wody.";
const string ItMi_Stuff_Mug_01_description_1 = "Wszechobecne we wszystkich obozach. Te proste dzbany";
const string ItMi_Stuff_Mug_01_description_2 = "s� kluczowe w dystrybucji wody.";
INSTANCE ItMi_Stuff_Mug_01 (C_Item)
{
	name 				=	"Dzban";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Krug;

	visual 				=	"ItMi_Stuff_Mug_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= ItMi_Stuff_Mug_01_description_1;
	TEXT[5]				= ItMi_Stuff_Mug_01_description_2;
};

/******************************************************************************************/
const string ItMi_Stuff_Amphore_01_description = "Naczynia b�d�ce wspomnieniem po handlu przed powstaniem Kolonii, pe�ni� obecnie wiele funkcji w obozie.";
const string ItMi_Stuff_Amphore_01_description_1 = "Naczynia b�d�ce wspomnieniem po handlu przed powstaniem";
const string ItMi_Stuff_Amphore_01_description_2 = "Kolonii, pe�ni� obecnie wiele funkcji w obozie.";
INSTANCE ItMi_Stuff_Amphore_01 (C_Item)
{
	name 				=	"Amfora";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Amphore;

	visual 				=	"ItMi_Stuff_Amphore_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= ItMi_Stuff_Amphore_01_description_1;
	TEXT[5]				= ItMi_Stuff_Amphore_01_description_2;
};

/******************************************************************************************/
INSTANCE ItMi_Stuff_Idol_Ogront_01 (C_Item)
{
	name 				=	"Pos��ek";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Statue;

	visual 				=	"ItMi_Stuff_Idol_Ogront_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};


/******************************************************************************************/
//ALCHIMIE//
/******************************************************************************************/
INSTANCE ItMi_Alchemy_Sulphur_01 (C_Item)
{
	name 				=	"Siarka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Schwefel;

	visual 				=	"ItMi_Alchemy_Sulphur_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMi_Alchemy_Quicksilver_01 (C_Item)
{
	name 				=	"Rt��";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Quecksilber;

	visual 				=	"ItMi_Alchemy_Quicksilver_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMi_Alchemy_Salt_01 (C_Item)
{
	name 				=	"S�l";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Salz;

	visual 				=	"ItMi_Alchemy_Salt_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMi_Alchemy_Syrianoil_01 (C_Item)
{
	name 				=	"Olej syrianiczny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Ol;

	visual 				=	"ItMi_Alchemy_Syrianoil_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMi_Alchemy_Moleratlubric_01 (C_Item)
{
	name 				=	"Sad�o kretoszczura";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Moleratfett;

	visual 				=	"ItMi_Alchemy_Moleratlubric_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

/******************************************************************************************/
INSTANCE ItMi_Alchemy_Alcohol_01 (C_Item)
{
	name 				=	"Czysty alkohol";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Alcohol;

	visual 				=	"ItMi_Alchemy_Alcohol_01.3DS";
	material 			=	MAT_CLAY;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};




/*******************************************************************************************
**	Musikinstrumente InExtremo    					  		  							  **
*******************************************************************************************/

// Werden nicht gebraucht, wenn den Jungs die Instrumente in der Hand "kleben"!
/*
INSTANCE ItMiLuteIE (C_Item)
{
	name 				=	"Laute";

	mainflag 			=	ITEM_KAT_NONE;

	value 				=	1;

	visual 				=	"ItMi_Lute_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

INSTANCE ItMiBluepipe(C_Item)
{
	name 				=	"Dudelsack";

	mainflag 			=	ITEM_KAT_NONE;

	value 				=	1;

	visual 				=	"ItMi_Bagpipe_Blue_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

INSTANCE ItMiYellowpipe (C_Item)
{
	name 				=	"Dudelsack";

	mainflag 			=	ITEM_KAT_NONE;

	value 				=	1;

	visual 				=	"ItMi_Bagpipe_Yellow_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

INSTANCE ItMiDrumscheit (C_Item)
{
	name 				=	"Drumscheit";

	mainflag 			=	ITEM_KAT_NONE;

	value 				=	1;

	visual 				=	"ItMi_Drumscheit_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

INSTANCE ItMiDrumstick (C_Item)
{
	name 				=	"Trommelst�cke";

	mainflag 			=	ITEM_KAT_NONE;

	value 				=	1;

	visual 				=	"ItMi_Drumstick_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

INSTANCE ItMiCello (C_Item)
{
	name 				=	"Cello";

	mainflag 			=	ITEM_KAT_NONE;

	value 				=	1;

	visual 				=	"ItMi_Cello_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

INSTANCE ItMiCellobow (C_Item)
{
	name 				=	"Cello Bogen";

	mainflag 			=	ITEM_KAT_NONE;

	value 				=	1;

	visual 				=	"ItMi_Cellobow_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

INSTANCE ItMiHarp (C_Item)
{
	name 				=	"Harfe";

	mainflag 			=	ITEM_KAT_NONE;

	value 				=	1;

	visual 				=	"ItMi_Harp_01.3DS";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= Value_Schlussel;
};

*/
