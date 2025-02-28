
instance MENU_OPT_GAME(C_MENU_OPT_WITH_FAKE_SIDEPANEL)
{
	items[1] = "MENUITEM_FAKE_OPT_HEADING_GAME";
	items[2] = "MENUITEM_FAKE_BRIGHT_OPT_GAME";
	
	items[9] = "MENUITEM_GAME_ANIMATE_WINDOWS";
	items[10] = "MENUITEM_GAME_ANIMATE_WINDOWS_CHOICE";
	items[11] = "MENUITEM_GAME_LOOKAROUND_INVERSE";
	items[12] = "MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE";
	items[13] = "MENUITEM_M";
	items[14] = "MENUITEM_M_CHOICE";
	items[15] = "MENUITEM_MSENSITIVITY";
	items[16] = "MENUITEM_MSENSITIVITY_SLIDER";
	items[17] = "MENUITEM_GAME_BLOOD";
	items[18] = "MENUITEM_GAME_BLOOD_CHOICE";
	items[19] = "MENUITEM_GAME_SUB_TITLES";
	items[20] = "MENUITEM_GAME_SUB_TITLES_CHOICE";
	items[21] = "MENUITEM_GAME_BACK";
	
	flags = flags | MENU_SHOW_INFO;
};

instance MENUITEM_GAME_HEADLINE(C_MENU_ITEM_PANELREST_DEF)
{
	text[0] = "USTAWIENIA GRY";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_SUB_TITLES(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Podpisy";
	text[1] = "Wyœwietlanie tekstów dialogów.";
	posx = MENU_PANEL3_COL1_X;
	posy = MENU_START_GAME_Y + (MENU_PANEL3_STEP * 6);
	dimx = MENU_PANEL3_COL1_WIDTH;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_SUB_TITLES_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = MENU_NOYES;
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_GAME_Y + (MENU_PANEL3_STEP * 6);
	onchgsetoption = "subTitles";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_ANIMATE_WINDOWS(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Animowane okna";
	text[1] = "Animowane okna dialogowe.";
	posx = MENU_PANEL3_COL1_X;
	posy = MENU_START_GAME_Y + (MENU_PANEL3_STEP * 1);
	dimx = MENU_PANEL3_COL1_WIDTH;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_ANIMATE_WINDOWS_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = MENU_NOYES;
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_GAME_Y + (MENU_PANEL3_STEP * 1);
	onchgsetoption = "animatedWindows";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_LOOKAROUND_INVERSE(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Odwrócona kamera";
	text[1] = "Odwrócone sterowanie kamer¹.";
	posx = MENU_PANEL3_COL1_X;
	posy = MENU_START_GAME_Y + (MENU_PANEL3_STEP * 2);
	dimx = MENU_PANEL3_COL1_WIDTH;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = MENU_NOYES;
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_GAME_Y + (MENU_PANEL3_STEP * 2);
	onchgsetoption = "camLookaroundInverse";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_M(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Mysz";
	text[1] = "Prze³¹cza sterowanie kamer¹ za pomoc¹ myszy.";
	posx = MENU_PANEL3_COL1_X;
	posy = MENU_START_GAME_Y + (MENU_PANEL3_STEP * 3);
	dimx = MENU_PANEL3_COL1_WIDTH;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_M_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = MENU_NOYES;
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_GAME_Y + (MENU_PANEL3_STEP * 3);
	onchgsetoption = "enableMouse";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_MSENSITIVITY(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Czu³oœæ myszy";
	text[1] = "";
	posx = MENU_PANEL3_COL1_X;
	posy = MENU_START_GAME_Y + (MENU_PANEL3_STEP * 4);
	dimx = MENU_PANEL3_COL1_WIDTH;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_MSENSITIVITY_SLIDER(C_MENU_ITEM_PANELREST_SLIDER_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	text[0] = "";
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_GAME_Y + (MENU_PANEL3_STEP * 4);
	onchgsetoption = "mouseSensitivity";
	onchgsetoptionsection = "GAME";
	userfloat[0] = 20;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GAME_BLOOD(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Krew";
	text[1] = "Krew w trakcie gry.";
	posx = MENU_PANEL3_COL1_X;
	posy = MENU_START_GAME_Y + (MENU_PANEL3_STEP * 5);
	dimx = MENU_PANEL3_COL1_WIDTH;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT | IT_EXTENDED_MENU;
};

instance MENUITEM_GAME_BLOOD_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "brak|ma³o|wiêcej|du¿o";
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_GAME_Y + (MENU_PANEL3_STEP * 5);
	onchgsetoption = "bloodDetail";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_EXTENDED_MENU;
};

instance MENUITEM_GAME_BACK(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_COMMON_BACK_TEXT;
	posy = MENU_BACK_Y;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};

