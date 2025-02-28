
instance MENU_OPT_CONTROLS(C_MENU_OPT_WITH_FAKE_SIDEPANEL)
{
	items[1] = "MENUITEM_FAKE_OPT_HEADING_CONTROLS";
	
	items[6] = "MENUITEM_FAKE_BRIGHT_OPT_CONTROLS";
	
	items[9] = "MENU_ITEM_KEY_UP";
	items[10] = "MENU_ITEM_KEY_DOWN";
	items[11] = "MENU_ITEM_KEY_LEFT";
	items[12] = "MENU_ITEM_KEY_RIGHT";
	items[13] = "MENU_ITEM_KEY_STRAFE_LEFT";
	items[14] = "MENU_ITEM_KEY_STRAFE_RIGHT";
	items[15] = "MENU_ITEM_KEY_WEAPON";
	items[16] = "MENU_ITEM_KEY_ACTION";
	items[17] = "MENU_ITEM_KEY_JUMPCLIMBSTRAFE";
	items[18] = "MENU_ITEM_KEY_RUNMODETOGGLE";
	items[19] = "MENU_ITEM_KEY_SNEAK";
	items[20] = "MENU_ITEM_KEY_LOOK";
	items[21] = "MENU_ITEM_KEY_LOOK_FP";
	items[22] = "MENU_ITEM_KEY_INVENTORY";
	items[23] = "MENU_ITEM_KEY_SCREEN_STATUS";
	items[24] = "MENU_ITEM_KEY_SCREEN_LOG";
	
	items[28] = "MENU_ITEM_INP_UP";
	items[29] = "MENU_ITEM_INP_DOWN";
	items[30] = "MENU_ITEM_INP_LEFT";
	items[31] = "MENU_ITEM_INP_RIGHT";
	items[32] = "MENU_ITEM_INP_STRAFE_LEFT";
	items[33] = "MENU_ITEM_INP_STRAFE_RIGHT";
	items[34] = "MENU_ITEM_INP_WEAPON";
	items[35] = "MENU_ITEM_INP_ACTION";
	items[36] = "MENU_ITEM_INP_JUMPCLIMBSTRAFE";
	items[37] = "MENU_ITEM_INP_RUNMODETOGGLE";
	items[38] = "MENU_ITEM_INP_SNEAK";
	items[39] = "MENU_ITEM_INP_LOOK";
	items[40] = "MENU_ITEM_INP_LOOK_FP";
	items[41] = "MENU_ITEM_INP_INVENTORY";
	items[42] = "MENU_ITEM_INP_SCREEN_STATUS";
	items[43] = "MENU_ITEM_INP_SCREEN_LOG";
	
	items[25] = "MENU_ITEM_CHG_KEYS_SET_DEFAULT";
	items[26] = "MENU_ITEM_CHG_KEYS_SET_ALTERNATIVE";
	items[27] = "MENUITEM_CHG_KEYS_BACK";
};

instance MENUITEM_PANEL4(C_MENU_ITEM_DEF)
{
	backpic = MENU_BLACK_ALPHA;
	posx = MENU_PANEL3_X;
	posy = MENU_PANEL3_Y - 512;
	dimx = MENU_PANEL3_WIDTH;
	dimy = MENU_PANEL3_HEIGHT + 1024;
	alphamode = "BLEND";
	alpha = 255;
	flags = flags | IT_TXT_CENTER;
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_CHG_KEYS_HEADLINE(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "USTAWIENIA KLAWIATURY";
	type = MENU_ITEM_TEXT;
	posy = MENU_TITLE_Y - 512;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

instance MENU_ITEM_KEY_UP(C_MENU_ITEM_DEF)
{
	text[0] = "Do przodu";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 0) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_UP";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_DOWN(C_MENU_ITEM_DEF)
{
	text[0] = "Do ty³u";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 1) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_DOWN";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_LEFT(C_MENU_ITEM_DEF)
{
	text[0] = "Obrót w lewo";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 2) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_LEFT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_RIGHT(C_MENU_ITEM_DEF)
{
	text[0] = "Obrót w prawo";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 3) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_RIGHT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_STRAFE_LEFT(C_MENU_ITEM_DEF)
{
	text[0] = "Krok w lewo";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 4) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_STRAFE_LEFT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_STRAFE_RIGHT(C_MENU_ITEM_DEF)
{
	text[0] = "Krok w prawo";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 5) + CTRL_GROUP1;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_STRAFE_RIGHT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_WEAPON(C_MENU_ITEM_DEF)
{
	text[0] = "Broñ";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 6) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_WEAPON";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_ACTION(C_MENU_ITEM_DEF)
{
	text[0] = "Dzia³anie";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 7) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_ACTION";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_JUMPCLIMBSTRAFE(C_MENU_ITEM_DEF)
{
	text[0] = "Skok/Odejœcie";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 8) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_JUMPCLIMBSTRAFE";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_RUNMODETOGGLE(C_MENU_ITEM_DEF)
{
	text[0] = "Bieg";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 9) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_RUNMODETOGGLE";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_SNEAK(C_MENU_ITEM_DEF)
{
	text[0] = "Skradanie siê";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 10) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_SNEAK";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_LOOK(C_MENU_ITEM_DEF)
{
	text[0] = "Rozgl¹danie siê";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 11) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_LOOK";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_LOOK_FP(C_MENU_ITEM_DEF)
{
	text[0] = "Widok z oczu postaci";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 12) + CTRL_GROUP2;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_LOOK_FP";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_INVENTORY(C_MENU_ITEM_DEF)
{
	text[0] = "Ekwipunek";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 13) + CTRL_GROUP3;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_INVENTORY";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_SCREEN_STATUS(C_MENU_ITEM_DEF)
{
	text[0] = "Wspó³czynniki";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 14) + CTRL_GROUP3;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_SCREEN_STATUS";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_KEY_SCREEN_LOG(C_MENU_ITEM_DEF)
{
	text[0] = "Notatki i zadania";
	text[1] = MENU_KEY_CONFIRM;
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 15) + CTRL_GROUP3;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "RUN MENU_ITEM_INP_SCREEN_LOG";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_INP_UP(C_MENU_ITEM_DEF)
{
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	text[1] = MENY_KEY_PRESS_GIVEN;
	type = MENU_ITEM_INPUT;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 0) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	onchgsetoption = "keyUp";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_DOWN(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 1) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyDown";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_LEFT(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 2) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyLeft";
	onchgsetoptionsection = "KEYS";
	flags = IT_CHROMAKEYED | IT_TRANSPARENT;
};

instance MENU_ITEM_INP_RIGHT(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 3) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyRight";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_STRAFE_LEFT(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 4) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyStrafeLeft";
	onchgsetoptionsection = "KEYS";
	flags = IT_CHROMAKEYED | IT_TRANSPARENT;
};

instance MENU_ITEM_INP_STRAFE_RIGHT(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 5) + CTRL_GROUP1;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyStrafeRight";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_WEAPON(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 6) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyWeapon";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_ACTION(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 7) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyAction";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_JUMPCLIMBSTRAFE(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 8) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keySMove";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_RUNMODETOGGLE(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 9) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keySlow";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_SNEAK(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 10) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keySneak";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_LOOK(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 11) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyLook";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_LOOK_FP(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 12) + CTRL_GROUP2;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyLookFP";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_INVENTORY(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 13) + CTRL_GROUP3;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyInventory";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_SCREEN_STATUS(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 14) + CTRL_GROUP3;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyShowStatus";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_INP_SCREEN_LOG(C_MENU_ITEM_DEF)
{
	type = MENU_ITEM_INPUT;
	text[1] = MENY_KEY_PRESS_GIVEN;
	posx = CTRL_SP1_2;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 15) + CTRL_GROUP3;
	dimx = CTRL_DIMX;
	dimy = 300;
	fontname = MENU_FONT_SMALL;
	backpic = MENU_CUSTOMINPUT_BACK_PIC;
	onchgsetoption = "keyShowLog";
	onchgsetoptionsection = "KEYS";
	flags = flags & ~IT_SELECTABLE;
};

instance MENU_ITEM_CHG_KEYS_SET_DEFAULT(C_MENU_ITEM_DEF)
{
	text[0] = "Domyœlne ustawienia";
	text[1] = "Przywraca domyœlne ustawienia klawiatury.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 16) + CTRL_GROUP4;
	dimy = 300;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "SETDEFAULT";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENU_ITEM_CHG_KEYS_SET_ALTERNATIVE(C_MENU_ITEM_DEF)
{
	text[0] = "Alternatywne ustawienia";
	text[1] = "Uaktywnia alternatywne ustawienia klawiatury.";
	posx = CTRL_SP1_1;
	posy = CTRL_Y_START + (CTRL_Y_STEP * 17) + CTRL_GROUP4;
	dimy = 300;
	onselaction[0] = SEL_ACTION_EXECCOMMANDS;
	onselaction_s[0] = "SETALTERNATIVE";
	fontname = MENU_FONT_SMALL;
	flags = flags;
};

instance MENUITEM_CHG_KEYS_BACK(C_MENU_ITEM_PANELREST_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = MENU_COMMON_BACK_TEXT;
	posy = MENU_BACK_Y + 512;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};