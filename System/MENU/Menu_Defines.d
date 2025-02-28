/*
 *  Textures
 */
const string MENU_ITEM_BACK_PIC = ""; // Optionally to use
const string MENU_CHOICE_BACK_PIC = "Menu_Choice_Back.tga";
const string MENU_CHOICE_BACK_PIC2 = "Menu_Choice_Back.tga"; // optionally create and use wide version
const string MENU_SLIDER_BACK_PIC = "Menu_Slider_Back.tga";
const string MENU_SLIDER_POS_PIC = "Menu_Slider_Pos.tga";
const string MENU_INPUT_BACK_PIC = ""; // Optionally to use (SaveGame)
const string MENU_CUSTOMINPUT_BACK_PIC = ""; // Optionally to use (Controls)s
const string LOG_BACK_PIC = "Log_Back.tga";
const string LOG_VIEWER_BACK_PIC = "Log_Paper.tga";
const string STAT_BACK_PIC = "Status_Back.tga";
const string MENU_LOGO_TOP = "MENU_GOTHICNYRASPROLOGUE2.tga";
const string MENU_LOGO_SHADOW_TOP = "Menu_GothicNyrasPrologueShadow.tga";
const string MENU_THUMBPICFIXED_PIC = "menu_thumbpicfixed.tga";
const string MENU_BLACK_ALPHA = "menu_black_alpha.tga";
const string MENU_BACK_PIC = ""; // some plugins assume, that it is declared

/*
 *  Textures: fonts
 */
const string MENU_FONT_DEFAULT = "font_old_20_white.tga";
const string MENU_FONT_BRIGHT_20 = "font_old_20_white_hi.tga";
const string MENU_FONT_SMALL = "font_old_10_white.tga";
const string MENU_FONT_BRIGHT = "font_old_10_white_hi.tga";
const string LOG_FONT_DEFAULT = "font_old_10_white.tga";
const string LOG_FONT_VIEWER = "font_old_10_white.tga";
const string LOG_FONT_DATETIME = "font_old_10_white_hi.tga";
const string STAT_FONT_DEFAULT = "font_old_10_white.tga";
const string STAT_FONT_SKILL = "font_old_10_white.tga";
const string STAT_FONT_TITLE = "font_old_10_white.tga";

/*
 *  Positions and dimensions
 *   - In the comments are historical values.
 */
const int MENU_SLIDER_YPLUS = 25;
const int MENU_CHOICE_DX = 2000;
const int MENU_CHOICE_DY = 300;
const int MENU_CHOICE_YPLUS = 125;
const int MENU_TITLE_X = 467;
const int MENU_TITLE_Y = 693;
const int MENU_START_Y = 1322; // (calculated by a hand from NP) // 2400;
const int MENU_START_GAME_Y = 1322; // (calculated by a hand from NP) // 2400;
const int MENU_START_AUDIO_Y = 1872; // MENU_START_Y + MENU_PANEL3_STEP; // (calculated by a hand from NP) // 2400;
const int MENU_START_GRAPHICS_Y = 1872; // MENU_START_Y + MENU_PANEL3_STEP // (calculated by a hand from NP) // 2400;
const int MENU_START_VIDEO_Y = 1872; // MENU_START_Y + MENU_PANEL3_STEP // (calculated by a hand from NP) // 2400;
const int MENU_BACK_Y = 6500;
const int MENU_DY = 650;
const int MENU_INFO_X = 0;
const int MENU_INFO_Y = 7780;
const int MENU_MAIN_PANEL_WIDTH = 1 << 11;
const int MENU_MAIN_PANEL_X = 256;
const int MENU_MAIN_LOGO_Y = 1150; // 1200 // 1400 // 400;
const int MENU_MAIN_LOGO_X = 154; // 384;
const int MENU_MAIN_LOGO_WIDTH = 2240; // 1792;
const int MENU_MAIN_LOGO_HEIGHT = 1350; // 1080 // 768;

const int MENU_PANEL1_WIDTH = 8191;
const int MENU_PANEL1_HEIGHT = 8191;
const int MENU_PANEL1_X = 0;
const int MENU_PANEL1_Y = 0;

const int MENU_PANEL2_X_CENTER = 5120;
const int MENU_PANEL2_Y_CENTER = 1 << 12;
const int MENU_PANEL2_WIDTH = 1 << 12;
const int MENU_PANEL2_HEIGHT = 1 << 12;
const int MENU_PANEL2_X = 3072;
const int MENU_PANEL2_Y = 1 << 11;
const int MENU_PANEL3_X_CENTER = 5120;
const int MENU_PANEL3_Y_CENTER = 1 << 12;
const int MENU_PANEL3_WIDTH = 5120;
const int MENU_PANEL3_HEIGHT = 6656;
const int MENU_PANEL3_X = 2560;
const int MENU_PANEL3_Y = 768;
const int MENU_PANEL3_STEP = 550;
const int MENU_PANEL3_COL1_WIDTH = 2560;
const int MENU_PANEL3_COL2_WIDTH = 1280;
const int MENU_PANEL3_MARGIN = 640;
const int MENU_PANEL3_COL1_X = 3200;
const int MENU_PANEL3_COL2_X = 5760;

const int MENU_MAIN_Y = 2500;
const int MENU_MAIN_DY = 550;

// Menu_Opt.d
const int MENU_OPT_DY = 550;
const int MENU_OPT_START_Y = 1900;
const int MENUITEM_FAKE_OPT_HEADING_CONTROLS_ADDSPACE = 150;

// Menu_Opt_Controls.d
const int CTRL_SP1_1 = 3200;
const int CTRL_SP1_2 = 5760;
const int CTRL_DIMX = 3200;
const int CTRL_Y_STEP = 260;
const int CTRL_Y_TITLE = 700;
const int CTRL_Y_START = 1220;
const int CTRL_GROUP1 = 0;
const int CTRL_GROUP2 = 260;
const int CTRL_GROUP3 = 520;
const int CTRL_GROUP4 = 780;
const int CTRL_GROUP5 = 1040;


/*
 * Saveload menu
 *  - measured by a hand
 *  - the texts written by a hand
 */

// Thumbpic + subtitle
const int MENUITEM_LOADSAVE_SPALTE_THUMBPICFIXED_POS_X = 5421; 
const int MENUITEM_LOADSAVE_SPALTE_THUMBPICFIXED_POS_Y = 1941;
const int MENUITEM_LOADSAVE_SPALTE_THUMBPICFIXED_DIM_X = 2296;
const int MENUITEM_LOADSAVE_SPALTE_THUMBPICFIXED_THUMBPIC_DIM_Y = 2592;
const int MENUITEM_LOADSAVE_SPALTE_THUMBPICFIXED_CHAPTER_PADDING_TOP = 58;

// Description of a selected save under the thumbpic
const int MENUITEM_LOADSAVE_SPALTE_SAVEDESC_POS_X = 5931;
const int MENUITEM_LOADSAVE_SPALTE_SAVEDESC_POS_Y = 5333;
const int MENUITEM_LOADSAVE_SPALTE_SAVEDESC_DY = 224;
const int MENUITEM_LOADSAVE_SPALTE_SAVEDESC_SUBSECTION_DY= 160;

// The save and load slots and the title
const int SAVEGAME_X1 = 3136;
const int SAVEGAME_Y = 1800;
const int SAVEGAME_DY = 300; // A distance between the saves
const int SAVEGAME_DX1 = 3500; // Wideness


/*
 *  Reusable strings
 */
const string MENU_YES = "Tak"; 
const string MENU_NO = "Nie";
const string MENU_NOYES = "nie|tak";
const string MENU_OFFON = "wy³.|w³.";

const string MENU_KEY_CONFIRM = "DEL - usuwa, ENTER - przypisuje klawisz.";
const string MENY_KEY_PRESS_GIVEN = "Naciœnij ¿¹dany klawisz.";
 
const string MENU_MAIN_NEW_TITLE = "Nowa gra";
const string MENU_MAIN_NEW_TEXT = "Rozpocznij now¹ przygodê.";

const string MENU_MAIN_LOAD_TITLE = "Wczytaj";
const string MENU_MAIN_LOAD_TEXT = "Wczytaj zapisan¹ grê.";

const string MENU_MAIN_LOADSAVE_3DASHES = "---";


const string MENU_MAIN_SAVE_TITLE = "Zapisz";
const string MENU_MAIN_SAVE_TEXT = "Zapisz bie¿¹c¹ grê.";

const string MENU_MAIN_RESUME_TITLE = "Kontynuuj";
const string MENU_MAIN_RESUME_TEXT = "Powrót do gry.";

const string MENU_MAIN_OPTS_TITLE = "Ustawienia";
const string MENU_MAIN_OPTS_TEXT = "Ustawienia dŸwiêku, grafiki i klawiatury.";

const string MENU_MAIN_QUITSESSION_TITLE = "Menu g³ówne";
const string MENU_MAIN_QUITSESSION_TEXT = "Powrót do menu g³ównego";

const string MENU_MAIN_QUIT_TITLE = "Zamknij";
const string MENU_MAIN_QUIT_TEXT = "Powrót do otch³ani systemu Windows.";

const string MENUITEM_LEAVE_GAME_TEXT1 = "Czy na pewno chcesz opuœciæ grê?";

const string MENU_TEXT_NEEDS_APPLY = "";
const string MENU_TEXT_NEEDS_RESTART = "Wymagane ponowne uruchomienie gry!";

const string MENUITEM_LOADSAVE_THUMBPICFIXED_CHAPTER_TEXT = "WITAMY W KOLONII!"; // By comparing the language versions I noticed, that they are not directly translated but adjusted to the size of the thumbnail

const string MENUITEM_LOADSAVE_CHAPTERSMALL_TEXT = "Rozdzia³:";
const string MENUITEM_LOADSAVE_CHAPTERSMALL_VALUE_TEXT = "Nyras";
const string MENUITEM_LOADSAVE_DATETIME_TEXT = "Zapisz czas";
const string MENUITEM_LOADSAVE_PLAYTIME_TEXT = "Czas gry:";
const string MENU_COMMON_BACK_TEXT = "Wstecz";

// Menu_Opt.d
const string MENUITEM_OPT_GAME_TEXT_0 = "Gra";
const string MENUITEM_OPT_GRAPHICS_TEXT_0 = "Grafika";
const string MENUITEM_OPT_VIDEO_TEXT_0 = "Obraz";
const string MENUITEM_OPT_AUDIO_TEXT_0 = "DŸwiêk";
const string MENUITEM_OPT_CONTROLS_TEXT_0 = "Klawiatura";
const string MENUITEM_PERF_TEXT_0 = "Wydajnoœæ/Jakoœæ";
const string MENUITEM_PERF_CHOICE_TEXT_0= "opcje u¿ytkownika#Orthodox Overdose|œrednia jakoœæ|wysoka jakoœæ";
