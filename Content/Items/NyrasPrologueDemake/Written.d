const string ItWr_Scroll_Mysteriousnote_Description = "Enigmatyczny obrazek o nieznanym przeznaczeniu, prawdopodobnie narysowany przez Jorika.";
const string ItWr_Scroll_Mysteriousnote_Description_1 = "Enigmatyczny obrazek o nieznanym przeznaczeniu,";
const string ItWr_Scroll_Mysteriousnote_Description_2 = "prawdopodobnie narysowany przez Jorika.";
const string ItWr_Scroll_Mysteriousnote = "Tajemnicza notatka";
INSTANCE ItWrJorik(C_Item)
{	
	name 					=	ItWr_Scroll_Mysteriousnote;
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	visual 					=	"ItWr_Scroll_01.3DS";
	material 				=	MAT_LEATHER;

	description				= Item_Junk;
	if (Hlp_StrCmp(ItWr_Scroll_Mysteriousnote_Description_1, ""))
	{
		TEXT[4] = ItWr_Scroll_Mysteriousnote_Description;
	} else
	{
		TEXT[4] = ItWr_Scroll_Mysteriousnote_Description_1;
		TEXT[5] = ItWr_Scroll_Mysteriousnote_Description_2;
	};
};
