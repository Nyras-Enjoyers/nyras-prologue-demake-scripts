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
	description = "To ja ju� p�jd�.";
};					   

func int DIA_GRD_254_Orry_Exit_Condition()
{
	return true;
};

func void DIA_GRD_254_Orry_Exit_Info()
{	
	AI_Output	(hero, self, "Orry-CH0-None-Hero-73692");	//To ja ju� p�jd�.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-52966");	//Jasne. Powodzenia, ��todziobie!

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
	AI_Output	(self, hero, "Orry-CH0-None-Orry-35350");  //�wie�ak, co? Nie wiedzia�em, �e kogo� wrzucaj�. Mia�e� szcz�cie.
	AI_Output	(hero, self, "Orry-CH0-None-Hero-62484");  //Dlaczego?
	AI_Output	(self, hero, "Orry-CH0-None-Orry-81876");  //Gdyby nie lawina skalna, kilku z naszych z pewno�ci� wysz�oby ci na powitanie.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-50913");  //Obiliby ci ryj zawodowo.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-3202");   //W ka�dym razie, je�li zmierzasz do doliny, musisz poczeka�, a� oczyszcz� drog�. Wspinaczka po urwisku...
	AI_Output	(hero, self, "Orry-CH0-None-Hero-17889");  //Jest zbyt niebezpieczna. Wiem. Diego mi powiedzia�.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-90220");  //To dobrze. Teraz jeszcze znajd� sobie jeszcze miejsce do spania.
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
	description 	= "A ty co zrobi�e�? Dlaczego ci� tu wtr�cili?";
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
	AI_Output	(hero, self, "Orry-CH0-None-Hero-93802");  //A ty co zrobi�e�? Dlaczego ci� tu wtr�cili?
	AI_Output	(self, hero, "Orry-CH0-None-Orry-34664");  //Mnie? Nie zrobi�em nic szczeg�lnego.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-1321");   //Sko�czy�y mi si� fundusze, wpad�em w z�e towarzystwo, a potem napatoczy�em si� na stra�e, kiedy akurat kogo� obrobi�em.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-45461");  //Szast-prast i jestem tutaj. A ty?

	Info_AddChoice (DIA_GRD_254_Orry_What_Did_You_Do, "Nie chc� o tym gada�.", DIA_GRD_254_Orry_What_Did_You_Do_No_More_About_It);

	if (Npc_KnowsInfo (hero, DIA_PC_Thief_How_Did_You_Get_Here))
	{
		Info_AddChoice (DIA_GRD_254_Orry_What_Did_You_Do, "Znalaz�em si� w niew�a�ciwym miejscu o niew�a�ciwym czasie.", DIA_GRD_254_Orry_What_Did_You_Do_Wrong_Place_And_Time);
	};

	Info_AddChoice (DIA_GRD_254_Orry_What_Did_You_Do, "Zabi�em cz�owieka.", DIA_GRD_254_Orry_What_Did_You_Do_I_Killed_Someone);
};

//Zabi�em cz�owieka.
func void DIA_GRD_254_Orry_What_Did_You_Do_I_Killed_Someone()
{
	Info_ClearChoices (DIA_GRD_254_Orry_What_Did_You_Do);

	AI_Output	(hero, self, "Orry-CH0-None-Caption-85953-0");  //Zabi�em cz�owieka.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-24602");  		//Ty? A nie wygl�dasz.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-37552");  		//Tylko nie m�w o tym komu popadnie. Ogranicz si� do tych, kt�rych to mo�e zaciekawi�.
	AI_Output	(hero, self, "Orry-CH0-None-Hero-17139");  		//Jasne.
};

//Znalaz�em si� w niew�a�ciwym miejscu o niew�a�ciwym czasie.
func void DIA_GRD_254_Orry_What_Did_You_Do_Wrong_Place_And_Time()
{
	Info_ClearChoices (DIA_GRD_254_Orry_What_Did_You_Do);

	AI_Output	(hero, self, "Orry-CH0-None-Caption-7105-0");  	//Znalaz�em si� w niew�a�ciwym miejscu o niew�a�ciwym czasie.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-97807");  		//Gdzie� to ju� s�ysza�em.
};

//Nie chc� o tym gada�.
func void DIA_GRD_254_Orry_What_Did_You_Do_No_More_About_It()
{
	Info_ClearChoices (DIA_GRD_254_Orry_What_Did_You_Do);

	AI_Output	(hero, self, "Orry-CH0-None-Caption-16021-0");  //Nie chc� o tym gada�.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-84803");  		//Nie b�dziemy si� sobie zwierza�? W porz�dku.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-50138");  		//I tak wszyscy zawsze m�wi� to samo.
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
	description 	= "Chcia�bym o co� zapyta�.";
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
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-57035");  //Chcia�bym o co� zapyta�.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-74214");  //Czy�by? A mnie strasznie zasch�o w gardle.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-3732");   //Zr�bmy tak: znajd� mi co� mocniejszego, a jak zwil�� garde�ko to mo�esz pyta�, jakby jutra mia�o nie by�.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-31914");  //R�czka r�czk� myje.

	Info_AddChoice (DIA_GRD_254_Orry_Let_Me_Ask_You_Something, "Nie mam czasu na bzdury.", DIA_GRD_254_Orry_Let_Me_Ask_You_Something_No_Time);
	Info_AddChoice (DIA_GRD_254_Orry_Let_Me_Ask_You_Something, "Niech b�dzie.", DIA_GRD_254_Orry_Let_Me_Ask_You_Something_Agree);
	Info_AddChoice (DIA_GRD_254_Orry_Let_Me_Ask_You_Something, "O jakim napitku m�wimy?", DIA_GRD_254_Orry_Let_Me_Ask_You_Something_About_Beer);
};

//O jakim napitku m�wimy?
func void DIA_GRD_254_Orry_Let_Me_Ask_You_Something_About_Beer()
{
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-67257");  //O jakim napitku m�wimy?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-96594");  //Oo napi�bym si� varanckiego czerwonego, rocznik �82. I przyda�aby si� cycata, ruda dziewka, kt�ra b�dzie mi polewa�.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-2862");   //Ale niestety to Kolonia, wi�c wystarczy mi butelczyna tej berbeluchy, kt�ra uchodzi tu za piwo.
};

//Niech b�dzie.
func void DIA_GRD_254_Orry_Let_Me_Ask_You_Something_Agree()
{
	Orry_IWillDoThat = true;

	Info_ClearChoices (DIA_GRD_254_Orry_Let_Me_Ask_You_Something);

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-28969");  //Niech b�dzie.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-103");    //Dzi�ki niech b�d� Innosowi. Wiesz, gdzie mnie szuka�.

	AI_StopProcessInfos	(self);
};

//Nie mam czasu na bzdury.
func void DIA_GRD_254_Orry_Let_Me_Ask_You_Something_No_Time()
{
	Orry_IHaveNoTimeForThat = true;
	
	Info_ClearChoices (DIA_GRD_254_Orry_Let_Me_Ask_You_Something);

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-42210");    //Nie mam czasu na bzdury.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-28733");  	 //Co, jeste� ponad to?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-31985-0");  //Oj, ch�opcze, czeka ci� nie lada niespodzianka.

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
	description 	= "Musz� ci co� powiedzie�. Kirgo nie �yje.";
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
	AI_Output	(hero, self, "Orry-CH0-None-Hero-88403");	//Musz� ci co� powiedzie�. Kirgo nie �yje.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-44358");	//...Co?! Jak? Dlaczego?

	Info_AddChoice (DIA_GRD_254_Orry_About_Kirgo_Death, "To by� wypadek. Trenowali�my walk� i... nadzia� mi si� na miecz.", DIA_GRD_254_Orry_About_Kirgo_Death_Truth);
	Info_AddChoice (DIA_GRD_254_Orry_About_Kirgo_Death, "To chyba sprawka cieniostwora.", DIA_GRD_254_Orry_About_Kirgo_Death_Lie);
};

//To chyba sprawka cieniostwora.
func void DIA_GRD_254_Orry_About_Kirgo_Death_Lie()
{
	AI_Output	(hero, self, "Orry-CH0-None-Caption-88176-0");	//To chyba sprawka cieniostwora.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-51220");		//Przecie� widzia�em go dzi� rano... Kurwa... KURWA MA�!
	AI_Output	(self, hero, "Orry-CH0-None-Orry-45442");		//Nie mog� teraz opu�ci� posterunku, ale poszukam go jutro z samego rana.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-22759");		//Przekonamy si�, kto to zrobi�. W ka�dym razie... dzi�ki za informacj�. 

	AI_StopProcessInfos	(self);
};

//To by� wypadek. Trenowali�my walk� i... nadzia� mi si� na miecz.
func void DIA_GRD_254_Orry_About_Kirgo_Death_Truth()
{
	AI_Output	(hero, self, "Orry-CH0-None-Caption-12927-0");	//To by� wypadek. Trenowali�my walk� i... nadzia� mi si� na miecz.
	AI_Output	(self, hero, "Orry-CH0-None-Orry-36012");		//...Wypadek?
	AI_Output	(self, hero, "Orry-CH0-None-Orry-21384");		//Nie, nie, nie kupuj� tego. Kirgo by� jednym z najlepszych zabijak�w na arenie. 
	AI_Output	(self, hero, "Orry-CH0-None-Orry-10752");		//Ty to zrobi�e�. I to celowo. Powalony gn�j... Zapierdol� ci�!

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
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-62196");  //No, ale chcia�e� przecie� o co� zapyta�. Wal �mia�o.

	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "To wszystko. Dzi�ki.", DIA_GRD_254_Orry_Your_Beer_Thats_All);
	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "A mo�e jakie� inne rady? Jak prze�y� w Kolonii?", DIA_GRD_254_Orry_Your_Beer_How_To_Survive_In_The_Colony);

	if (Npc_HasEquippedMeleeWeapon(hero) == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Gdzie mog� dosta� bro�?", DIA_GRD_254_Orry_Your_Beer_About_Weapon);
	};

	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Jak si� �yje w Starym Obozie?", DIA_GRD_254_Orry_Your_Beer_About_Life_In_The_Old_Camp);
	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Naprawd� nie mog� spa� na Placu Wymian? Przynajmniej do czasu, a� uprz�tn� rumowisko?", DIA_GRD_254_Orry_Your_Beer_Why_Cant_I_Sleep_Here);
};

//Naprawd� nie mog� spa� na Placu Wymian? Przynajmniej do czasu, a� uprz�tn� rumowisko?
func void DIA_GRD_254_Orry_Your_Beer_Why_Cant_I_Sleep_Here()
{
	Orry_Your_Beer_Why_Cant_I_Sleep_Here = true;

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-36883");	//Naprawd� nie mog� spa� na Placu Wymian? Przynajmniej do czasu, a� uprz�tn� rumowisko?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-5926");    //Dop�ki nie do��czysz do Starego Obozu � nic z tego. Diego na pewno ju� ci to wyja�ni�.
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-26122");   //A nie mog� po prostu do��czy� do was z marszu?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-60815");   //Tylko Gomez mo�e przyjmowa� nowych cz�onk�w.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-62379");   //Powiem ci szczerze. Je�li nie masz na tyle pomy�lunku, �eby zosta� Cieniem lub Stra�nikiem, to lepiej si� do nas nie pcha�.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-8934");    //Wi�kszo�� �wie�ak�w l�duje z kilofem w kopalni. B�d� wydobywa� rud� do usranej �mierci. Nie chcesz takiego �ycia.
	
	Info_ClearChoices	(DIA_GRD_254_Orry_Your_Beer);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "To wszystko. Dzi�ki.", DIA_GRD_254_Orry_Your_Beer_Thats_All);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "A mo�e jakie� inne rady? Jak prze�y� w Kolonii?", DIA_GRD_254_Orry_Your_Beer_How_To_Survive_In_The_Colony);

	if (Npc_HasEquippedMeleeWeapon(hero) == false)
	{
		if (Orry_Your_Beer_About_Weapon == false)
		{
			Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Gdzie mog� dosta� bro�?", DIA_GRD_254_Orry_Your_Beer_About_Weapon);
		} 

		else if (Orry_Your_Beer_About_Good_Sword == false)
		{
			Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "A jaki� porz�dny miecz?", DIA_GRD_254_Orry_Your_Beer_About_Good_Sword);
		};
	};

	if (Orry_Your_Beer_About_Life_In_The_Old_Camp == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Jak si� �yje w Starym Obozie?", DIA_GRD_254_Orry_Your_Beer_About_Life_In_The_Old_Camp);
	};

	Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Je�li nie mog� spa� na Placu Wymian, to gdzie?", DIA_GRD_254_Orry_Your_Beer_If_Not_Here_Then_Where);
};

// Je�li nie mog� spa� na Placu Wymian, to gdzie?
func void DIA_GRD_254_Orry_Your_Beer_If_Not_Here_Then_Where()
{
	Orry_Your_Beer_If_Not_Here_Then_Where = true;

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-31470");	//Je�li nie mog� spa� na Placu Wymian, to gdzie?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-72919");	//A co, na ziemi nie �aska?
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-35560");	//Diego m�wi�, �e w okolicy kanionu �azi cieniostw�r.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-11063");	//Aaa, no tak. Psiajucha, pechowo. Mo�esz spr�bowa� w starym obozie Kopaczy na wyst�pie skalnym naprzeciwko zatopionej kopalni.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-57449"); 	//Wydaje mi si�, �e widzia�em, jak kto� si� tam kr�ci... Mo�e ci z Nowego Obozu. Zreszt� sam si� przekonasz.
};

//Jak si� �yje w Starym Obozie?
func void DIA_GRD_254_Orry_Your_Beer_About_Life_In_The_Old_Camp()
{
	Orry_Your_Beer_About_Life_In_The_Old_Camp = true;

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Caption-18442-0");  //Jak si� �yje w Starym Obozie?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-7851");  		//Czasem s�o�ce, czasem sraczka.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-67623");  		//Wiesz... Je�li dogadasz si� z ogarami, b�dzie to pewnie najlepsza opcja na normalne �ycie w tym miejscu.
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-47911");		//Yhym. A konkretniej?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-45936");  		//Ale je�li wkurzysz niew�a�ciwych ludzi...
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-90405");  		//�api�.
};

//Gdzie mog� dosta� bro�?
func void DIA_GRD_254_Orry_Your_Beer_About_Weapon()
{
	Orry_Your_Beer_About_Weapon = true;

	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-75124");	//Gdzie mog� dosta� bro�?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-21858");	//Na pewno nie od nas.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-10311");	//Spr�buj poszuka� wok� Opuszczonej Kopalni. Wala si� tam pewnie sporo starych narz�dzi, mo�e nawet jakie� �elastwo.
	
	Info_ClearChoices 	(DIA_GRD_254_Orry_Your_Beer);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "To wszystko. Dzi�ki.", DIA_GRD_254_Orry_Your_Beer_Thats_All);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "A mo�e jakie� inne rady? Jak prze�y� w Kolonii?", DIA_GRD_254_Orry_Your_Beer_How_To_Survive_In_The_Colony);

	if (Npc_HasEquippedMeleeWeapon(hero) == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "A jaki� porz�dny miecz?", DIA_GRD_254_Orry_Your_Beer_About_Good_Sword);
	};

	if (Orry_Your_Beer_About_Life_In_The_Old_Camp == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Jak si� �yje w Starym Obozie?", DIA_GRD_254_Orry_Your_Beer_About_Life_In_The_Old_Camp);
	};

	if (Orry_Your_Beer_Why_Cant_I_Sleep_Here == false)
	{
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Naprawd� nie mog� spa� na Placu Wymian? Przynajmniej do czasu, a� uprz�tn� rumowisko?", DIA_GRD_254_Orry_Your_Beer_Why_Cant_I_Sleep_Here);
	} 

	else if (Orry_Your_Beer_If_Not_Here_Then_Where == false)
	{	
		Info_AddChoice (DIA_GRD_254_Orry_Your_Beer, "Je�li nie mog� spa� na Placu Wymian, to gdzie?", DIA_GRD_254_Orry_Your_Beer_If_Not_Here_Then_Where);
	};
};

	//A jaki� porz�dny miecz?
	func void DIA_GRD_254_Orry_Your_Beer_About_Good_Sword()
	{
		Orry_Your_Beer_About_Good_Sword = true;

		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-59001");	//A jaki� porz�dny miecz?
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-10367");	//Taki to b�dziesz musia� ukra��. Albo kupi�.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-62457");	//Mam dla ciebie rad�: ciesz si� ze wszystkiego, co tu dostajesz, i staraj si� nie sprawia� wra�enia, �e �wiat jest ci co� winien.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-79853");	//Bo nie jest.
		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-54075");	//W porz�dku. Rozejrz� si�.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-21881");	//Tak zr�b.
	};

//A mo�e jakie� inne rady? Jak prze�y� w Kolonii?
func void DIA_GRD_254_Orry_Your_Beer_How_To_Survive_In_The_Colony()
{
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-21109");  //A mo�e jakie� inne rady? Jak prze�y� w Kolonii?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-18513");  //Pog�d� si� z losem.
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-81881");  //Z losem?
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-34140");  //Ta. To jest teraz tw�j dom i zostaniesz tu do usranej �mierci. Nie s�uchaj be�kotu ry�ojad�w czy innych kultyst�w.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-42085");  //Jak ju� sobie wbijesz to jedno do g�owy, b�dzie ci si� tutaj �y�o ca�kiem zno�nie.

	Info_ClearChoices 	(DIA_GRD_254_Orry_Your_Beer);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "Pewnie masz racj�.", DIA_GRD_254_Orry_Your_Beer_Maybe_You_Are_Right);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "Nie planuj� si� tutaj zestarze�.", DIA_GRD_254_Orry_Your_Beer_About_Leaving);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "Brzmi nieweso�o.", DIA_GRD_254_Orry_Your_Beer_Sounds_Bad);
	Info_AddChoice 		(DIA_GRD_254_Orry_Your_Beer, "Ry�ojady i kulty�ci?", DIA_GRD_254_Orry_Your_Beer_About_Rice_Eater);
};
	//Ry�ojady i kulty�ci?
	func void DIA_GRD_254_Orry_Your_Beer_About_Rice_Eater()
	{
		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-6832");  //Ry�ojady i kulty�ci?
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-25768"); //Zobaczysz.
	};

	//Brzmi nieweso�o.
	func void DIA_GRD_254_Orry_Your_Beer_Sounds_Bad()
	{
		Info_ClearChoices (DIA_GRD_254_Orry_Your_Beer);

		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-43544");  //Brzmi nieweso�o.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-71564");  //Przyzwyczaisz si�.
	};

	//Nie planuj� si� tutaj zestarze�.
	func void DIA_GRD_254_Orry_Your_Beer_About_Leaving()
	{
		Info_ClearChoices (DIA_GRD_254_Orry_Your_Beer);
		
		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-50029");  //Nie planuj� si� tutaj zestarze�.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-49997");  //Wszyscy tak m�wi�.
	};

	//Pewnie masz racj�.
	func void DIA_GRD_254_Orry_Your_Beer_Maybe_You_Are_Right()
	{	
		Info_ClearChoices (DIA_GRD_254_Orry_Your_Beer);

		AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-77217");  //Pewnie masz racj�.
		AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-96478");  //Wola�bym jej nie mie�.
	};


//To wszystko. Dzi�ki.
func void DIA_GRD_254_Orry_Your_Beer_Thats_All()
{
	AI_Output	(hero, self, "Orry-CH0-G1RDemo_OrryBeer-Hero-37302");  //To wszystko. Dzi�ki.
	AI_Output	(self, hero, "Orry-CH0-G1RDemo_OrryBeer-Orry-14126");  //Jasne. I nie daj si� zabi�!

	AI_StopProcessInfos	(self);
};
