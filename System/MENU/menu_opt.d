
instance MENU_OPTIONS(C_MENU_BLACKALPHA_BACKGROUND)
{
	items[1] = "MENUITEM_OPT_HEADING";
	items[2] = "MENUITEM_OPT_GAME";
	items[3] = "MENUITEM_OPT_GRAPHICS";
	items[4] = "MENUITEM_OPT_VIDEO";
	items[5] = "MENUITEM_OPT_AUDIO";
	items[6] = "MENUITEM_OPT_CONTROLS";
	items[7] = "MENUITEM_PERF";
	items[8] = "MENUITEM_PERF_CHOICE";
	items[9] = "MENUITEM_OPT_BACK";

	flags = flags | MENU_SHOW_INFO;
};

instance MENUITEM_OPT_HEADING(C_MENU_ITEM_PANELOPT_DEF)
{
	text[0] = "USTAWIENIA";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_GAME(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_GAME_TEXT_0;
	text[1] = "RÛøne ustawienia dotyczπce gry.";
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 0);
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_GAME";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_GRAPHICS(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_GRAPHICS_TEXT_0;
	text[1] = "SzczegÛ≥owoúÊ obrazu i efekty specjalne.";
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 1);
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_GRAPHICS";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_VIDEO(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_VIDEO_TEXT_0;
	text[1] = "Karta graficzna, rozdzielczoúÊ i jasnoúÊ.";
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 2);
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_VIDEO";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_AUDIO(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_AUDIO_TEXT_0;
	text[1] = "Muzyka, mowa i efekty düwiÍkowe.";
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 3);
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_AUDIO";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_CONTROLS(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_CONTROLS_TEXT_0;
	text[1] = "Ustawienia klawiatury.";
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 4);
	onselaction[0] = SEL_ACTION_STARTMENU;
	onselaction_s[0] = "MENU_OPT_CONTROLS";
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_PERF(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_PERF_TEXT_0;
	text[1] = "Dostosowanie wydajnoúci i jakoúci obrazu.";
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 5);
	onselaction[0] = SEL_ACTION_UNDEF;
	oneventaction[1] = update_perfoptions;
	flags = flags | IT_EFFECTS_NEXT;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_PERF_CHOICE(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC2;
	text[0] = MENUITEM_PERF_CHOICE_TEXT_0;
	type = MENU_ITEM_CHOICEBOX;
	fontname = MENU_FONT_SMALL;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 5) + 650;
	dimx = 2048;
	dimy = 350;
	onchgsetoption = "perfQualityIndex";
	onchgsetoptionsection = "INTERNAL";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_OPT_BACK(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_COMMON_BACK_TEXT;
	posy = MENU_BACK_Y;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_OPT_HEADING_GAME(C_MENU_ITEM_PANELOPT_DEF)
{
	text[0] = "USTAWIENIA GRY";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_OPT_HEADING_GRAPHICS(C_MENU_ITEM_PANELOPT_DEF)
{
	text[0] = "USTAWIENIA GRAFICZNE";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_OPT_HEADING_VIDEO(C_MENU_ITEM_PANELOPT_DEF)
{
	text[0] = "USTAWIENIA OBRAZU";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_OPT_HEADING_AUDIO(C_MENU_ITEM_PANELOPT_DEF)
{
	text[0] = "USTAWIENIA DèWI KU";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_OPT_HEADING_CONTROLS(C_MENU_ITEM_PANELOPT_DEF)
{
	text[0] = "USTAWIENIA KLAWIATURY";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	posx -= MENUITEM_FAKE_OPT_HEADING_CONTROLS_ADDSPACE; // Move to left
	dimx += 2 * MENUITEM_FAKE_OPT_HEADING_CONTROLS_ADDSPACE; // Both sides
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};


/*
 *  Fake options menu for displaying only
 */
instance MENUITEM_FAKE_OPT_GAME(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_GAME_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 0);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_OPT_GRAPHICS(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_GRAPHICS_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 1);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_OPT_VIDEO(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_VIDEO_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 2);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_OPT_AUDIO(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_AUDIO_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 3);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_OPT_CONTROLS(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_CONTROLS_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 4);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_PERF(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_PERF_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 5);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_FAKE_PERF_CHOICE(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC2;
	text[0] = MENUITEM_PERF_CHOICE_TEXT_0;
	type = MENU_ITEM_CHOICEBOX;
	fontname = MENU_FONT_SMALL;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 5) + 650;
	dimx = 2048;
	dimy = 350;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

/*
 *  Fake options menu for displaying only
 *   - the bright versions to imitate a selection
 */
instance MENUITEM_FAKE_BRIGHT_OPT_GAME(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_GAME_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 0);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
	fontname = MENU_FONT_BRIGHT_20;
};

instance MENUITEM_FAKE_BRIGHT_OPT_GRAPHICS(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_GRAPHICS_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 1);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
	fontname = MENU_FONT_BRIGHT_20;
};

instance MENUITEM_FAKE_BRIGHT_OPT_VIDEO(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_VIDEO_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 2);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
	fontname = MENU_FONT_BRIGHT_20;
};

instance MENUITEM_FAKE_BRIGHT_OPT_AUDIO(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_AUDIO_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 3);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
	fontname = MENU_FONT_BRIGHT_20;
};

instance MENUITEM_FAKE_BRIGHT_OPT_CONTROLS(C_MENU_ITEM_PANELOPT_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENUITEM_OPT_CONTROLS_TEXT_0;
	posy = MENU_OPT_START_Y + (MENU_OPT_DY * 4);
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
	fontname = MENU_FONT_BRIGHT_20;
};

func int update_perfoptions()
{
	Apply_Options_Performance();
	return 0;
};
