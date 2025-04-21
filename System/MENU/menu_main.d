
instance MENU_MAIN(C_MENU_DEF)
{
	musictheme = "SYS_Menu";
	
	// items[0] = "MENUITEM_MAIN_HEADLINE";
	items[0] = "MENUITEM_MAIN_HEADLINE2"; // Shadow of the logo
	items[1] = "MENUITEM_MAIN_RESUME";
	items[2] = "MENUITEM_MAIN_NEWGAME";
	items[3] = "MENUITEM_MAIN_SAVEGAME_SAVE";
	items[4] = "MENUITEM_MAIN_SAVEGAME_LOAD";
	items[5] = "MENUITEM_MAIN_OPTIONS";
	items[6] = "MENUITEM_MAIN_EXIT";

	defaultingame = 3; // New game and resume are blocked out game by a IT_ONLY_IN_GAME flag.
	
	flags = MENU_SHOW_INFO | MENU_EXCLUSIVE;
};

instance MENUITEM_MAIN_HEADLINE2(C_MENU_ITEM_DEF)
{
	backpic = MENU_LOGO_TOP;
	posx = MENU_MAIN_LOGO_X;
	posy = MENU_MAIN_LOGO_Y;
	dimx = MENU_MAIN_LOGO_WIDTH;
	dimy = MENU_MAIN_LOGO_HEIGHT;
	alphamode = "NONE";
	flags = flags | IT_TXT_CENTER;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_MAIN_HEADLINE(C_MENU_ITEM_DEF)
{
	backpic = MENU_LOGO_SHADOW_TOP;
	posx = MENU_MAIN_LOGO_X;
	posy = MENU_MAIN_LOGO_Y;
	dimx = MENU_MAIN_LOGO_WIDTH;
	dimy = MENU_MAIN_LOGO_HEIGHT;
	alphamode = "BLEND";
	alpha = 220; // Shadow
	flags = flags | IT_TXT_CENTER;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_MAIN_RESUME(C_MENU_ITEM_PANEL_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_MAIN_RESUME_TITLE;
	text[1] = MENU_MAIN_RESUME_TEXT;
	posy = MENU_MAIN_Y;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER | IT_ONLY_IN_GAME;
};

instance MENUITEM_MAIN_NEWGAME(C_MENU_ITEM_PANEL_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_MAIN_NEW_TITLE;
	text[1] = MENU_MAIN_NEW_TEXT;
	posy = MENU_MAIN_Y + MENU_MAIN_DY;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "NEW_GAME";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MAIN_SAVEGAME_SAVE(C_MENU_ITEM_PANEL_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_MAIN_SAVE_TITLE;
	text[1] = MENU_MAIN_SAVE_TEXT;
	posy = MENU_MAIN_Y + 2 * MENU_MAIN_DY;
	onselaction_s[0] = "MENU_SAVEGAME_SAVE";
	onselaction[0] = SEL_ACTION_STARTMENU;
	flags = flags | IT_TXT_CENTER | IT_ONLY_IN_GAME;
};

instance MENUITEM_MAIN_SAVEGAME_LOAD(C_MENU_ITEM_PANEL_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_MAIN_LOAD_TITLE;
	text[1] = MENU_MAIN_LOAD_TEXT;
	posy = MENU_MAIN_Y + 3 * MENU_MAIN_DY;
	onselaction_s[0] = "MENU_SAVEGAME_LOAD";
	onselaction[0] = SEL_ACTION_STARTMENU;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MAIN_OPTIONS(C_MENU_ITEM_PANEL_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_MAIN_OPTS_TITLE;
	text[1] = MENU_MAIN_OPTS_TEXT;
	posy = MENU_MAIN_Y + 4 * MENU_MAIN_DY;
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPTIONS";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MAIN_EXIT(C_MENU_ITEM_PANEL_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_MAIN_QUIT_TITLE;
	text[1] = MENU_MAIN_QUIT_TEXT;
	posy = MENU_MAIN_Y + 6 * MENU_MAIN_DY; // Not 5, to keep a distance like in NP (Nyras Prologue).
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_LEAVE_GAME"; // --> Menu_Misc.d
	flags = flags | IT_TXT_CENTER;
};
