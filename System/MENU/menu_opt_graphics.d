
instance MENU_OPT_GRAPHICS(C_MENU_OPT_WITH_FAKE_SIDEPANEL)
{
	items[1] = "MENUITEM_FAKE_OPT_HEADING_GRAPHICS";
	
	items[3] = "MENUITEM_FAKE_BRIGHT_OPT_GRAPHICS";
	
	items[9] = "MENUITEM_GRA_TEXQUAL";
	items[10] = "MENUITEM_GRA_TEXQUAL_SLIDER";
	items[11] = "MENUITEM_GRA_MODEL_DETAIL";
	items[12] = "MENUITEM_GRA_MODEL_DETAIL_SLIDER";
	items[13] = "MENUITEM_GRA_SIGHT";
	items[14] = "MENUITEM_GRA_SIGHT_CHOICE";
	// items[15] = "MENUITEM_GRA_SKY_EFFECTS";
	// items[16] = "MENUITEM_GRA_SKY_EFFECTS_CHOICE";
	items[15] = "MENUITEM_GRA_BACK";
	
	flags = flags | MENU_SHOW_INFO;
};

instance MENUITEM_GRA_HEADLINE(C_MENU_ITEM_PANELREST_DEF)
{
	text[0] = "USTAWIENIA GRAFICZNE";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GRA_TEXQUAL(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Tekstury";
	text[1] = "Szczegó³owoœæ tekstur.";
	posy = MENU_START_GRAPHICS_Y + (MENU_DY * 0);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GRA_TEXQUAL_SLIDER(C_MENU_ITEM_PANELREST_SLIDER_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	posy += MENU_START_GRAPHICS_Y + (MENU_DY * 0);
	onchgsetoption = "texDetailIndex";
	onchgsetoptionsection = "INTERNAL";
	userfloat[0] = 5.0;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_GRA_MODEL_DETAIL(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Modele";
	text[1] = "Szczegó³owoœæ modeli 3D.";
	posy = MENU_START_GRAPHICS_Y + (MENU_DY * 1);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GRA_MODEL_DETAIL_SLIDER(C_MENU_ITEM_PANELREST_SLIDER_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	posy += MENU_START_GRAPHICS_Y + (MENU_DY * 1);
	onchgsetoption = "modelDetail";
	onchgsetoptionsection = "PERFORMANCE";
	userfloat[0] = 10.0;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_PERF_OPTION;
};

instance MENUITEM_GRA_SIGHT(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Widok";
	text[1] = "Zasiêg generowania obrazu.";
	posy = MENU_START_GRAPHICS_Y + (MENU_DY * 2);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GRA_SIGHT_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "20%|40%|60%|80%|100%|120%|140%|160%|180%|200%|220%|240%|260%|280%|300%";
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_GRAPHICS_Y + (MENU_DY * 2);
	onchgsetoption = "sightValue";
	onchgsetoptionsection = "PERFORMANCE";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_PERF_OPTION | IT_TXT_CENTER;
};

instance MENUITEM_GRA_SKY_EFFECTS(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Niebo";
	text[1] = "Specjalne efekty nieba.";
	posy = MENU_START_GRAPHICS_Y + (MENU_DY * 3);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GRA_SKY_EFFECTS_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = MENU_NOYES;
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_GRAPHICS_Y + (MENU_DY * 3);
	onchgsetoption = "skyEffects";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_GRA_BACK(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_COMMON_BACK_TEXT;
	posy = MENU_BACK_Y;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};

