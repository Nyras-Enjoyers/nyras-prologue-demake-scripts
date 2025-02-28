const string ItWr_Scroll_Mysteriousnote_Description = "Enigmatyczny obrazek o nieznanym przeznaczeniu, prawdopodobnie narysowany przez Jorika";
const string ItWr_Scroll_Mysteriousnote = "Tajemnicza notatka";
INSTANCE ItWrJorik(C_Item)
{	
	name 					=	ItWr_Scroll_Mysteriousnote;
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	visual 					=	"ItWr_Scroll_01.3DS";
	material 				=	MAT_LEATHER;

	description				= Item_Junk;
	TEXT[4] = ItWr_Scroll_Mysteriousnote_Description;
};
