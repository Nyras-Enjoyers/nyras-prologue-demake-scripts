// **********************************************
// Standard	Voice Module
// **********************************************

// Diese Klasse	kann beliebig von den Skriptern	erweitert um
// "var string xxxx" erweitert werden, diese k�nnen	dann in	den
// einzelnen SVM - Instanzen initialisiert werden.


class C_SVM
{
	var string	WeaponDown				;	//ZS_AssessFighter: SC steht mit gezogener Waffe vor NSC -> NSC ist NEUTRAL zu SC	-> (herausfordernd,	bei	P�nten-Stimme etwas	unsicher, trotzdem kernig)
	var string	ISaidWeaponDown			;	//Kommt nachdem der SC $WeaponDown ignoriert hat!
	var	string	YouAskedForIt			;	// 1. SC hat eine Aufforderung ignoriert: den Raum zu verlassen, ein Item zur�ckzugeben, seine Waffe wegzustecken -> "Wer nicht h�ren will mu� f�hlen..."
	var string	WiseMove;					// 1. NSC wurde	gewarnt, seine Waffe wegzustecken ($RemoveYourWeapon) -> SC	befolgt	dies und steckt	die	Waffe weg
											// 2. SC steht in verbotenem Raum und wird mit $GetOutOfHere aufgefordert, rauszugehen -> SC befolgt die Aufforderung
											// 3. SC hat NSC ein Item vor der Nase weggeschnappt und wurde mit $GiveItToMe aufgefordert	es zur�ckzugeben ->	SC gehorcht
//////////////////////////////////
// NYRAS PROLOGUE DEMAKE MOD
//////////////////////////////////
	
	// Nyras (PC_HERO) - SVM_15
	var string Hero_CH0_None_Hero_17013;
	var string Hero_CH0_None_Hero_12036;
	var string Hero_CH0_None_Hero_20445;
	var string Hero_CH0_None_Hero_62833;

	// Whistler (STT_309_Whistler) - SVM_19
	var string Whistler_CH0_None_Whistler_53621_0;

	// Orry (GRD_254_Orry) - SVM_20 
	var string Orry_CH0_None_Orry_21502;

	// Ratford (ORG_818_Ratford) - SVM_21
	var string TEXT_WIP_JNJMDGE_20240715_153503;
	var string Ratford_CH0_None_Ratford_64245_1;
	var string Ratford_CH0_None_Ratford_44688;
	var string Ratford_CH0_None_Ratford_99079_1;

	// Drax (ORG_819_Drax) - SVM_22
	var string Drax_CH0_G1RDemo_DraxHunt_Drax_83832;
	var string Drax_CH0_None_Drax_32109;
	var string Drax_CH0_G1RDemo_FindJorik_Drax_96572;

	// Kirgo (GRD_251_Kirgo) - SVM_23
	var string Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_97338;
	var string Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_65948_6;

	// Diego (PC_Thief) & Whistler (STT_309_Whistler) Smalltalk - SVM_18 and SVM_19
	var string Diego_CH0_None_Diego_67078;
	var string Diego_CH0_None_Whistler_93885;
	var string Diego_CH0_None_Whistler_25347;
	var string Diego_CH0_None_Diego_78525;
	var string Diego_CH0_None_Whistler_46374;
	var string Diego_CH0_None_Diego_82774;
	var string Diego_CH0_None_Diego_71218;
	var string Diego_CH0_None_Whistler_58295;
	var string Diego_CH0_None_Diego_18638;
	var string Diego_CH0_None_Diego_23669;
	var string Diego_CH0_None_Diego_5000;
	var string Diego_CH0_None_Whistler_36003;
	var string Diego_CH0_None_Whistler_46247;
	var string Diego_CH0_None_Diego_38791;
	var string Diego_CH0_None_Whistler_2972;
	
	// Ratford (ORG_818_Ratford) & Drax (ORG_819_Drax) & Hero (PC_HERO) Trialog - SVM 21, SVM 22 and SVM 15
    var string Drax_CH0_None_Ratford_71939;
    var string Drax_CH0_None_Ratford_33049; 
    var string Drax_CH0_None_Ratford_90529; 
    var string Drax_CH0_None_Ratford_52326; 
    var string Drax_CH0_None_Ratford_68439; 
    var string Drax_CH0_None_Ratford_70406; 
    var string Drax_CH0_None_Ratford_94638; 
    var string Drax_CH0_None_Ratford_61772; 
    var string Drax_CH0_None_Drax_54567;
    var string Drax_CH0_None_Drax_85556;
    var string Drax_CH0_None_Drax_88422;
    var string Drax_CH0_None_Drax_95327;
    var string Drax_CH0_None_Drax_44226;
    var string Drax_CH0_None_Drax_54188;
    var string Drax_CH0_None_Drax_73206;
    var string Drax_CH0_None_Drax_15941;
    var string Drax_CH0_None_Hero_68340;
};

instance SVM_0 (C_SVM){};
instance SVM_1 (C_SVM){};
instance SVM_2 (C_SVM){};
instance SVM_3 (C_SVM){};
instance SVM_4 (C_SVM){};
instance SVM_5 (C_SVM){};
instance SVM_6 (C_SVM){};
instance SVM_7 (C_SVM){};
instance SVM_8 (C_SVM){};
instance SVM_9 (C_SVM){};
instance SVM_10	(C_SVM){};
instance SVM_11	(C_SVM){};
instance SVM_12	(C_SVM){};
instance SVM_13	(C_SVM){};
instance SVM_14	(C_SVM){};

// ***************************
// 		NYRAS (PC_HERO)
// ***************************

instance SVM_15	(C_SVM)
{
	// NYRAS PROLOGUE DEMAKE MOD
	Hero_CH0_None_Hero_17013 	= 	"Hero-CH0-None-Hero-17013"			;	//Hej, ty!

	Hero_CH0_None_Hero_12036	= 	"Hero-CH0-None-Hero-12036"			;	//C�... pora rozpocz�� nowe �ycie...
	Hero_CH0_None_Hero_20445 	= 	"Hero-CH0-None-Hero-20445"			;	//To kiepski pomys�. Je�li znajd� mnie tu �pi�cego, to ju� po mnie.
	Hero_CH0_None_Hero_62833 	= 	"Hero-CH0-None-Hero-62833"			;	//Hmm... to miejsce si� nada. Ale kto� ju� z niego korzysta. Mo�e je�li go znajd�...

	Drax_CH0_None_Hero_68340 	= 	"Drax-CH0-None-Hero-68340"			;	//Mia� przy sobie ten rysunek. Sp�jrz.
};

instance SVM_16	(C_SVM){};
instance SVM_17	(C_SVM){};

// ***************************
// 		Diego (PC_Thief)
// ***************************

instance SVM_18	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Diego-CH0-None-Diego-23432";		//Schowaj t� cholern� bro�!
	ISaidWeaponDown				=	"Diego-CH0-None-Diego-85171";		//Prosisz si� o lanie? Schowaj to!
	YouAskedForIt				=	"Diego-CH0-None-Diego-84477";		//Sam si� o to prosi�e�!
	WiseMove					=	"Diego-CH0-None-Diego-77772";		//No i bardzo dobrze.

	Diego_CH0_None_Diego_67078	=	"Diego-CH0-None-Diego-67078";	//Wybacz, �e ci� zatrzyma�em, jak sytuacja?
	Diego_CH0_None_Diego_78525	=	"Diego-CH0-None-Diego-78525";	//Tylko trzy? My�la�em, �e b�dzie gorzej.
	Diego_CH0_None_Diego_82774	=	"Diego-CH0-None-Diego-82774";	//Zgadza si�. Dok�adnie tak jak my dymamy ich.
	Diego_CH0_None_Diego_71218	=	"Diego-CH0-None-Diego-71218";	//Zauwa�y�e�, �e beczki z rud� z tego miesi�ca mia�y wyj�tkowo grube dno?
	Diego_CH0_None_Diego_18638	=	"Diego-CH0-None-Diego-18638";	//...�e beczki mia�y wyj�tkowo grube dno.
	Diego_CH0_None_Diego_23669	=	"Diego-CH0-None-Diego-23669";	//Tylko tyle wiem.
	Diego_CH0_None_Diego_5000	=	"Diego-CH0-None-Diego-5000";	//To wszystko gierki, �wistak. Oni dymaj� nas, a my ich � i tak to si� toczy, dop�ki bogowie nie odwal� kity.
	Diego_CH0_None_Diego_38791	=	"Diego-CH0-None-Diego-38791";	//Dobra. Dzi�ki, �wistak!
};

// ***************************
// 		Whistler (STT_309_Whistler)
// ***************************

instance SVM_19	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Whistler-CH0-None-Whistler-17469";		//Od�o� bro�, kretynie!
	ISaidWeaponDown				=	"Whistler-CH0-None-Whistler-31444";		//Od�� bro� albo ci� za�atwi�!

	//YouAskedForIt				=	"SVM_1_YouAskedForIt";					//Sam si� o to prosi�e�!

	WiseMove					=	"Whistler-CH0-None-Whistler-7791";		//No. Masz szcz�cie.

	
	
	Whistler_CH0_None_Whistler_53621_0	= "Whistler-CH0-None-Whistler-53621-0";	//Spieprzaj!

	Diego_CH0_None_Whistler_93885 		= "Diego-CH0-None-Whistler-93885";	//Znowu pr�bowali nas okantowa� na zbo�u, suczesyny.
	Diego_CH0_None_Whistler_25347 		= "Diego-CH0-None-Whistler-25347";	//Na dnie s� trzy zarobaczone worki... Za�o�� si� o dziesi�� bry�ek rudy, �e b�d� udawali zdziwionych.
	Diego_CH0_None_Whistler_46374 		= "Diego-CH0-None-Whistler-46374";	//Wi�c pozwolimy im dalej dyma� nas bez myd�a?
	Diego_CH0_None_Whistler_58295 		= "Diego-CH0-None-Whistler-58295";	//Wi�c chcesz mi powiedzie�, �e...
	Diego_CH0_None_Whistler_36003 		= "Diego-CH0-None-Whistler-36003";	//Ale z ciebie poeta. Dobra, jeba� to.
	Diego_CH0_None_Whistler_46247 		= "Diego-CH0-None-Whistler-46247";	//Sprawdz� t� parti� i przygotuj� j� do transportu.
	Diego_CH0_None_Whistler_2972  		= "Diego-CH0-None-Whistler-2972";	//Jasne.
};

// ***************************
// 		Orry (GRD_254_Orry)
// ***************************

instance SVM_20	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Orry-CH0-None-Orry-1075";		//Co ty, kurwa, wyprawiasz?
	ISaidWeaponDown				=	"Orry-CH0-None-Orry-37151";		//Od�� to. Natychmiast.
	YouAskedForIt				=	"Orry-CH0-None-Orry-22114";		//No dobra!
	WiseMove					=	"Orry-CH0-None-Orry-24165";		//I nie wa� si� znowu tym macha�.

	Orry_CH0_None_Orry_21502	=	"Orry-CH0-None-Orry-21502";		//Zabieraj si�. Mia�e� ju� okazj� si� wykaza�.
};

// ***************************
// 		Ratford (ORG_818_Ratford)
// ***************************

instance SVM_21	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown							=	"Ratford-CH0-None-Ratford-42075";	//Nie celuj we mnie tym g�wnem.
	ISaidWeaponDown						=	"Ratford-CH0-None-Ratford-48468";	//G�uchy czy g�upi? Od�� to!
	YouAskedForIt						=	"Ratford-CH0-None-Ratford-71391";	//Sam si� o to prosi�e�!
	WiseMove							=	"Ratford-CH0-None-Ratford-97616";	//Nie jeste� tak g�upi, na jakiego wygl�dasz.

	TEXT_WIP_JNJMDGE_20240715_153503 	= "TEXT_WIP_JNJMDGE_20240715_153503";	//Odwal si�.
	Ratford_CH0_None_Ratford_64245_1 	= "Ratford-CH0-None-Ratford-64245-1"; 	//A kim ty niby jeste�, na Beliara?
	Ratford_CH0_None_Ratford_44688		= "Ratford-CH0-None-Ratford-44688"; //Nie teraz.
	Ratford_CH0_None_Ratford_99079_1	= "Ratford-CH0-None-Ratford-99079-1"; //Powodzenia �ycz�.

	Drax_CH0_None_Ratford_71939 = "Drax-CH0-None-Ratford-71939";	//Odwal si�. Masz co� na obiad?
	Drax_CH0_None_Ratford_33049 = "Drax-CH0-None-Ratford-33049";	//To prawdopodobnie ten cieniostw�r. Musimy by� uwa�niejsi w nocy.
	Drax_CH0_None_Ratford_90529 = "Drax-CH0-None-Ratford-90529";	//Nie pokazuj tego g�wna ludziom i przesta� ple�� bzdury. Jorik za du�o jara� i mu odwali�o � koniec tematu.
	Drax_CH0_None_Ratford_52326 = "Drax-CH0-None-Ratford-52326";	//Przez ciebie wygl�damy jak panienki gotowe wskoczy� mu w ramiona.
	Drax_CH0_None_Ratford_68439 = "Drax-CH0-None-Ratford-68439";	//No ale Drax ma racj�. Przydadz� nam si� nowi ludzie, a ty nie�le sobie radzisz. Tylko pami�taj, �e je�li nie chcesz sko�czy� zgi�ty w p� na polu ry�owym, to musisz si� postara�.
	Drax_CH0_None_Ratford_70406 = "Drax-CH0-None-Ratford-70406";	//Je�li nadal my�lisz, �e ten g�wniany pomys� wysadzenia kopca niebieskiej rudy zadzia�a, to jeste� r�wnie powalony, co tamte �wiry.
	Drax_CH0_None_Ratford_94638 = "Drax-CH0-None-Ratford-94638";	//No bo kurde. Maj� ju� tyle rudy, �e mogliby kupi� ca�y Varant! A jakim� sposobem zawsze, gdy pytam Najemnik�w, kiedy Magowie b�d� mieli jej wystarczaj�co, to odpowiadaj�, �e �jeszcze troch�.
	Drax_CH0_None_Ratford_61772 = "Drax-CH0-None-Ratford-61772";	//Zaczynam si� powa�nie zastanawia�, czy z nami nie pogrywaj�, tak jak ten ca�y Y�Berion ze swoimi owieczkami. Nie zdziwi�oby mnie...
};

// ***************************
// 		Drax (ORG_819_Drax)
// ***************************

instance SVM_22	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown							=	"Drax-CH0-None-Drax-94813";		//Od�� bro�. Nie �artuj�.
	ISaidWeaponDown						=	"Drax-CH0-None-Drax-1574";		//Na pewno tego chcesz, kolego? Przegrasz.
	YouAskedForIt						=	"Drax-CH0-None-Drax-15907";		//Koniec z tym!
	WiseMove							=	"Drax-CH0-None-Drax-71298";		//Rozs�dnie.

	Drax_CH0_None_Drax_32109				=	"Drax-CH0-None-Drax-32109";					//Nie mam czasu, kolego.
	Drax_CH0_G1RDemo_FindJorik_Drax_96572	=	"Drax-CH0-G1RDemo_FindJorik-Drax-96572";	//Hm? Znajd� Rata. Powinien by� gdzie� w kanionie.
	Drax_CH0_G1RDemo_DraxHunt_Drax_83832	=	"Drax-CH0-G1RDemo_DraxHunt-Drax-83832";		//Hej! Ciszej tam, wystraszysz...

	Drax_CH0_None_Drax_54567 = "Drax-CH0-None-Drax-54567";	//A wi�c dorobi�e� si� kumpla, Rat? My�la�em, �e nie do�yj� tego dnia.
	Drax_CH0_None_Drax_85556 = "Drax-CH0-None-Drax-85556";	//Ta, nowy mi pom�g�. Znalaz�e� Jorika, hm? Co go zabi�o?
	Drax_CH0_None_Drax_88422 = "Drax-CH0-None-Drax-88422";	//Powiedz mi, �wie�ak, gdy znalaz�e� Jorika, dowiedzia�e� si� mo�e, dlaczego si� oddali�? Nadal tego nie rozumiem.
	Drax_CH0_None_Drax_95327 = "Drax-CH0-None-Drax-95327";	//Kopc� jak piec, a jako� �aden b�g nic mi jeszcze nie �wyszepta� w snach�.
	Drax_CH0_None_Drax_44226 = "Drax-CH0-None-Drax-44226";	//Na jajca Beliara, we� si� uspok�j. Tylko zapyta�em.
	Drax_CH0_None_Drax_54188 = "Drax-CH0-None-Drax-54188";	//To mo�e pogadamy o czym� innym. Pewnie ju� si� zorientowa�e�, �e w Kolonii s� trzy obozy.
	Drax_CH0_None_Drax_73206 = "Drax-CH0-None-Drax-73206";	//B�d� szczery: nie jeste� tak bezu�yteczny, jak wi�kszo��, kt�rych tu wrzucaj�. Powiniene� spr�bowa� do��czy� do naszego obozu.
	Drax_CH0_None_Drax_15941 = "Drax-CH0-None-Drax-15941";	//To akurat tyczy si� ka�dego obozu. Ale my przynajmniej mamy sensowny plan ucieczki. Prawdziwy plan, a nie jakie� sekciarskie bzdury o �pi�cych bogach.
};

// ***************************
// 		Kirgo (GRD_251_Kirgo)
// ***************************

instance SVM_23	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Kirgo-CH0-None-Kirgo-48070";		//Schowaj bro�, idioto.
	ISaidWeaponDown				=	"Kirgo-CH0-None-Kirgo-75830";		//Nie ka� mi si� powtarza�.
	YouAskedForIt				=	"Kirgo-CH0-None-Kirgo-27709";		//Ostrzega�em ci�.
	WiseMove					=	"Kirgo-CH0-None-Kirgo-836";			//M�dry wyb�r.

	Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_97338 	= "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-97338";	//Mi�o si� gaw�dzi�o.
	Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_65948_6 	= "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-65948-6";	//Dobra. Zata�czmy.
};

// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	24;




