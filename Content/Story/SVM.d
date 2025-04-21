// **********************************************
// Standard	Voice Module
// **********************************************

// Diese Klasse	kann beliebig von den Skriptern	erweitert um
// "var string xxxx" erweitert werden, diese können	dann in	den
// einzelnen SVM - Instanzen initialisiert werden.


class C_SVM
{
	var string	WeaponDown				;	//ZS_AssessFighter: SC steht mit gezogener Waffe vor NSC -> NSC ist NEUTRAL zu SC	-> (herausfordernd,	bei	Pünten-Stimme etwas	unsicher, trotzdem kernig)
	var string	ISaidWeaponDown			;	//Kommt nachdem der SC $WeaponDown ignoriert hat!
	var	string	YouAskedForIt			;	// 1. SC hat eine Aufforderung ignoriert: den Raum zu verlassen, ein Item zurückzugeben, seine Waffe wegzustecken -> "Wer nicht hören will muß fühlen..."
	var string	WiseMove;					// 1. NSC wurde	gewarnt, seine Waffe wegzustecken ($RemoveYourWeapon) -> SC	befolgt	dies und steckt	die	Waffe weg
											// 2. SC steht in verbotenem Raum und wird mit $GetOutOfHere aufgefordert, rauszugehen -> SC befolgt die Aufforderung
											// 3. SC hat NSC ein Item vor der Nase weggeschnappt und wurde mit $GiveItToMe aufgefordert	es zurückzugeben ->	SC gehorcht
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

	Hero_CH0_None_Hero_12036	= 	"Hero-CH0-None-Hero-12036"			;	//Có¿... pora rozpocz¹æ nowe ¿ycie...
	Hero_CH0_None_Hero_20445 	= 	"Hero-CH0-None-Hero-20445"			;	//To kiepski pomys³. Jeœli znajd¹ mnie tu œpi¹cego, to ju¿ po mnie.
	Hero_CH0_None_Hero_62833 	= 	"Hero-CH0-None-Hero-62833"			;	//Hmm... to miejsce siê nada. Ale ktoœ ju¿ z niego korzysta. Mo¿e jeœli go znajdê...

	Drax_CH0_None_Hero_68340 	= 	"Drax-CH0-None-Hero-68340"			;	//Mia³ przy sobie ten rysunek. Spójrz.
};

instance SVM_16	(C_SVM){};
instance SVM_17	(C_SVM){};

// ***************************
// 		Diego (PC_Thief)
// ***************************

instance SVM_18	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Diego-CH0-None-Diego-23432";		//Schowaj tê cholern¹ broñ!
	ISaidWeaponDown				=	"Diego-CH0-None-Diego-85171";		//Prosisz siê o lanie? Schowaj to!
	YouAskedForIt				=	"Diego-CH0-None-Diego-84477";		//Sam siê o to prosi³eœ!
	WiseMove					=	"Diego-CH0-None-Diego-77772";		//No i bardzo dobrze.

	Diego_CH0_None_Diego_67078	=	"Diego-CH0-None-Diego-67078";	//Wybacz, ¿e ciê zatrzyma³em, jak sytuacja?
	Diego_CH0_None_Diego_78525	=	"Diego-CH0-None-Diego-78525";	//Tylko trzy? Myœla³em, ¿e bêdzie gorzej.
	Diego_CH0_None_Diego_82774	=	"Diego-CH0-None-Diego-82774";	//Zgadza siê. Dok³adnie tak jak my dymamy ich.
	Diego_CH0_None_Diego_71218	=	"Diego-CH0-None-Diego-71218";	//Zauwa¿y³eœ, ¿e beczki z rud¹ z tego miesi¹ca mia³y wyj¹tkowo grube dno?
	Diego_CH0_None_Diego_18638	=	"Diego-CH0-None-Diego-18638";	//...¿e beczki mia³y wyj¹tkowo grube dno.
	Diego_CH0_None_Diego_23669	=	"Diego-CH0-None-Diego-23669";	//Tylko tyle wiem.
	Diego_CH0_None_Diego_5000	=	"Diego-CH0-None-Diego-5000";	//To wszystko gierki, Œwistak. Oni dymaj¹ nas, a my ich – i tak to siê toczy, dopóki bogowie nie odwal¹ kity.
	Diego_CH0_None_Diego_38791	=	"Diego-CH0-None-Diego-38791";	//Dobra. Dziêki, Œwistak!
};

// ***************************
// 		Whistler (STT_309_Whistler)
// ***************************

instance SVM_19	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Whistler-CH0-None-Whistler-17469";		//Od³o¿ broñ, kretynie!
	ISaidWeaponDown				=	"Whistler-CH0-None-Whistler-31444";		//Od³ó¿ broñ albo ciê za³atwiê!

	//YouAskedForIt				=	"SVM_1_YouAskedForIt";					//Sam siê o to prosi³eœ!

	WiseMove					=	"Whistler-CH0-None-Whistler-7791";		//No. Masz szczêœcie.

	
	
	Whistler_CH0_None_Whistler_53621_0	= "Whistler-CH0-None-Whistler-53621-0";	//Spieprzaj!

	Diego_CH0_None_Whistler_93885 		= "Diego-CH0-None-Whistler-93885";	//Znowu próbowali nas okantowaæ na zbo¿u, suczesyny.
	Diego_CH0_None_Whistler_25347 		= "Diego-CH0-None-Whistler-25347";	//Na dnie s¹ trzy zarobaczone worki... Za³o¿ê siê o dziesiêæ bry³ek rudy, ¿e bêd¹ udawali zdziwionych.
	Diego_CH0_None_Whistler_46374 		= "Diego-CH0-None-Whistler-46374";	//Wiêc pozwolimy im dalej dymaæ nas bez myd³a?
	Diego_CH0_None_Whistler_58295 		= "Diego-CH0-None-Whistler-58295";	//Wiêc chcesz mi powiedzieæ, ¿e...
	Diego_CH0_None_Whistler_36003 		= "Diego-CH0-None-Whistler-36003";	//Ale z ciebie poeta. Dobra, jebaæ to.
	Diego_CH0_None_Whistler_46247 		= "Diego-CH0-None-Whistler-46247";	//Sprawdzê tê partiê i przygotujê j¹ do transportu.
	Diego_CH0_None_Whistler_2972  		= "Diego-CH0-None-Whistler-2972";	//Jasne.
};

// ***************************
// 		Orry (GRD_254_Orry)
// ***************************

instance SVM_20	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Orry-CH0-None-Orry-1075";		//Co ty, kurwa, wyprawiasz?
	ISaidWeaponDown				=	"Orry-CH0-None-Orry-37151";		//Od³ó¿ to. Natychmiast.
	YouAskedForIt				=	"Orry-CH0-None-Orry-22114";		//No dobra!
	WiseMove					=	"Orry-CH0-None-Orry-24165";		//I nie wa¿ siê znowu tym machaæ.

	Orry_CH0_None_Orry_21502	=	"Orry-CH0-None-Orry-21502";		//Zabieraj siê. Mia³eœ ju¿ okazjê siê wykazaæ.
};

// ***************************
// 		Ratford (ORG_818_Ratford)
// ***************************

instance SVM_21	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown							=	"Ratford-CH0-None-Ratford-42075";	//Nie celuj we mnie tym gównem.
	ISaidWeaponDown						=	"Ratford-CH0-None-Ratford-48468";	//G³uchy czy g³upi? Od³ó¿ to!
	YouAskedForIt						=	"Ratford-CH0-None-Ratford-71391";	//Sam siê o to prosi³eœ!
	WiseMove							=	"Ratford-CH0-None-Ratford-97616";	//Nie jesteœ tak g³upi, na jakiego wygl¹dasz.

	TEXT_WIP_JNJMDGE_20240715_153503 	= "TEXT_WIP_JNJMDGE_20240715_153503";	//Odwal siê.
	Ratford_CH0_None_Ratford_64245_1 	= "Ratford-CH0-None-Ratford-64245-1"; 	//A kim ty niby jesteœ, na Beliara?
	Ratford_CH0_None_Ratford_44688		= "Ratford-CH0-None-Ratford-44688"; //Nie teraz.
	Ratford_CH0_None_Ratford_99079_1	= "Ratford-CH0-None-Ratford-99079-1"; //Powodzenia ¿yczê.

	Drax_CH0_None_Ratford_71939 = "Drax-CH0-None-Ratford-71939";	//Odwal siê. Masz coœ na obiad?
	Drax_CH0_None_Ratford_33049 = "Drax-CH0-None-Ratford-33049";	//To prawdopodobnie ten cieniostwór. Musimy byæ uwa¿niejsi w nocy.
	Drax_CH0_None_Ratford_90529 = "Drax-CH0-None-Ratford-90529";	//Nie pokazuj tego gówna ludziom i przestañ pleœæ bzdury. Jorik za du¿o jara³ i mu odwali³o – koniec tematu.
	Drax_CH0_None_Ratford_52326 = "Drax-CH0-None-Ratford-52326";	//Przez ciebie wygl¹damy jak panienki gotowe wskoczyæ mu w ramiona.
	Drax_CH0_None_Ratford_68439 = "Drax-CH0-None-Ratford-68439";	//No ale Drax ma racjê. Przydadz¹ nam siê nowi ludzie, a ty nieŸle sobie radzisz. Tylko pamiêtaj, ¿e jeœli nie chcesz skoñczyæ zgiêty w pó³ na polu ry¿owym, to musisz siê postaraæ.
	Drax_CH0_None_Ratford_70406 = "Drax-CH0-None-Ratford-70406";	//Jeœli nadal myœlisz, ¿e ten gówniany pomys³ wysadzenia kopca niebieskiej rudy zadzia³a, to jesteœ równie powalony, co tamte œwiry.
	Drax_CH0_None_Ratford_94638 = "Drax-CH0-None-Ratford-94638";	//No bo kurde. Maj¹ ju¿ tyle rudy, ¿e mogliby kupiæ ca³y Varant! A jakimœ sposobem zawsze, gdy pytam Najemników, kiedy Magowie bêd¹ mieli jej wystarczaj¹co, to odpowiadaj¹, ¿e „jeszcze trochê”.
	Drax_CH0_None_Ratford_61772 = "Drax-CH0-None-Ratford-61772";	//Zaczynam siê powa¿nie zastanawiaæ, czy z nami nie pogrywaj¹, tak jak ten ca³y Y’Berion ze swoimi owieczkami. Nie zdziwi³oby mnie...
};

// ***************************
// 		Drax (ORG_819_Drax)
// ***************************

instance SVM_22	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown							=	"Drax-CH0-None-Drax-94813";		//Od³ó¿ broñ. Nie ¿artujê.
	ISaidWeaponDown						=	"Drax-CH0-None-Drax-1574";		//Na pewno tego chcesz, kolego? Przegrasz.
	YouAskedForIt						=	"Drax-CH0-None-Drax-15907";		//Koniec z tym!
	WiseMove							=	"Drax-CH0-None-Drax-71298";		//Rozs¹dnie.

	Drax_CH0_None_Drax_32109				=	"Drax-CH0-None-Drax-32109";					//Nie mam czasu, kolego.
	Drax_CH0_G1RDemo_FindJorik_Drax_96572	=	"Drax-CH0-G1RDemo_FindJorik-Drax-96572";	//Hm? ZnajdŸ Rata. Powinien byæ gdzieœ w kanionie.
	Drax_CH0_G1RDemo_DraxHunt_Drax_83832	=	"Drax-CH0-G1RDemo_DraxHunt-Drax-83832";		//Hej! Ciszej tam, wystraszysz...

	Drax_CH0_None_Drax_54567 = "Drax-CH0-None-Drax-54567";	//A wiêc dorobi³eœ siê kumpla, Rat? Myœla³em, ¿e nie do¿yjê tego dnia.
	Drax_CH0_None_Drax_85556 = "Drax-CH0-None-Drax-85556";	//Ta, nowy mi pomóg³. Znalaz³eœ Jorika, hm? Co go zabi³o?
	Drax_CH0_None_Drax_88422 = "Drax-CH0-None-Drax-88422";	//Powiedz mi, œwie¿ak, gdy znalaz³eœ Jorika, dowiedzia³eœ siê mo¿e, dlaczego siê oddali³? Nadal tego nie rozumiem.
	Drax_CH0_None_Drax_95327 = "Drax-CH0-None-Drax-95327";	//Kopcê jak piec, a jakoœ ¿aden bóg nic mi jeszcze nie „wyszepta³ w snach”.
	Drax_CH0_None_Drax_44226 = "Drax-CH0-None-Drax-44226";	//Na jajca Beliara, weŸ siê uspokój. Tylko zapyta³em.
	Drax_CH0_None_Drax_54188 = "Drax-CH0-None-Drax-54188";	//To mo¿e pogadamy o czymœ innym. Pewnie ju¿ siê zorientowa³eœ, ¿e w Kolonii s¹ trzy obozy.
	Drax_CH0_None_Drax_73206 = "Drax-CH0-None-Drax-73206";	//Bêdê szczery: nie jesteœ tak bezu¿yteczny, jak wiêkszoœæ, których tu wrzucaj¹. Powinieneœ spróbowaæ do³¹czyæ do naszego obozu.
	Drax_CH0_None_Drax_15941 = "Drax-CH0-None-Drax-15941";	//To akurat tyczy siê ka¿dego obozu. Ale my przynajmniej mamy sensowny plan ucieczki. Prawdziwy plan, a nie jakieœ sekciarskie bzdury o œpi¹cych bogach.
};

// ***************************
// 		Kirgo (GRD_251_Kirgo)
// ***************************

instance SVM_23	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Kirgo-CH0-None-Kirgo-48070";		//Schowaj broñ, idioto.
	ISaidWeaponDown				=	"Kirgo-CH0-None-Kirgo-75830";		//Nie ka¿ mi siê powtarzaæ.
	YouAskedForIt				=	"Kirgo-CH0-None-Kirgo-27709";		//Ostrzega³em ciê.
	WiseMove					=	"Kirgo-CH0-None-Kirgo-836";			//M¹dry wybór.

	Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_97338 	= "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-97338";	//Mi³o siê gawêdzi³o.
	Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_65948_6 	= "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-65948-6";	//Dobra. Zatañczmy.
};

// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	24;




