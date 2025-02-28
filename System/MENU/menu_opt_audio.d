
instance MENU_OPT_AUDIO(C_MENU_OPT_WITH_FAKE_SIDEPANEL)
{
	items[1] = "MENUITEM_FAKE_OPT_HEADING_AUDIO";
	
	items[5] = "MENUITEM_FAKE_BRIGHT_OPT_AUDIO";
	
	items[9] = "MENUITEM_AUDIO_SFXVOL";
	items[10] = "MENUITEM_AUDIO_SFXVOL_SLIDER";
	items[11] = "MENUITEM_AUDIO_MUSICVOL";
	items[12] = "MENUITEM_AUDIO_MUSICVOL_SLIDER";
	items[13] = "MENUITEM_AUDIO_MUSIC";
	items[14] = "MENUITEM_AUDIO_MUSIC_CHOICE";
	items[15] = "MENUITEM_AUDIO_PROVIDER";
	items[16] = "MENUITEM_AUDIO_PROVIDER_CHOICE";
	items[17] = "MENUITEM_AUDIO_SPEEKER";
	items[18] = "MENUITEM_AUDIO_SPEEKER_CHOICE";
	items[19] = "MENUITEM_AUDIO_REVERB";
	items[20] = "MENUITEM_AUDIO_REVERB_CHOICE";
	items[21] = "MENUITEM_AUDIO_SAMPLERATE";
	items[22] = "MENUITEM_AUDIO_SAMPLERATE_CHOICE";
	items[23] = "MENUITEM_AUDIO_BACK";
	
	flags = flags | MENU_SHOW_INFO;
};

instance MENUITEM_AUDIO_HEADLINE(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "USTAWIENIA DèWI KU";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENUITEM_AUDIO_SFXVOL(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Efekty i mowa";
	text[1] = "G≥oúnoúÊ efektÛw düwiÍkowych i mowy.";
	posy = MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 0);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_SFXVOL_SLIDER(C_MENU_ITEM_PANELREST_SLIDER_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	posy += MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 0);
	onchgsetoption = "soundVolume";
	onchgsetoptionsection = "SOUND";
	userfloat[0] = 20;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_AUDIO_MUSICVOL(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "G≥oúnoúÊ muzyki";
	text[1] = "G≥oúnoúÊ muzyki w tle.";
	posy = MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 1);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_MUSICVOL_SLIDER(C_MENU_ITEM_PANELREST_SLIDER_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	posy += MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 1);
	onchgsetoption = "musicVolume";
	onchgsetoptionsection = "SOUND";
	userfloat[0] = 15;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
};

instance MENUITEM_AUDIO_MUSIC(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Muzyka";
	text[1] = "W≥πcza/wy≥πcza muzykÍ w tle.";
	posy = MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 2);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_MUSIC_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = MENU_NOYES;
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 2);
	onchgsetoption = "musicEnabled";
	onchgsetoptionsection = "SOUND";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_AUDIO_PROVIDER(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "èrÛd≥o düwiÍku";
	text[1] = "Zmiany uaktywniπ siÍ po ponownym uruchomieniu!";
	posy = MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 3);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_PROVIDER_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "1|2|3|4|5";
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 3);
	onchgsetoption = "soundProviderIndex";
	onchgsetoptionsection = "INTERNAL";
	oneventaction[6] = update_audiooptions;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_AUDIO_SPEEKER(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "G≥oúniki";
	text[1] = "";
	posy = MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 4);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_SPEEKER_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "2 g≥oúniki|S≥uchawki|Surround|4 g≥oúniki";
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 4);
	onchgsetoption = "soundSpeakerIndex";
	onchgsetoptionsection = "INTERNAL";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION;
};

instance MENUITEM_AUDIO_REVERB(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Pog≥os";
	text[1] = "W≥πcza pog≥os w jaskiniach (wymaga ponownego uruchomienia).";
	posy = MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 5);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_REVERB_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "w≥.|wy≥.";
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 5);
	onchgsetoption = "soundUseReverb";
	onchgsetoptionsection = "SOUND";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_AUDIO_SAMPLERATE(C_MENU_ITEM_PANELREST_COL1_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "PrÛbkowanie";
	text[1] = "Zmiany uaktywniπ siÍ po ponownym uruchomieniu!";
	posy = MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 6);
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_AUDIO_SAMPLERATE_CHOICE(C_MENU_ITEM_PANELREST_CHOICE_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "22 khz|44 khz";
	fontname = MENU_FONT_SMALL;
	posy += MENU_START_AUDIO_Y + (MENU_PANEL3_STEP * 6);
	onchgsetoption = "soundSampleRateIndex";
	onchgsetoptionsection = "INTERNAL";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER | IT_PERF_OPTION | IT_NEEDS_RESTART;
};

instance MENUITEM_AUDIO_BACK(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_COMMON_BACK_TEXT;
	posy = MENU_BACK_Y;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};


func int update_audiooptions()
{
	Update_ChoiceBox("MENUITEM_AUDIO_PROVIDER_CHOICE");
	return 1;
};

func int apply_audioresolution()
{
	Apply_Options_Audio();
	return 0;
};

