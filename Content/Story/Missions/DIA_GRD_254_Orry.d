//========================================
//-----------------> ORRY)EXIT
//========================================

instance DIA_GRD_254_Orry_Exit (C_INFO)
{
	npc			= GRD_254_Orry;
	nr			= 999;
	condition	= DIA_GRD_254_Orry_Exit_Condition;
	information	= DIA_GRD_254_Orry_Exit_Info;
	permanent	= true;
	description = "To ja ju¿ pójdê.";
};					   

func int DIA_GRD_254_Orry_Exit_Condition()
{
	return true;
};

func void DIA_GRD_254_Orry_Exit_Info()
{	
	AI_Output	(hero, self, "Orry-CH0-None-Hero-73692");	//To ja ju¿ pójdê.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-52966");	//Jasne. Powodzenia, ¿ó³todziobie!

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> ORRY_HELLO
//========================================

instance DIA_GRD_254_Orry_Hello (C_INFO)
{
	npc				= GRD_254_Orry;
	nr				= 1;
	condition		= DIA_GRD_254_Orry_Hello_Condition;
	information		= DIA_GRD_254_Orry_Hello_Info;
	important		= true;
};

func int DIA_GRD_254_Orry_Hello_Condition()
{
	if (Npc_IsInState (self, ZS_Talk)) && (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello))
	{
		return true;
	};
};

func void DIA_GRD_254_Orry_Hello_Info()
{
	AI_Output	(self, hero, "Orry-CH0-None-Orry-35350");  //Œwie¿ak, co? Nie wiedzia³em, ¿e kogoœ wrzucaj¹. Mia³eœ szczêœcie.
	AI_Output	(hero, self, "Orry-CH0-None-Hero-62484");  //Dlaczego?
	AI_Output	(self, hero, "Orry-CH0-None-Orry-81876");  //Gdyby nie lawina skalna, kilku z naszych z pewnoœci¹ wysz³oby ci na powitanie.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-50913");  //Obiliby ci ryj zawodowo.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-3202");   //W ka¿dym razie, jeœli zmierzasz do doliny, musisz poczekaæ, a¿ oczyszcz¹ drogê. Wspinaczka po urwisku...
	AI_Output	(hero, self, "Orry-CH0-None-Hero-17889");  //Jest zbyt niebezpieczna. Wiem. Diego mi powiedzia³.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-90220");  //To dobrze. Teraz jeszcze znajdŸ sobie jeszcze miejsce do spania.
};

//========================================
//-----------------> WHAT_DID_YOU_DO
//========================================

instance DIA_GRD_254_Orry_What_Did_You_Do (C_INFO)
{
	npc				= GRD_254_Orry;
	nr				= 1;
	condition		= DIA_GRD_254_Orry_What_Did_You_Do_Condition;
	information		= DIA_GRD_254_Orry_What_Did_You_Do_Info;
	description 	= "A ty co zrobi³eœ? Dlaczego ciê tu wtr¹cili?";
	important		= false;
};

func int DIA_GRD_254_Orry_What_Did_You_Do_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_GRD_254_Orry_Hello))
	{
		return true;
	};
};

func void DIA_GRD_254_Orry_What_Did_You_Do_Info()
{
	AI_Output	(hero, self, "Orry-CH0-None-Hero-93802");  //A ty co zrobi³eœ? Dlaczego ciê tu wtr¹cili?
	AI_Output	(self, hero, "Orry-CH0-None-Orry-34664");  //Mnie? Nie zrobi³em nic szczególnego.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-1321");   //Skoñczy³y mi siê fundusze, wpad³em w z³e towarzystwo, a potem napatoczy³em siê na stra¿e, kiedy akurat kogoœ obrobi³em.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-45461");  //Szast-prast i jestem tutaj. A ty?

	Info_AddChoice (DIA_GRD_254_Orry_What_Did_You_Do, "Nie chcê o tym gadaæ.", DIA_GRD_254_Orry_What_Did_You_Do_No_More_About_It);

	if (Npc_KnowsInfo (hero, DIA_PC_Thief_How_Did_You_Get_Here))
	{
		Info_AddChoice (DIA_GRD_254_Orry_What_Did_You_Do, "Znalaz³em siê w niew³aœciwym miejscu o niew³aœciwym czasie.", DIA_GRD_254_Orry_What_Did_You_Do_Wrong_Place_And_Time);
	};

	Info_AddChoice (DIA_GRD_254_Orry_What_Did_You_Do, "Zabi³em cz³owieka.", DIA_GRD_254_Orry_What_Did_You_Do_I_Killed_Someone);
};

//Zabi³em cz³owieka.
func void DIA_GRD_254_Orry_What_Did_You_Do_I_Killed_Someone()
{
	Info_ClearChoices (DIA_GRD_254_Orry_What_Did_You_Do);

	AI_Output	(hero, self, "Orry-CH0-None-Caption-85953-0");  //Zabi³em cz³owieka.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-24602");  		//Ty? A nie wygl¹dasz.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-37552");  		//Tylko nie mów o tym komu popadnie. Ogranicz siê do tych, których to mo¿e zaciekawiæ.
	AI_Output	(hero, self, "Orry-CH0-None-Hero-17139");  		//Jasne.
};

//Znalaz³em siê w niew³aœciwym miejscu o niew³aœciwym czasie.
func void DIA_GRD_254_Orry_What_Did_You_Do_Wrong_Place_And_Time()
{
	Info_ClearChoices (DIA_GRD_254_Orry_What_Did_You_Do);

	AI_Output	(hero, self, "Orry-CH0-None-Caption-7105-0");  	//Znalaz³em siê w niew³aœciwym miejscu o niew³aœciwym czasie.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-97807");  		//Gdzieœ to ju¿ s³ysza³em.
};

//Nie chcê o tym gadaæ.
func void DIA_GRD_254_Orry_What_Did_You_Do_No_More_About_It()
{
	Info_ClearChoices (DIA_GRD_254_Orry_What_Did_You_Do);

	AI_Output	(hero, self, "Orry-CH0-None-Caption-16021-0");  //Nie chcê o tym gadaæ.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-84803");  		//Nie bêdziemy siê sobie zwierzaæ? W porz¹dku.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-50138");  		//I tak wszyscy zawsze mówi¹ to samo.
};

//========================================
//-----------------> LET_ME_ASK_YOU_SOMETHING
//========================================

instance DIA_GRD_254_Orry_Let_Me_Ask_You_Something (C_INFO)
{
	npc				= GRD_254_Orry;
	nr				= 1;
	condition		= DIA_GRD_254_Orry_Let_Me_Ask_You_Something_Condition;
	information		= DIA_GRD_254_Orry_Let_Me_Ask_You_Something_Info;
	description 	= "Chcia³bym o coœ zapytaæ.";
	important		= false;
};

func int DIA_GRD_254_Orry_Let_Me_Ask_You_Something_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_GRD_254_Orry_Hello))
	{
		return true;
	};
};

func void DIA_GRD_254_Orry_Let_Me_Ask_You_Something_Info()
{
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-57035");  //Chcia³bym o coœ zapytaæ.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-74214");  //Czy¿by? A mnie strasznie zasch³o w gardle.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-3732");   //Zróbmy tak: znajdŸ mi coœ mocniejszego, a jak zwil¿ê garde³ko to mo¿esz pytaæ, jakby jutra mia³o nie byæ.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-31914");  //R¹czka r¹czkê myje.

	Info_AddChoice (DIA_GRD_254_Orry_Let_Me_Ask_You_Something, "Nie mam czasu na bzdury.", DIA_GRD_254_Orry_Let_Me_Ask_You_Something_No_Time);
	Info_AddChoice (DIA_GRD_254_Orry_Let_Me_Ask_You_Something, "Niech bêdzie.", DIA_GRD_254_Orry_Let_Me_Ask_You_Something_Agree);
	Info_AddChoice (DIA_GRD_254_Orry_Let_Me_Ask_You_Something, "O jakim napitku mówimy?", DIA_GRD_254_Orry_Let_Me_Ask_You_Something_About_Beer);
};

//O jakim napitku mówimy?
func void DIA_GRD_254_Orry_Let_Me_Ask_You_Something_About_Beer()
{
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-67257");  //O jakim napitku mówimy?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-96594");  //Oo napi³bym siê varanckiego czerwonego, rocznik ’82. I przyda³aby siê cycata, ruda dziewka, która bêdzie mi polewaæ.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-2862");   //Ale niestety to Kolonia, wiêc wystarczy mi butelczyna tej berbeluchy, która uchodzi tu za piwo.
};

//Niech bêdzie.
func void DIA_GRD_254_Orry_Let_Me_Ask_You_Something_Agree()
{
	Orry_IWillDoThat = true;

	Info_ClearChoices (DIA_GRD_254_Orry_Let_Me_Ask_You_Something);

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-28969");  //Niech bêdzie.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-103");    //Dziêki niech bêd¹ Innosowi. Wiesz, gdzie mnie szukaæ.

	AI_StopProcessInfos	(self);
};

//Nie mam czasu na bzdury.
func void DIA_GRD_254_Orry_Let_Me_Ask_You_Something_No_Time()
{
	Orry_IHaveNoTimeForThat = true;
	
	Info_ClearChoices (DIA_GRD_254_Orry_Let_Me_Ask_You_Something);

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-42210");    //Nie mam czasu na bzdury.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-28733");  	 //Co, jesteœ ponad to?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-31985-0");  //Oj, ch³opcze, czeka ciê nie lada niespodzianka.

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> ORRY_ABOUT_KIRGO_DEATH
//========================================

instance DIA_GRD_254_Orry_About_Kirgo_Death (C_INFO)
{
	npc				= GRD_254_Orry;
	nr				= 1;
	condition		= DIA_GRD_254_Orry_About_Kirgo_Death_Condition;
	information		= DIA_GRD_254_Orry_About_Kirgo_Death_Info;
	description 	= "Muszê ci coœ powiedzieæ. Kirgo nie ¿yje.";
	important		= false;
};

func int DIA_GRD_254_Orry_About_Kirgo_Death_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_GRD_254_Orry_Hello)) && (Kirgo_Killed == true) && (Kirgo_IntroducedHimself == true)
	{
		return true;
	};
};

func void DIA_GRD_254_Orry_About_Kirgo_Death_Info()
{
	AI_Output	(hero, self, "Orry-CH0-None-Hero-88403");	//Muszê ci coœ powiedzieæ. Kirgo nie ¿yje.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-44358");	//...Co?! Jak? Dlaczego?

	Info_AddChoice (DIA_GRD_254_Orry_About_Kirgo_Death, "To by³ wypadek. Trenowaliœmy walkê i... nadzia³ mi siê na miecz.", DIA_GRD_254_Orry_About_Kirgo_Death_Truth);
	Info_AddChoice (DIA_GRD_254_Orry_About_Kirgo_Death, "To chyba sprawka cieniostwora.", DIA_GRD_254_Orry_About_Kirgo_Death_Lie);
};

//To chyba sprawka cieniostwora.
func void DIA_GRD_254_Orry_About_Kirgo_Death_Lie()
{
	AI_Output	(hero, self, "Orry-CH0-None-Caption-88176-0");	//To chyba sprawka cieniostwora.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-51220");		//Przecie¿ widzia³em go dziœ rano... Kurwa... KURWA MAÆ!
	AI_Output	(self, hero, "Orry-CH0-None-Orry-45442");		//Nie mogê teraz opuœciæ posterunku, ale poszukam go jutro z samego rana.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-22759");		//Przekonamy siê, kto to zrobi³. W ka¿dym razie... dziêki za informacjê. 

	AI_StopProcessInfos	(self);
};

//To by³ wypadek. Trenowaliœmy walkê i... nadzia³ mi siê na miecz.
func void DIA_GRD_254_Orry_About_Kirgo_Death_Truth()
{
	AI_Output	(hero, self, "Orry-CH0-None-Caption-12927-0");	//To by³ wypadek. Trenowaliœmy walkê i... nadzia³ mi siê na miecz.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-36012");		//...Wypadek?
	AI_Output	(self, hero, "Orry-CH0-None-Orry-21384");		//Nie, nie, nie kupujê tego. Kirgo by³ jednym z najlepszych zabijaków na arenie. 
	AI_Output	(self, hero, "Orry-CH0-None-Orry-10752");		//Ty to zrobi³eœ. I to celowo. Powalony gnój... Zapierdolê ciê!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AIV_AR_KILL);
};

//========================================
//-----------------> YOUR_BEER
//========================================
var int Orry_Your_Beer_About_Weapon; // `DIA_GRD_254_Orry_Your_Beer_About_Weapon` option selected
var int Orry_Your_Beer_About_Life_In_The_Old_Camp; // `DIA_GRD_254_Orry_Your_Beer_About_Life_In_The_Old_Camp` option selected
var int Orry_Your_Beer_Why_Cant_I_Sleep_Here; // `DIA_GRD_254_Orry_Your_Beer_Why_Cant_I_Sleep_Here` option selected
var int Orry_Your_Beer_If_Not_Here_Then_Where; // `DIA_GRD_254_Orry_Your_Beer_If_Not_Here_Then_Where` option selected
var int Orry_Your_Beer_About_Good_Sword; // `DIA_GRD_254_Orry_Your_Beer_About_Good_Sword` option selected

instance DIA_GRD_254_Orry_Your_Beer (C_INFO)
{
	npc				= GRD_254_Orry;
	nr				= 1;
	condition		= DIA_GRD_254_Orry_Your_Beer_Condition;
	information		= DIA_GRD_254_Orry_Your_Beer_Info;
	description 	= "Masz. Twoje piwo.";
	important		= false;
};

func int DIA_GRD_254_Orry_Your_Beer_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_GRD_254_Orry_Let_Me_Ask_You_Something)) && (Npc_HasItems (hero, ItFoBeer) >= 1)
	{
		return true;
	};
};

func void DIA_GRD_254_Orry_Your_Beer_Info()
{
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-22970");  //Masz. Twoje piwo.
	
	B_Ani_GiveItem	(hero, self);	
	B_GiveInvItems	(hero, self, ItFoBeer, 1);

	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-69058");  //Zbawco!
	
	AI_UseItem 		(self, ItFoBeer);

	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-30075");  //Uech. Smakuje jak fermentowany szczoch.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-62196");  //No, ale chcia³eœ przecie¿ o coœ zapytaæ. Wal œmia³o.

	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "To wszystko. Dziêki.", DIA_GRD_254_Orry_Your_Beer_Thats_All);
	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "A mo¿e jakieœ inne rady? Jak prze¿yæ w Kolonii?", DIA_GRD_254_Orry_Your_Beer_How_To_Survive_In_The_Colony);

	if (Npc_HasEquippedMeleeWeapon(hero) == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Gdzie mogê dostaæ broñ?", DIA_GRD_254_Orry_Your_Beer_About_Weapon);
	};

	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Jak siê ¿yje w Starym Obozie?", DIA_GRD_254_Orry_Your_Beer_About_Life_In_The_Old_Camp);
	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Naprawdê nie mogê spaæ na Placu Wymian? Przynajmniej do czasu, a¿ uprz¹tn¹ rumowisko?", DIA_GRD_254_Orry_Your_Beer_Why_Cant_I_Sleep_Here);
};

//Naprawdê nie mogê spaæ na Placu Wymian? Przynajmniej do czasu, a¿ uprz¹tn¹ rumowisko?
func void DIA_GRD_254_Orry_Your_Beer_Why_Cant_I_Sleep_Here()
{
	Orry_Your_Beer_Why_Cant_I_Sleep_Here = true;

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-36883");	//Naprawdê nie mogê spaæ na Placu Wymian? Przynajmniej do czasu, a¿ uprz¹tn¹ rumowisko?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-5926");    //Dopóki nie do³¹czysz do Starego Obozu – nic z tego. Diego na pewno ju¿ ci to wyjaœni³.
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-26122");   //A nie mogê po prostu do³¹czyæ do was z marszu?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-60815");   //Tylko Gomez mo¿e przyjmowaæ nowych cz³onków.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-62379");   //Powiem ci szczerze. Jeœli nie masz na tyle pomyœlunku, ¿eby zostaæ Cieniem lub Stra¿nikiem, to lepiej siê do nas nie pchaæ.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-8934");    //Wiêkszoœæ œwie¿aków l¹duje z kilofem w kopalni. Bêd¹ wydobywaæ rudê do usranej œmierci. Nie chcesz takiego ¿ycia.
	
	Info_ClearChoices	(DIA_GRD_254_Orry_Your_Beer);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "To wszystko. Dziêki.", DIA_GRD_254_Orry_Your_Beer_Thats_All);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "A mo¿e jakieœ inne rady? Jak prze¿yæ w Kolonii?", DIA_GRD_254_Orry_Your_Beer_How_To_Survive_In_The_Colony);

	if (Npc_HasEquippedMeleeWeapon(hero) == false)
	{
		if (Orry_Your_Beer_About_Weapon == false)
		{
			Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Gdzie mogê dostaæ broñ?", DIA_GRD_254_Orry_Your_Beer_About_Weapon);
		} 

		else if (Orry_Your_Beer_About_Good_Sword == false)
		{
			Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "A jakiœ porz¹dny miecz?", DIA_GRD_254_Orry_Your_Beer_About_Good_Sword);
		};
	};

	if (Orry_Your_Beer_About_Life_In_The_Old_Camp == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Jak siê ¿yje w Starym Obozie?", DIA_GRD_254_Orry_Your_Beer_About_Life_In_The_Old_Camp);
	};

	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Jeœli nie mogê spaæ na Placu Wymian, to gdzie?", DIA_GRD_254_Orry_Your_Beer_If_Not_Here_Then_Where);
};

// Jeœli nie mogê spaæ na Placu Wymian, to gdzie?
func void DIA_GRD_254_Orry_Your_Beer_If_Not_Here_Then_Where()
{
	Orry_Your_Beer_If_Not_Here_Then_Where = true;

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-31470");	//Jeœli nie mogê spaæ na Placu Wymian, to gdzie?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-72919");	//A co, na ziemi nie ³aska?
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-35560");	//Diego mówi³, ¿e w okolicy kanionu ³azi cieniostwór.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-11063");	//Aaa, no tak. Psiajucha, pechowo. Mo¿esz spróbowaæ w starym obozie Kopaczy na wystêpie skalnym naprzeciwko zatopionej kopalni.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-57449"); 	//Wydaje mi siê, ¿e widzia³em, jak ktoœ siê tam krêci... Mo¿e ci z Nowego Obozu. Zreszt¹ sam siê przekonasz.
};

//Jak siê ¿yje w Starym Obozie?
func void DIA_GRD_254_Orry_Your_Beer_About_Life_In_The_Old_Camp()
{
	Orry_Your_Beer_About_Life_In_The_Old_Camp = true;

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Caption-18442-0");  //Jak siê ¿yje w Starym Obozie?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-7851");  		//Czasem s³oñce, czasem sraczka.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-67623");  		//Wiesz... Jeœli dogadasz siê z ogarami, bêdzie to pewnie najlepsza opcja na normalne ¿ycie w tym miejscu.
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-47911");		//Yhym. A konkretniej?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-45936");  		//Ale jeœli wkurzysz niew³aœciwych ludzi...
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-90405");  		//£apiê.
};

//Gdzie mogê dostaæ broñ?
func void DIA_GRD_254_Orry_Your_Beer_About_Weapon()
{
	Orry_Your_Beer_About_Weapon = true;

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-75124");	//Gdzie mogê dostaæ broñ?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-21858");	//Na pewno nie od nas.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-10311");	//Spróbuj poszukaæ wokó³ Opuszczonej Kopalni. Wala siê tam pewnie sporo starych narzêdzi, mo¿e nawet jakieœ ¿elastwo.
	
	Info_ClearChoices 	(DIA_GRD_254_Orry_Your_Beer);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "To wszystko. Dziêki.", DIA_GRD_254_Orry_Your_Beer_Thats_All);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "A mo¿e jakieœ inne rady? Jak prze¿yæ w Kolonii?", DIA_GRD_254_Orry_Your_Beer_How_To_Survive_In_The_Colony);

	if (Npc_HasEquippedMeleeWeapon(hero) == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "A jakiœ porz¹dny miecz?", DIA_GRD_254_Orry_Your_Beer_About_Good_Sword);
	};

	if (Orry_Your_Beer_About_Life_In_The_Old_Camp == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Jak siê ¿yje w Starym Obozie?", DIA_GRD_254_Orry_Your_Beer_About_Life_In_The_Old_Camp);
	};

	if (Orry_Your_Beer_Why_Cant_I_Sleep_Here == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Naprawdê nie mogê spaæ na Placu Wymian? Przynajmniej do czasu, a¿ uprz¹tn¹ rumowisko?", DIA_GRD_254_Orry_Your_Beer_Why_Cant_I_Sleep_Here);
	} 

	else if (Orry_Your_Beer_If_Not_Here_Then_Where == false)
	{	
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Jeœli nie mogê spaæ na Placu Wymian, to gdzie?", DIA_GRD_254_Orry_Your_Beer_If_Not_Here_Then_Where);
	};
};

	//A jakiœ porz¹dny miecz?
	func void DIA_GRD_254_Orry_Your_Beer_About_Good_Sword()
	{
		Orry_Your_Beer_About_Good_Sword = true;

		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-59001");	//A jakiœ porz¹dny miecz?
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-10367");	//Taki to bêdziesz musia³ ukraœæ. Albo kupiæ.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-62457");	//Mam dla ciebie radê: ciesz siê ze wszystkiego, co tu dostajesz, i staraj siê nie sprawiaæ wra¿enia, ¿e œwiat jest ci coœ winien.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-79853");	//Bo nie jest.
		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-54075");	//W porz¹dku. Rozejrzê siê.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-21881");	//Tak zrób.
	};

//A mo¿e jakieœ inne rady? Jak prze¿yæ w Kolonii?
func void DIA_GRD_254_Orry_Your_Beer_How_To_Survive_In_The_Colony()
{
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-21109");  //A mo¿e jakieœ inne rady? Jak prze¿yæ w Kolonii?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-18513");  //PogódŸ siê z losem.
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-81881");  //Z losem?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-34140");  //Ta. To jest teraz twój dom i zostaniesz tu do usranej œmierci. Nie s³uchaj be³kotu ry¿ojadów czy innych kultystów.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-42085");  //Jak ju¿ sobie wbijesz to jedno do g³owy, bêdzie ci siê tutaj ¿y³o ca³kiem znoœnie.

	Info_ClearChoices 	(DIA_GRD_254_Orry_Your_Beer);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "Pewnie masz racjê.", DIA_GRD_254_Orry_Your_Beer_Maybe_You_Are_Right);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "Nie planujê siê tutaj zestarzeæ.", DIA_GRD_254_Orry_Your_Beer_About_Leaving);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "Brzmi nieweso³o.", DIA_GRD_254_Orry_Your_Beer_Sounds_Bad);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "Ry¿ojady i kultyœci?", DIA_GRD_254_Orry_Your_Beer_About_Rice_Eater);
};
	//Ry¿ojady i kultyœci?
	func void DIA_GRD_254_Orry_Your_Beer_About_Rice_Eater()
	{
		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-6832");  //Ry¿ojady i kultyœci?
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-25768"); //Zobaczysz.
	};

	//Brzmi nieweso³o.
	func void DIA_GRD_254_Orry_Your_Beer_Sounds_Bad()
	{
		Info_ClearChoices (DIA_GRD_254_Orry_Your_Beer);

		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-43544");  //Brzmi nieweso³o.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-71564");  //Przyzwyczaisz siê.
	};

	//Nie planujê siê tutaj zestarzeæ.
	func void DIA_GRD_254_Orry_Your_Beer_About_Leaving()
	{
		Info_ClearChoices (DIA_GRD_254_Orry_Your_Beer);
		
		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-50029");  //Nie planujê siê tutaj zestarzeæ.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-49997");  //Wszyscy tak mówi¹.
	};

	//Pewnie masz racjê.
	func void DIA_GRD_254_Orry_Your_Beer_Maybe_You_Are_Right()
	{	
		Info_ClearChoices (DIA_GRD_254_Orry_Your_Beer);

		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-77217");  //Pewnie masz racjê.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-96478");  //Wola³bym jej nie mieæ.
	};


//To wszystko. Dziêki.
func void DIA_GRD_254_Orry_Your_Beer_Thats_All()
{
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-37302");  //To wszystko. Dziêki.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-14126");  //Jasne. I nie daj siê zabiæ!

	AI_StopProcessInfos	(self);
};
