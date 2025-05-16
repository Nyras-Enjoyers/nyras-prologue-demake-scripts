// Internal constants
const int MAX_USERSTRINGS = 10;
const int MAX_ITEMS = 150;
const int MAX_EVENTS = 10;
const int MAX_SEL_ACTIONS = 5;
const int MAX_USERVARS = 4;
const int SEL_ACTION_UNDEF = 0;
const int SEL_ACTION_BACK = 1;
const int SEL_ACTION_STARTMENU = 2;
const int SEL_ACTION_STARTITEM = 3;
const int SEL_ACTION_CLOSE = 4;
const int SEL_ACTION_CONCOMMANDS = 5;
const int SEL_ACTION_PLAY_SOUND = 6;
const int SEL_ACTION_EXECCOMMANDS = 7;
const int MENU_ITEM_UNDEF = 0;
const int MENU_ITEM_TEXT = 1;
const int MENU_ITEM_SLIDER = 2;
const int MENU_ITEM_INPUT = 3;
const int MENU_ITEM_CURSOR = 4;
const int MENU_ITEM_CHOICEBOX = 5;
const int MENU_ITEM_BUTTON = 6;
const int MENU_ITEM_LISTBOX = 7;
const int IT_CHROMAKEYED = 1;
const int IT_TRANSPARENT = 2;
const int IT_SELECTABLE = 4;
const int IT_MOVEABLE = 8;
const int IT_TXT_CENTER = 16;
const int IT_DISABLED = 32;
const int IT_FADE = 64;
const int IT_EFFECTS_NEXT = 128;
const int IT_ONLY_OUT_GAME = 256;
const int IT_ONLY_IN_GAME = 512;
const int IT_PERF_OPTION = 1 << 10;
const int IT_MULTILINE = 1 << 11;
const int IT_NEEDS_APPLY = 1 << 12;
const int IT_NEEDS_RESTART = 1 << 13;
const int IT_EXTENDED_MENU = 1 << 14;
const int MENU_OVERTOP = 1;
const int MENU_EXCLUSIVE = 2;
const int MENU_NOANI = 4;
const int MENU_DONTSCALE_DIM = 8;
const int MENU_DONTSCALE_POS = 16;
const int MENU_ALIGN_CENTER = 32;
const int MENU_SHOW_INFO = 64;
const int EVENT_UNDEF = 0;
const int EVENT_EXECUTE = 1;
const int EVENT_CHANGED = 2;
const int EVENT_LEAVE = 3;
const int EVENT_TIMER = 4;
const int EVENT_CLOSE = 5;
const int EVENT_INIT = 6;
const int EVENT_SEL_PREV = 7;
const int EVENT_SEL_NEXT = 8;
const int CLOSE_ITEM = 1;

class C_MENU_ITEM
{
	var string fontname;
	var string text[10];
	var string backpic;
	var string alphamode;
	var int alpha;
	var int type;
	var int onselaction[5];
	var string onselaction_s[5];
	var string onchgsetoption;
	var string onchgsetoptionsection;
	var func oneventaction[10];
	var int posx;
	var int posy;
	var int dimx;
	var int dimy;
	var float sizestartscale;
	var int flags;
	var float opendelaytime;
	var float openduration;
	var float userfloat[4];
	var string userstring[4];
	var int framesizex;
	var int framesizey;
};

class C_MENU
{
	var string backpic;
	var string backworld;
	var int posx;
	var int posy;
	var int dimx;
	var int dimy;
	var int alpha;
	var string musictheme;
	var int eventtimermsec;
	var string items[150];
	var int flags;
	var int defaultoutgame;
	var int defaultingame;
};

prototype C_MENU_ITEM_DEF(C_MENU_ITEM)
{
	fontname = MENU_FONT_DEFAULT;
	text[0] = "";
	alphamode = "BLEND";
	alpha = 255;
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = 0;
	dimx = -1;
	dimy = -1;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE;
	opendelaytime = 0.0;
	openduration = -1.0;
	sizestartscale = 1.0;
	userfloat[0] = 100.0;
	userfloat[1] = 200.0;
	onselaction[0] = SEL_ACTION_BACK;
	onchgsetoption = "";
	onchgsetoptionsection = "INTERNAL";
	framesizex = 0;
	framesizey = 0;
};

prototype C_MENU_DEF(C_MENU)
{
	posx = 0;
	posy = 0;
	dimx = 8191;
	dimy = 8191;
	alpha = 255;
	flags = MENU_EXCLUSIVE | MENU_DONTSCALE_DIM | MENU_ALIGN_CENTER;
	eventtimermsec = 1000;
	musictheme = "";
	defaultoutgame = -1;
	defaultingame = -1;
};


prototype C_MENU_BLACKALPHA_BACKGROUND(C_MENU)
{
	backpic = "";
	musictheme = "";
	eventtimermsec = 1000;
	posx = 0;
	posy = 0;
	dimx = 8191;
	dimy = 8191;
	alpha = 254;
	items[0] = "MENUITEM_BLACKALPHA_BACKGROUND"; // A black background with alpha channel
	flags = MENU_EXCLUSIVE;
	defaultoutgame = -1;
	defaultingame = -1;
};

prototype C_MENU_OPT_WITH_FAKE_SIDEPANEL(C_MENU)
{
	backpic = "";
	musictheme = "";
	eventtimermsec = 1000;
	posx = 0;
	posy = 0;
	dimx = 8191;
	dimy = 8191;
	alpha = 254;
	items[0] = "MENUITEM_BLACKALPHA_BACKGROUND"; // A black background with alpha channel
	items[1] = "MENUITEM_FAKE_OPT_HEADING";
	items[2] = "MENUITEM_FAKE_OPT_GAME";
	items[3] = "MENUITEM_FAKE_OPT_GRAPHICS";
	items[4] = "MENUITEM_FAKE_OPT_VIDEO";
	items[5] = "MENUITEM_FAKE_OPT_AUDIO";
	items[6] = "MENUITEM_FAKE_OPT_CONTROLS";
	items[7] = "MENUITEM_FAKE_PERF";
	items[8] = "MENUITEM_FAKE_PERF_CHOICE";
	flags = MENU_EXCLUSIVE;
	defaultoutgame = -1;
	defaultingame = -1;
};

prototype C_MENU_ITEM_PANEL_DEF(C_MENU_ITEM)
{
	fontname = MENU_FONT_DEFAULT;
	text[0] = "";
	alphamode = "BLEND";
	alpha = 254;
	type = MENU_ITEM_TEXT;
	posx = MENU_MAIN_PANEL_X;
	posy = MENU_MAIN_Y;
	dimx = MENU_MAIN_PANEL_WIDTH;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE;
	opendelaytime = 0.0;
	openduration = -1.0;
	sizestartscale = 1.0;
	userfloat[0] = 100.0;
	userfloat[1] = 200.0;
	onselaction[0] = SEL_ACTION_BACK;
	onchgsetoption = "";
	onchgsetoptionsection = "INTERNAL";
	framesizex = 0;
	framesizey = 0;
};

prototype C_MENU_ITEM_PANELOPT_DEF(C_MENU_ITEM)
{
	fontname = MENU_FONT_DEFAULT;
	text[0] = "";
	alphamode = "BLEND";
	alpha = 254;
	type = MENU_ITEM_TEXT;
	
	posx = MENU_MAIN_PANEL_X;
	posy = MENU_MAIN_Y;
	dimx = MENU_MAIN_PANEL_WIDTH;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE;
	
	opendelaytime = 0.0;
	openduration = -1.0;
	sizestartscale = 1.0;
	userfloat[0] = 100.0;
	userfloat[1] = 200.0;
	onselaction[0] = SEL_ACTION_BACK;
	onchgsetoption = "";
	onchgsetoptionsection = "INTERNAL";
	framesizex = 0;
	framesizey = 0;
};

prototype C_MENU_ITEM_PANELLEAVEGAME_DEF(C_MENU_ITEM)
{
	fontname = MENU_FONT_DEFAULT;
	text[0] = "";
	alphamode = "BLEND";
	alpha = 254;
	type = MENU_ITEM_TEXT;
	posx = MENU_PANEL2_X;
	posy = MENU_PANEL2_Y;
	dimx = MENU_PANEL2_WIDTH;
	dimy = -1;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE;
	opendelaytime = 0.0;
	openduration = -1.0;
	sizestartscale = 1.0;
	userfloat[0] = 100.0;
	userfloat[1] = 200.0;
	onselaction[0] = SEL_ACTION_BACK;
	onchgsetoption = "";
	onchgsetoptionsection = "INTERNAL";
	framesizex = 0;
	framesizey = 0;
};

prototype C_MENU_ITEM_PANELREST_DEF(C_MENU_ITEM)
{
	fontname = MENU_FONT_DEFAULT;
	text[0] = "";
	alphamode = "BLEND";
	alpha = 254;
	type = MENU_ITEM_TEXT;
	posx = MENU_PANEL3_X;
	posy = MENU_PANEL3_Y;
	dimx = MENU_PANEL3_WIDTH;
	dimy = -1;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE;
	opendelaytime = 0.0;
	openduration = -1.0;
	sizestartscale = 1.0;
	userfloat[0] = 100.0;
	userfloat[1] = 200.0;
	onselaction[0] = SEL_ACTION_BACK;
	onchgsetoption = "";
	onchgsetoptionsection = "INTERNAL";
	framesizex = 0;
	framesizey = 0;
};

prototype C_MENU_ITEM_PANELREST_COL1_DEF(C_MENU_ITEM)
{
	fontname = MENU_FONT_DEFAULT;
	text[0] = "";
	alphamode = "BLEND";
	alpha = 254;
	type = MENU_ITEM_TEXT;
	posx = MENU_PANEL3_COL1_X;
	dimx = MENU_PANEL3_COL1_WIDTH;
	dimy = -1;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_SELECTABLE;
	opendelaytime = 0.0;
	openduration = -1.0;
	sizestartscale = 1.0;
	userfloat[0] = 100.0;
	userfloat[1] = 200.0;
	onselaction[0] = SEL_ACTION_BACK;
	onchgsetoption = "";
	onchgsetoptionsection = "INTERNAL";
	framesizex = 0;
	framesizey = 0;
};

prototype C_MENU_ITEM_PANELREST_SLIDER_DEF(C_MENU_ITEM)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	fontname = MENU_FONT_DEFAULT;
	text[0] = "";
	alphamode = "BLEND";
	alpha = 254;
	posx = MENU_PANEL3_COL2_X;
	posy = MENU_SLIDER_YPLUS;
	dimx = MENU_PANEL3_COL2_WIDTH;
	dimy = 350;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_TXT_CENTER;
	opendelaytime = 0.0;
	openduration = -1.0;
	sizestartscale = 1.0;
	userfloat[0] = 100.0;
	userfloat[1] = 200.0;
	onselaction[0] = SEL_ACTION_BACK;
	onchgsetoption = "";
	onchgsetoptionsection = "INTERNAL";
	framesizex = 0;
	framesizey = 0;
};

prototype C_MENU_ITEM_PANELREST_CHOICE_DEF(C_MENU_ITEM)
{
	text[0] = "";
	alphamode = "BLEND";
	alpha = 254;
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	fontname = MENU_FONT_SMALL;
	posx = MENU_PANEL3_COL2_X;
	posy = MENU_CHOICE_YPLUS;
	dimx = MENU_PANEL3_COL2_WIDTH;
	dimy = MENU_CHOICE_DY;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_TXT_CENTER;
	opendelaytime = 0.0;
	openduration = -1.0;
	sizestartscale = 1.0;
	userfloat[0] = 100.0;
	userfloat[1] = 200.0;
	onselaction[0] = SEL_ACTION_BACK;
	onchgsetoption = "";
	onchgsetoptionsection = "INTERNAL";
	framesizex = 0;
	framesizey = 0;
};
