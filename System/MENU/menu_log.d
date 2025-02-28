
instance MENU_LOG(C_MENU_DEF)
{
	items[0] = "MENU_ITEM_SEL_MISSIONS_ACT";
	items[1] = "MENU_ITEM_SEL_MISSIONS_OLD";
	items[2] = "MENU_ITEM_SEL_MISSIONS_FAILED";
	items[3] = "MENU_ITEM_SEL_LOG";
	items[4] = "MENU_ITEM_DAY_TITLE";
	items[5] = "MENU_ITEM_TIME_TITLE";
	items[6] = "MENU_ITEM_DAY";
	items[7] = "MENU_ITEM_TIME";
	items[8] = "MENU_ITEM_LIST_MISSIONS_ACT";
	items[9] = "MENU_ITEM_LIST_MISSIONS_FAILED";
	items[10] = "MENU_ITEM_LIST_MISSIONS_OLD";
	items[11] = "MENU_ITEM_LIST_LOG";
	items[12] = "MENU_ITEM_CONTENT_VIEWER";
	posx = 0;
	dimx = 8191;
	dimy = 8191;
	backpic = LOG_BACK_PIC;
	flags = flags | MENU_OVERTOP | MENU_NOANI;
};


const int LOG_ITEM_X1 = 1200;
const int LOG_ITEM_DX1 = 1800;
const int LOG_ITEM_LIST_X = 3000;
const int LOG_ITEM_LIST_Y = 1000;
const int LOG_ITEM_LIST_HEIGHT = 6100;
const int LOG_ITEM_LIST_WIDTH = 4500;
const int LOG_DIM_Y = 1000;
const int LOG_ITEM_Y1 = 1500;
const int LOG_ITEM_DY = 1000;
const int LOG_ITEM_FRAMESIZEX = 250;
const int LOG_ITEM_ITEM_DAY_POSX = 1500;
const int LOG_ITEM_ITEM_DAY_POSY = 6000;
const int LOG_ITEM_ITEM_DAY_DIMX = 300;
const int LOG_ITEM_ITEM_DAY_TITLE_POSX = 1800;
const int LOG_ITEM_ITEM_TIME_POSX = 2200;
const int LOG_ITEM_ITEM_TIME_POSY = 6300;
const int LOG_ITEM_ITEM_TIME_TITLE_POSX = 1500;


instance MENU_ITEM_SEL_MISSIONS_ACT(C_MENU_ITEM_DEF)
{
	text[0] = "Bie¿¹ce\nMisje";
	posx = LOG_ITEM_X1;
	posy = LOG_ITEM_Y1;
	dimx = LOG_ITEM_DX1;
	dimy = LOG_DIM_Y;
	fontname = LOG_FONT_DEFAULT;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE | IT_MULTILINE | IT_TXT_CENTER;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "EFFECTS MENU_ITEM_LIST_MISSIONS_ACT";
};

instance MENU_ITEM_SEL_MISSIONS_OLD(C_MENU_ITEM_DEF)
{
	text[0] = "Zakoñczone\nMisje";
	posx = LOG_ITEM_X1;
	posy = LOG_ITEM_Y1 + 1 * LOG_DIM_Y;
	dimx = LOG_ITEM_DX1;
	dimy = LOG_DIM_Y;
	fontname = LOG_FONT_DEFAULT;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE | IT_MULTILINE | IT_TXT_CENTER;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "EFFECTS MENU_ITEM_LIST_MISSIONS_OLD";
};

instance MENU_ITEM_SEL_MISSIONS_FAILED(C_MENU_ITEM_DEF)
{
	text[0] = "Niezaliczone\nMisje";
	posx = LOG_ITEM_X1;
	posy = LOG_ITEM_Y1 + 2 * LOG_DIM_Y;
	dimx = LOG_ITEM_DX1;
	dimy = LOG_DIM_Y;
	fontname = LOG_FONT_DEFAULT;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE | IT_MULTILINE | IT_TXT_CENTER;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "EFFECTS MENU_ITEM_LIST_MISSIONS_FAILED";
};

instance MENU_ITEM_SEL_LOG(C_MENU_ITEM_DEF)
{
	text[0] = "Informacje\nogólne";
	posx = LOG_ITEM_X1;
	posy = LOG_ITEM_Y1 + 3 * LOG_DIM_Y;
	dimx = LOG_ITEM_DX1;
	dimy = LOG_DIM_Y;
	fontname = LOG_FONT_DEFAULT;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE | IT_MULTILINE | IT_TXT_CENTER;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "EFFECTS MENU_ITEM_LIST_LOG";
};

instance MENU_ITEM_LIST_MISSIONS_ACT(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_LISTBOX;
	text[0] = "Act Missions";
	posx = LOG_ITEM_LIST_X;
	posy = LOG_ITEM_LIST_Y;
	dimx = LOG_ITEM_LIST_WIDTH;
	dimy = LOG_ITEM_LIST_HEIGHT;
	fontname = LOG_FONT_DEFAULT;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT | IT_EFFECTS_NEXT;
	flags = flags & ~IT_SELECTABLE;
	flags = flags & ~IT_TXT_CENTER;
	userstring[0] = "CURRENTMISSIONS";
	framesizex = LOG_ITEM_FRAMESIZEX;
	framesizey = 0;
};

instance MENU_ITEM_LIST_MISSIONS_FAILED(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_LISTBOX;
	text[0] = "Old Missions";
	posx = LOG_ITEM_LIST_X;
	posy = LOG_ITEM_LIST_Y;
	dimx = LOG_ITEM_LIST_WIDTH;
	dimy = LOG_ITEM_LIST_HEIGHT;
	fontname = LOG_FONT_DEFAULT;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT | IT_EFFECTS_NEXT;
	flags = flags & ~IT_SELECTABLE;
	flags = flags & ~IT_TXT_CENTER;
	userstring[0] = "OLDMISSIONS";
	framesizex = LOG_ITEM_FRAMESIZEX;
	framesizey = 0;
};

instance MENU_ITEM_LIST_MISSIONS_OLD(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_LISTBOX;
	text[0] = "Failed Missions";
	posx = LOG_ITEM_LIST_X;
	posy = LOG_ITEM_LIST_Y;
	dimx = LOG_ITEM_LIST_WIDTH;
	dimy = LOG_ITEM_LIST_HEIGHT;
	fontname = LOG_FONT_DEFAULT;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT | IT_EFFECTS_NEXT;
	flags = flags & ~IT_SELECTABLE;
	flags = flags & ~IT_TXT_CENTER;
	userstring[0] = "FAILEDMISSIONS";
	framesizex = LOG_ITEM_FRAMESIZEX;
	framesizey = 0;
};

instance MENU_ITEM_LIST_LOG(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_LISTBOX;
	text[0] = "Log";
	posx = LOG_ITEM_LIST_X;
	posy = LOG_ITEM_LIST_Y;
	dimx = LOG_ITEM_LIST_WIDTH;
	dimy = LOG_ITEM_LIST_HEIGHT;
	fontname = LOG_FONT_DEFAULT;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT | IT_EFFECTS_NEXT;
	flags = flags & ~IT_SELECTABLE;
	flags = flags & ~IT_TXT_CENTER;
	userstring[0] = "LOG";
	framesizex = LOG_ITEM_FRAMESIZEX;
	framesizey = 0;
};

instance MENU_ITEM_CONTENT_VIEWER(C_MENU_ITEM_DEF)
{
	text[0] = "no content";
	posx = 0;
	posy = 0;
	dimx = 8191;
	dimy = 8191;
	fontname = LOG_FONT_VIEWER;
	flags = flags | IT_CHROMAKEYED | IT_TRANSPARENT | IT_MULTILINE;
	flags = flags & ~IT_SELECTABLE;
	framesizex = 800;
	framesizey = 1000;
	backpic = LOG_VIEWER_BACK_PIC;
};

instance MENU_ITEM_DAY_TITLE(C_MENU_ITEM_DEF)
{
	text[0] = "Dzieñ";
	posx = LOG_ITEM_ITEM_DAY_TITLE_POSX;
	posy = LOG_ITEM_ITEM_DAY_POSY;
	fontname = LOG_FONT_DATETIME;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_TIME_TITLE(C_MENU_ITEM_DEF)
{
	text[0] = "Czas:";
	posx = LOG_ITEM_ITEM_TIME_TITLE_POSX;
	posy = LOG_ITEM_ITEM_TIME_POSY;
	fontname = LOG_FONT_DATETIME;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_DAY(C_MENU_ITEM_DEF)
{
	text[0] = "XX.";
	posx = LOG_ITEM_ITEM_DAY_POSX;
	posy = LOG_ITEM_ITEM_DAY_POSY;
	dimx = LOG_ITEM_ITEM_DAY_DIMX;
	fontname = LOG_FONT_DATETIME;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_TIME(C_MENU_ITEM_DEF)
{
	text[0] = "XX:XX";
	posx = LOG_ITEM_ITEM_TIME_POSX;
	posy = LOG_ITEM_ITEM_TIME_POSY;
	fontname = LOG_FONT_DATETIME;
	flags = flags & ~IT_SELECTABLE;
};

