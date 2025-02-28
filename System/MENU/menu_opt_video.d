
instance MENU_OPT_VIDEO(C_MENU_OPT_WITH_FAKE_SIDEPANEL)
{
	items[1] = "MENUITEM_FAKE_OPT_HEADING_VIDEO";
	
	items[4] = "MENUITEM_FAKE_BRIGHT_OPT_VIDEO";

	items[9] = "MENUITEM_VID_DEVICE";
	items[10] = "MENUITEM_VID_DEVICE_CHOICE";
	items[11] = "MENUITEM_VID_RESOLUTION";
	items[12] = "MENUITEM_VID_RESOLUTION_CHOICE";
	items[13] = "MENUITEM_VID_BRIGHTNESS";
	items[14] = "MENUITEM_VID_BRIGHTNESS_SLIDER";
	items[15] = "MENUITEM_VID_CONTRAST";
	items[16] = "MENUITEM_VID_CONTRAST_SLIDER";
	items[17] = "MENUITEM_VID_GAMMA";
	items[18] = "MENUITEM_VID_GAMMA_SLIDER";
	items[19] = "MENUITEM_VID_BACK";
	
	flags = flags | MENU_SHOW_INFO;
};

instance MENUITEM_VID_HEADLINE(C_MENU_ITEM_PANELREST_DEF)
{
	text[0] = "USTAWIENIA OBRAZU";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_VID_DEVICE(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Karta graf.";
	text[1] = "Zmiany uaktywni¹ siê po ponownym uruchomieniu!";
	posy = MENU_START_VIDEO_Y + (MENU_DY * 0);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_VID_DEVICE_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	text[0] = "";
	backpic = MENU_CHOICE_BACK_PIC2;
	type = MENU_ITEM_CHOICEBOX;
	fontname = MENU_FONT_SMALL;
	posx -= 512 + 256;
	dimx += 1024;
	posy += MENU_START_VIDEO_Y + (MENU_DY * 0);
	onchgsetoption = "zVidDevice";
	onchgsetoptionsection = "VIDEO";
	oneventaction[6] = update_videooptions;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_NEEDS_RESTART;
};

instance MENUITEM_VID_RESOLUTION(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Rozdzielczoœæ";
	text[1] = "PotwierdŸ wybór naciskaj¹c ENTER.";
	posy = MENU_START_VIDEO_Y + (MENU_DY * 1);
	onselaction[0] = SEL_ACTION_UNDEF;
	oneventaction[1] = apply_videoresolution;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_VID_RESOLUTION_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	text[0] = "";
	backpic = MENU_CHOICE_BACK_PIC2;
	type = MENU_ITEM_CHOICEBOX;
	fontname = MENU_FONT_SMALL;
	posx -= 512 + 256;
	dimx += 1024;
	posy += MENU_START_VIDEO_Y + (MENU_DY * 1);
	onchgsetoption = "vidResIndex";
	onchgsetoptionsection = "INTERNAL";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_NEEDS_APPLY;
};

instance MENUITEM_VID_BRIGHTNESS(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Jasnoœæ";
	text[1] = "Jasnoœæ";
	posy = MENU_START_VIDEO_Y + (MENU_DY * 3);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_VID_BRIGHTNESS_SLIDER(C_MENU_ITEM_PANELREST_SLIDER_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	posy += MENU_START_VIDEO_Y + (MENU_DY * 3);
	onchgsetoption = "zVidBrightness";
	onchgsetoptionsection = "VIDEO";
	userfloat[0] = 35;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_VID_CONTRAST(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Kontrast";
	text[1] = "Kontrast";
	posy = MENU_START_VIDEO_Y + (MENU_DY * 4);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_VID_CONTRAST_SLIDER(C_MENU_ITEM_PANELREST_SLIDER_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	posy += MENU_START_VIDEO_Y + (MENU_DY * 4);
	onchgsetoption = "zVidContrast";
	onchgsetoptionsection = "VIDEO";
	userfloat[0] = 35;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_VID_GAMMA(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Gamma";
	text[1] = "Gamma";
	posy = MENU_START_VIDEO_Y + (MENU_DY * 5);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_VID_GAMMA_SLIDER(C_MENU_ITEM_PANELREST_SLIDER_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	posy += MENU_START_VIDEO_Y + (MENU_DY * 5);
	onchgsetoption = "zVidGamma";
	onchgsetoptionsection = "VIDEO";
	userfloat[0] = 35;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_VID_BACK(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_COMMON_BACK_TEXT;
	posy = MENU_BACK_Y;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};


func int update_videooptions()
{
	Update_ChoiceBox("MENUITEM_VID_DEVICE_CHOICE");
	Update_ChoiceBox("MENUITEM_VID_RESOLUTION_CHOICE");
	return 1;
};

func int apply_videoresolution()
{
	Apply_Options_Video();
	return 0;
};

