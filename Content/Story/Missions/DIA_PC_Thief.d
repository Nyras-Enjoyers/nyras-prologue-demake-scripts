//========================================
//-----------------> EXIT
//========================================

instance DIA_PC_Thief_Exit (C_INFO)
{
	npc			= PC_Thief;
	nr			= 999;
	condition	= DIA_PC_Thief_Exit_Condition;
	information	= DIA_PC_Thief_Exit_Info;
	permanent	= true;
	description = "To ja ju� p�jd�.";
};					   

func int DIA_PC_Thief_Exit_Condition()
{
	return true;
};

func void DIA_PC_Thief_Exit_Info()
{	
	AI_Output	(hero, self, "Diego-CH0-None-Hero-91268-1"); //To ja ju� p�jd�.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-2972"); 	 //Pewnie.

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> HELLO
//========================================
var int Diego_CanIHelpYou; // Whether player asked for help him
var int PC_Thief_About_Shadowbeast; // Whether `DIA_PC_Thief_About_Shadowbeast` was selected

instance DIA_PC_Thief_Hello (C_INFO)
{
	npc				= PC_Thief;
	nr				= 2;
	condition		= DIA_PC_Thief_Hello_Condition;
	information		= DIA_PC_Thief_Hello_Info;
	important		= true;
};

func int DIA_PC_Thief_Hello_Condition()
{
	return true;
};

func void DIA_PC_Thief_Hello_Info()
{
	AI_GotoNpc	(self, hero);

	AI_Output	(self, hero, "Diego-CH0-None-Diego-35455"); //Wci�� �yjesz? Dobrze. Jestem Diego.
	AI_Output	(hero, self, "Diego-CH0-None-Hero-33246");  //Jestem Ny...
	AI_Output	(self, hero, "Diego-CH0-None-Diego-43084"); //Nikogo tu nie obchodzi twoje imi�, ch�opcze � chyba �e dasz im ku temu pow�d.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-67833"); //S�uchaj, zwykle to ja pokazuj� �wie�akom, co jest co, ale lawina odci�a nas od doliny, wi�c mam teraz wa�niejsze sprawy na g�owie.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-98606"); //Nasi ludzie maj� oczy�ci� �cie�k�, ale znaj�c ich, zajmie im to par� dni. Znajd� sobie miejsce na ob�z, bo sp�dzisz tu troch� czasu.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-91856"); //Wszystko jasne?

	Info_AddChoice (DIA_PC_Thief_Hello, "M�g�bym rozbi� ob�z gdzie� tutaj?", DIA_PC_Thief_About_Camp);
	Info_AddChoice (DIA_PC_Thief_Hello, "Mog� jako� pom�c?", DIA_PC_Thief_Hello_I_Can_Help_You);
};

//Mog� jako� pom�c?
func void DIA_PC_Thief_Hello_I_Can_Help_You()
{
	Diego_CanIHelpYou = true;

	// Reset face if the speeches about the real shadowbeast finished.
	if (PC_Thief_About_Shadowbeast == true)
	{
		Mdl_StartFaceAni(hero, "S_NEUTRAL", 1, 1);
	};
	
	AI_Output	(hero, self, "Diego-CH0-None-Hero-76137");  //Mog� jako� pom�c?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-12922"); //Dzi�ki, ale nie.
};

//M�g�bym rozbi� ob�z gdzie� tutaj?
func void DIA_PC_Thief_About_Camp()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-91834"); 	  //M�g�bym rozbi� ob�z gdzie� tutaj?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-20055");   //Nie. Ten Plac Wymian nale�y do Starego Obozu i dop�ki nie staniesz si� jednym z nas, nie mo�esz si� tutaj w��czy� po zmroku.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-35601-0"); //Znajd� sobie jakie� dobrze os�oni�te miejsce. Nasi ch�opcy widzieli w pobli�u kanionu cieniostwora. Uwa�aj na nie. Poluj� w nocy.

	Info_ClearChoices 	(DIA_PC_Thief_Hello);
	Info_AddChoice 		(DIA_PC_Thief_Hello, "Rozumiem. Dzi�ki.", DIA_PC_Thief_I_Understand_Thanks);
	Info_AddChoice 		(DIA_PC_Thief_Hello, "Czekaj. Prawdziwego cieniostwora?", DIA_PC_Thief_About_Shadowbeast);

	if (Diego_CanIHelpYou == false)
	{
		Info_AddChoice (DIA_PC_Thief_Hello, "Mog� jako� pom�c?", DIA_PC_Thief_Hello_I_Can_Help_You);
	};
};

	//Czekaj. Prawdziwego cieniostwora?
	func void DIA_PC_Thief_About_Shadowbeast()
	{
		PC_Thief_About_Shadowbeast = true;
		
		// Fits to a voice
		Mdl_StartFaceAni(hero, "S_FRIGHTENED", 1, 5);
		
		AI_Output	(hero, self, "Diego-CH0-None-Hero-11753");  //Czekaj. Prawdziwego cieniostwora?
		AI_Output	(self, hero, "Diego-CH0-None-Diego-26027"); //Najprawdziwszego. To tylko jeden z wielu tutejszych stwor�w, kt�re z rado�ci� by ci� rozszarpa�y.
	};

//Rozumiem. Dzi�ki.
func void DIA_PC_Thief_I_Understand_Thanks()
{
	// Reset face if the speeches about the real shadowbeast finished.
	if (PC_Thief_About_Shadowbeast == true)
	{
		Mdl_StartFaceAni(hero, "S_NEUTRAL", 1, 1);
	};

	AI_Output	(hero, self, "Diego-CH0-None-Hero-25858");  //Rozumiem. Dzi�ki.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-3476");  //Jasne.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-73935"); //Witamy w Kolonii.

	//START QUEST
	Log_CreateTopic		(CH0_APlaceToSleep, LOG_MISSION);
	Log_SetTopicStatus	(CH0_APlaceToSleep, LOG_RUNNING);
	B_LogEntry			(CH0_APlaceToSleep, CH0_APlaceToSleep_0);
	MIS_CH0_APlaceToSleep = LOG_RUNNING;

	// Go to the place, where is Whistler
	Npc_ExchangeRoutine(self, "GoWhistler");

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> WHATS_UP
//========================================

instance DIA_PC_Thief_Whats_Up (C_INFO)
{
	npc				= PC_Thief;
	nr				= 1;
	condition		= DIA_PC_Thief_Whats_Up_Condition;
	information		= DIA_PC_Thief_Whats_Up_Info;
	important		= true;
	permanent		= true;
};

func int DIA_PC_Thief_Whats_Up_Condition()
{
	if (Npc_IsInState (self, ZS_Talk)) && (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello))
	{
		return true;
	};
};

func void DIA_PC_Thief_Whats_Up_Info()
{
	AI_Output	(self, hero, "Diego-CH0-None-Diego-24707"); //O co chodzi?
};


//========================================
//-----------------> ABOUT_BARRIER
//========================================

instance DIA_PC_Thief_About_Barrier (C_INFO)
{
	npc				= PC_Thief;
	nr				= 2;
	condition		= DIA_PC_Thief_About_Barrier_Condition;
	information		= DIA_PC_Thief_About_Barrier_Info;
	description 	= "Co do tej... bariery. Naprawd� nie da si� przez ni� przej��, gdy ju� si� tu wyl�duje?";
};

func int DIA_PC_Thief_About_Barrier_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello))
	{
		return true;
	};
};

func void DIA_PC_Thief_About_Barrier_Info()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-91769"); 	 //Co do tej... bariery. Naprawd� nie da si� przez ni� przej��, gdy ju� si� tu wyl�duje?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-51663");  //Da si�. Kiedy tylko zechcesz.
	AI_Output	(hero, self, "Diego-CH0-None-Hero-43033"); 	 //Ale...?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-5080");  //Ale oberwiesz w dupsko b�yskawic� tak paskudn�, �e nawet s�py nie b�d� chcia�y ze�re� tego, co z ciebie zostanie.
};

//========================================
//-----------------> WHATS_IS_YOUR_BUSINESS
//========================================

instance DIA_PC_Thief_Whats_Is_Your_Business (C_INFO)
{
	npc				= PC_Thief;
	nr				= 2;
	condition		= DIA_PC_Thief_Whats_Is_Your_Business_Condition;
	information		= DIA_PC_Thief_Whats_Is_Your_Business_Info;
	description 	= "Czym si� w�a�ciwie zajmujesz? Jeste� po stronie zarz�dc�w Kolonii?";
};

func int DIA_PC_Thief_Whats_Is_Your_Business_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello))
	{
		return true;
	};
};

func void DIA_PC_Thief_Whats_Is_Your_Business_Info()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-90410"); 	 //Czym si� w�a�ciwie zajmujesz? Jeste� po stronie zarz�dc�w Kolonii?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-94012");  //Je�li masz na my�li Stary Ob�z, to tak � cho� jestem tylko Cieniem. 
	AI_Output	(hero, self, "Diego-CH0-None-Hero-55986"); 	 //�Cieniem�?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-3860");   //Tak. Mo�na powiedzie�, �e jeste�my w obozie specami od wszystkiego. Nied�ugo za�apiesz.
};

//========================================
//-----------------> ABOUT_OLD_CAMP
//========================================

instance DIA_PC_Thief_About_Old_Camp (C_INFO)
{
	npc				= PC_Thief;
	nr				= 2;
	condition		= DIA_PC_Thief_About_Old_Camp_Condition;
	information		= DIA_PC_Thief_About_Old_Camp_Info;
	description 	= "Czyli ten ca�y Stary Ob�z to g��wna osada w Kolonii?";
};

func int DIA_PC_Thief_About_Old_Camp_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_PC_Thief_Whats_Is_Your_Business))
	{
		return true;
	};
};

func void DIA_PC_Thief_About_Old_Camp_Info()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-29785"); 	 //Czyli ten ca�y Stary Ob�z to g��wna osada w Kolonii?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-38850");  //Na pewno jest najstarsza. Nasz przyw�dca, Gomez, i jego ludzie za�o�yli j� zaraz po buncie. Zbudowano j� wok� zamku, w kt�rym kiedy� mieszkali stra�nicy wi�zienni.
	AI_Output	(hero, self, "Diego-CH0-None-Hero-10718"); 	 //Ale s� jeszcze inne?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-48329");  //Czemu pytasz?
	AI_Output	(hero, self, "Diego-CH0-None-Hero-26492"); 	 //Z ciekawo�ci.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-90638");  //B�dziesz si� musia� sam przekona�.
};

//========================================
//-----------------> HOW_DID_YOU_GET_HERE
//========================================

instance DIA_PC_Thief_How_Did_You_Get_Here (C_INFO)
{
	npc				= PC_Thief;
	nr				= 2;
	condition		= DIA_PC_Thief_How_Did_You_Get_Here_Condition;
	information		= DIA_PC_Thief_How_Did_You_Get_Here_Info;
	description 	= "A ty jak tu trafi�e�?";
};

func int DIA_PC_Thief_How_Did_You_Get_Here_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello))
	{
		return true;
	};
};

func void DIA_PC_Thief_How_Did_You_Get_Here_Info()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-58079"); 	 //A ty jak tu trafi�e�?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-7105");   //Znalaz�em si� w niew�a�ciwym miejscu o niew�a�ciwym czasie.
	AI_Output	(hero, self, "Diego-CH0-None-Hero-81111"); 	 //To znaczy...?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-45278");  //�e znalaz�em si� w niew�a�ciwym miejscu o niew�a�ciwym czasie.
};

//========================================
//-----------------> ABOUT_WEAPON
//========================================

instance DIA_PC_Thief_About_Weapon (C_INFO)
{
	npc				= PC_Thief;
	nr				= 2;
	condition		= DIA_PC_Thief_About_Weapon_Condition;
	information		= DIA_PC_Thief_About_Weapon_Info;
	description 	= "Gdzie znajd� jak�� bro�?";
};

func int DIA_PC_Thief_About_Weapon_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello))
	{
		return true;
	};
};

func void DIA_PC_Thief_About_Weapon_Info()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-36443"); 	 //Gdzie znajd� jak�� bro�?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-67611");  //Nie tutaj � to teren Starego Obozu. Rozejrzyj si� po kanionie, na pewno co� znajdziesz. Nawet je�li b�dzie to tylko zardzewia�y kilof.
};

//========================================
//-----------------> YOU_LET_ME_SLEEP_HERE
//========================================

instance DIA_PC_Thief_You_Let_Me_Sleep_Here (C_INFO)
{
	npc				= PC_Thief;
	nr				= 3;
	condition		= DIA_PC_Thief_You_Let_Me_Sleep_Here_Condition;
	information		= DIA_PC_Thief_You_Let_Me_Sleep_Here_Info;
	description 	= "S�uchaj, POZWOLISZ mi si� tu przespa�.";
};

func int DIA_PC_Thief_You_Let_Me_Sleep_Here_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello))
	{
		return true;
	};
};

func void DIA_PC_Thief_You_Let_Me_Sleep_Here_Info()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-31895"); 	 //S�uchaj, POZWOLISZ mi si� tu przespa�.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-68146");  //Uwa�aj, ch�opcze. Na pewno chcesz si� tak bawi�?

	Info_AddChoice (DIA_PC_Thief_You_Let_Me_Sleep_Here, "Tylko �artowa�em.", DIA_PC_Thief_This_Is_A_Joke);
	Info_AddChoice (DIA_PC_Thief_You_Let_Me_Sleep_Here, "Stary dziad z ciebie.", DIA_PC_Thief_You_Are_Old);
};

//Stary dziad z ciebie.
func void DIA_PC_Thief_You_Are_Old()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-72690"); 	 //Stary dziad z ciebie.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-85201");  //W takim razie miejmy to z g�owy.

	AI_StopProcessInfos	(self);
	
	B_Attack	(self, hero, AIV_AR_KILL);
};

//Tylko �artowa�em.
func void DIA_PC_Thief_This_Is_A_Joke()
{
	Info_ClearChoices (DIA_PC_Thief_You_Let_Me_Sleep_Here);

	AI_Output	(hero, self, "Diego-CH0-None-Hero-91798"); 	 //Tylko �artowa�em.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-10917");  //To lepiej nie �artuj, bo ma�o kto ma tutaj poczucie humoru.
};

//========================================
//-----------------> THIEF_ABOUT_KIRGO_DEATH
//========================================

instance DIA_PC_Thief_About_Kirgo_Death (C_INFO)
{
	npc				= PC_Thief;
	nr				= 4;
	condition		= DIA_PC_Thief_About_Kirgo_Death_Condition;
	information		= DIA_PC_Thief_About_Kirgo_Death_Here_Info;
	description 	= "Mia� miejsce wypadek. Kirgo nie �yje.";
};

func int DIA_PC_Thief_About_Kirgo_Death_Condition()
{
	
	if (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello)) && (Kirgo_Killed == true) && (Kirgo_IntroducedHimself == true)
	{
		return true;
	};
};

func void DIA_PC_Thief_About_Kirgo_Death_Here_Info()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-6226");	//Mia� miejsce wypadek. Kirgo nie �yje.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-31204");	//Co?!
	AI_Output	(hero, self, "Diego-CH0-None-Hero-9564");	//Trenowali�my walk� i �le si� to sko�czy�o. Uzna�em, �e powinienem ci powiedzie�.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-50517");	//Dobrze rozumiem? Zabi�e� jednego z naszych ludzi i wr�ci�e�, �eby mi o tym powiedzie�?
	AI_Output	(hero, self, "Diego-CH0-None-Hero-99938");	//Na to wychodzi.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-4242");	//Jeste� albo wyj�tkowo uczciwy, albo wyj�tkowo g�upi. Szlag, ten dzie� robi si� coraz paskudniejszy.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-74131");	//Wyno� si� z Placu Wymian i nie rzucaj w oczy. 
	AI_Output	(self, hero, "Diego-CH0-None-Diego-75116");	//I, gdy nasi ludzie oczyszcz� drog�, zapomnij o wszystkim, co m�wi�em o przeprawie do Starego Obozu. Odpadasz. 

	Info_AddChoice (DIA_PC_Thief_About_Kirgo_Death, "W porz�dku, dzi�kuj�.", DIA_PC_Thief_About_Kirgo_Death_I_Understand_Thank_You);
	Info_AddChoice (DIA_PC_Thief_About_Kirgo_Death, "Nie jeste� pod wra�eniem?", DIA_PC_Thief_About_Kirgo_Death_Are_You_Impressed);
	Info_AddChoice (DIA_PC_Thief_About_Kirgo_Death, "Nie zabijesz mnie?", DIA_PC_Thief_About_Kirgo_Death_Will_You_Spare_Me);
};

//Nie jeste� pod wra�eniem?
func void DIA_PC_Thief_About_Kirgo_Death_Are_You_Impressed()
{
	AI_Output	(hero, self, "Diego-CH0-None-Caption-69944-0");	//Nie jeste� pod wra�eniem?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-94971");		//Czy jes...
	AI_Output	(self, hero, "Diego-CH0-None-Diego-76598");		//Nie jestem pewien, czy pr�bujesz by� zabawny, ale moja cierpliwo�� ma granice.
};

//Nie zabijesz mnie?
func void DIA_PC_Thief_About_Kirgo_Death_Will_You_Spare_Me()
{
	AI_Output	(hero, self, "Diego-CH0-None-Caption-96231-0");	//Nie zabijesz mnie?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-16593");		//A chcesz, �ebym to zrobi�?
	AI_Output	(hero, self, "Diego-CH0-None-Hero-54250");		//Nie.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-95015");		//To nie zadawaj g�upich pyta�. 
};

//W porz�dku, dzi�kuj�.
func void DIA_PC_Thief_About_Kirgo_Death_I_Understand_Thank_You()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-67451");	//W porz�dku, dzi�kuj�.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-31013");	//Nie m�w tak. To by� wypadek i nie p�jdziesz przez niego do piachu.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-1177");	//Id� ju� st�d. I pod �adnym pozorem nie m�w nic Orry�emu. 

	Info_ClearChoices (DIA_PC_Thief_About_Kirgo_Death);
};
