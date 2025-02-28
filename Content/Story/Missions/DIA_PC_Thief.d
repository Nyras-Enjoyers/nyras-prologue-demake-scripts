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
	description = "To ja ju¿ pójdê.";
};					   

func int DIA_PC_Thief_Exit_Condition()
{
	return true;
};

func void DIA_PC_Thief_Exit_Info()
{	
	AI_Output	(hero, self, "Diego-CH0-None-Hero-91268-1"); //To ja ju¿ pójdê.
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

	AI_Output	(self, hero, "Diego-CH0-None-Diego-35455"); //Wci¹¿ ¿yjesz? Dobrze. Jestem Diego.
	AI_Output	(hero, self, "Diego-CH0-None-Hero-33246");  //Jestem Ny...
	AI_Output	(self, hero, "Diego-CH0-None-Diego-43084"); //Nikogo tu nie obchodzi twoje imiê, ch³opcze – chyba ¿e dasz im ku temu powód.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-67833"); //S³uchaj, zwykle to ja pokazujê œwie¿akom, co jest co, ale lawina odciê³a nas od doliny, wiêc mam teraz wa¿niejsze sprawy na g³owie.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-98606"); //Nasi ludzie maj¹ oczyœciæ œcie¿kê, ale znaj¹c ich, zajmie im to parê dni. ZnajdŸ sobie miejsce na obóz, bo spêdzisz tu trochê czasu.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-91856"); //Wszystko jasne?

	Info_AddChoice (DIA_PC_Thief_Hello, "Móg³bym rozbiæ obóz gdzieœ tutaj?", DIA_PC_Thief_About_Camp);
	Info_AddChoice (DIA_PC_Thief_Hello, "Mogê jakoœ pomóc?", DIA_PC_Thief_Hello_I_Can_Help_You);
};

//Mogê jakoœ pomóc?
func void DIA_PC_Thief_Hello_I_Can_Help_You()
{
	Diego_CanIHelpYou = true;

	// Reset face if the speeches about the real shadowbeast finished.
	if (PC_Thief_About_Shadowbeast == true)
	{
		Mdl_StartFaceAni(hero, "S_NEUTRAL", 1, 1);
	};
	
	AI_Output	(hero, self, "Diego-CH0-None-Hero-76137");  //Mogê jakoœ pomóc?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-12922"); //Dziêki, ale nie.
};

//Móg³bym rozbiæ obóz gdzieœ tutaj?
func void DIA_PC_Thief_About_Camp()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-91834"); 	  //Móg³bym rozbiæ obóz gdzieœ tutaj?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-20055");   //Nie. Ten Plac Wymian nale¿y do Starego Obozu i dopóki nie staniesz siê jednym z nas, nie mo¿esz siê tutaj w³óczyæ po zmroku.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-35601-0"); //ZnajdŸ sobie jakieœ dobrze os³oniête miejsce. Nasi ch³opcy widzieli w pobli¿u kanionu cieniostwora. Uwa¿aj na nie. Poluj¹ w nocy.

	Info_ClearChoices 	(DIA_PC_Thief_Hello);
	Info_AddChoice 		(DIA_PC_Thief_Hello, "Rozumiem. Dziêki.", DIA_PC_Thief_I_Understand_Thanks);
	Info_AddChoice 		(DIA_PC_Thief_Hello, "Czekaj. Prawdziwego cieniostwora?", DIA_PC_Thief_About_Shadowbeast);

	if (Diego_CanIHelpYou == false)
	{
		Info_AddChoice (DIA_PC_Thief_Hello, "Mogê jakoœ pomóc?", DIA_PC_Thief_Hello_I_Can_Help_You);
	};
};

	//Czekaj. Prawdziwego cieniostwora?
	func void DIA_PC_Thief_About_Shadowbeast()
	{
		PC_Thief_About_Shadowbeast = true;
		
		// Fits to a voice
		Mdl_StartFaceAni(hero, "S_FRIGHTENED", 1, 5);
		
		AI_Output	(hero, self, "Diego-CH0-None-Hero-11753");  //Czekaj. Prawdziwego cieniostwora?
		AI_Output	(self, hero, "Diego-CH0-None-Diego-26027"); //Najprawdziwszego. To tylko jeden z wielu tutejszych stworów, które z radoœci¹ by ciê rozszarpa³y.
	};

//Rozumiem. Dziêki.
func void DIA_PC_Thief_I_Understand_Thanks()
{
	// Reset face if the speeches about the real shadowbeast finished.
	if (PC_Thief_About_Shadowbeast == true)
	{
		Mdl_StartFaceAni(hero, "S_NEUTRAL", 1, 1);
	};

	AI_Output	(hero, self, "Diego-CH0-None-Hero-25858");  //Rozumiem. Dziêki.
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
	description 	= "Co do tej... bariery. Naprawdê nie da siê przez ni¹ przejœæ, gdy ju¿ siê tu wyl¹duje?";
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
	AI_Output	(hero, self, "Diego-CH0-None-Hero-91769"); 	 //Co do tej... bariery. Naprawdê nie da siê przez ni¹ przejœæ, gdy ju¿ siê tu wyl¹duje?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-51663");  //Da siê. Kiedy tylko zechcesz.
	AI_Output	(hero, self, "Diego-CH0-None-Hero-43033"); 	 //Ale...?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-5080");  //Ale oberwiesz w dupsko b³yskawic¹ tak paskudn¹, ¿e nawet sêpy nie bêd¹ chcia³y ze¿reæ tego, co z ciebie zostanie.
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
	description 	= "Czym siê w³aœciwie zajmujesz? Jesteœ po stronie zarz¹dców Kolonii?";
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
	AI_Output	(hero, self, "Diego-CH0-None-Hero-90410"); 	 //Czym siê w³aœciwie zajmujesz? Jesteœ po stronie zarz¹dców Kolonii?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-94012");  //Jeœli masz na myœli Stary Obóz, to tak – choæ jestem tylko Cieniem. 
	AI_Output	(hero, self, "Diego-CH0-None-Hero-55986"); 	 //„Cieniem”?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-3860");   //Tak. Mo¿na powiedzieæ, ¿e jesteœmy w obozie specami od wszystkiego. Nied³ugo za³apiesz.
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
	description 	= "Czyli ten ca³y Stary Obóz to g³ówna osada w Kolonii?";
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
	AI_Output	(hero, self, "Diego-CH0-None-Hero-29785"); 	 //Czyli ten ca³y Stary Obóz to g³ówna osada w Kolonii?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-38850");  //Na pewno jest najstarsza. Nasz przywódca, Gomez, i jego ludzie za³o¿yli j¹ zaraz po buncie. Zbudowano j¹ wokó³ zamku, w którym kiedyœ mieszkali stra¿nicy wiêzienni.
	AI_Output	(hero, self, "Diego-CH0-None-Hero-10718"); 	 //Ale s¹ jeszcze inne?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-48329");  //Czemu pytasz?
	AI_Output	(hero, self, "Diego-CH0-None-Hero-26492"); 	 //Z ciekawoœci.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-90638");  //Bêdziesz siê musia³ sam przekonaæ.
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
	description 	= "A ty jak tu trafi³eœ?";
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
	AI_Output	(hero, self, "Diego-CH0-None-Hero-58079"); 	 //A ty jak tu trafi³eœ?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-7105");   //Znalaz³em siê w niew³aœciwym miejscu o niew³aœciwym czasie.
	AI_Output	(hero, self, "Diego-CH0-None-Hero-81111"); 	 //To znaczy...?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-45278");  //¯e znalaz³em siê w niew³aœciwym miejscu o niew³aœciwym czasie.
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
	description 	= "Gdzie znajdê jak¹œ broñ?";
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
	AI_Output	(hero, self, "Diego-CH0-None-Hero-36443"); 	 //Gdzie znajdê jak¹œ broñ?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-67611");  //Nie tutaj – to teren Starego Obozu. Rozejrzyj siê po kanionie, na pewno coœ znajdziesz. Nawet jeœli bêdzie to tylko zardzewia³y kilof.
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
	description 	= "S³uchaj, POZWOLISZ mi siê tu przespaæ.";
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
	AI_Output	(hero, self, "Diego-CH0-None-Hero-31895"); 	 //S³uchaj, POZWOLISZ mi siê tu przespaæ.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-68146");  //Uwa¿aj, ch³opcze. Na pewno chcesz siê tak bawiæ?

	Info_AddChoice (DIA_PC_Thief_You_Let_Me_Sleep_Here, "Tylko ¿artowa³em.", DIA_PC_Thief_This_Is_A_Joke);
	Info_AddChoice (DIA_PC_Thief_You_Let_Me_Sleep_Here, "Stary dziad z ciebie.", DIA_PC_Thief_You_Are_Old);
};

//Stary dziad z ciebie.
func void DIA_PC_Thief_You_Are_Old()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-72690"); 	 //Stary dziad z ciebie.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-85201");  //W takim razie miejmy to z g³owy.

	AI_StopProcessInfos	(self);
	
	B_Attack	(self, hero, AIV_AR_KILL);
};

//Tylko ¿artowa³em.
func void DIA_PC_Thief_This_Is_A_Joke()
{
	Info_ClearChoices (DIA_PC_Thief_You_Let_Me_Sleep_Here);

	AI_Output	(hero, self, "Diego-CH0-None-Hero-91798"); 	 //Tylko ¿artowa³em.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-10917");  //To lepiej nie ¿artuj, bo ma³o kto ma tutaj poczucie humoru.
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
	description 	= "Mia³ miejsce wypadek. Kirgo nie ¿yje.";
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
	AI_Output	(hero, self, "Diego-CH0-None-Hero-6226");	//Mia³ miejsce wypadek. Kirgo nie ¿yje.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-31204");	//Co?!
	AI_Output	(hero, self, "Diego-CH0-None-Hero-9564");	//Trenowaliœmy walkê i Ÿle siê to skoñczy³o. Uzna³em, ¿e powinienem ci powiedzieæ.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-50517");	//Dobrze rozumiem? Zabi³eœ jednego z naszych ludzi i wróci³eœ, ¿eby mi o tym powiedzieæ?
	AI_Output	(hero, self, "Diego-CH0-None-Hero-99938");	//Na to wychodzi.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-4242");	//Jesteœ albo wyj¹tkowo uczciwy, albo wyj¹tkowo g³upi. Szlag, ten dzieñ robi siê coraz paskudniejszy.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-74131");	//Wynoœ siê z Placu Wymian i nie rzucaj w oczy. 
	AI_Output	(self, hero, "Diego-CH0-None-Diego-75116");	//I, gdy nasi ludzie oczyszcz¹ drogê, zapomnij o wszystkim, co mówi³em o przeprawie do Starego Obozu. Odpadasz. 

	Info_AddChoice (DIA_PC_Thief_About_Kirgo_Death, "W porz¹dku, dziêkujê.", DIA_PC_Thief_About_Kirgo_Death_I_Understand_Thank_You);
	Info_AddChoice (DIA_PC_Thief_About_Kirgo_Death, "Nie jesteœ pod wra¿eniem?", DIA_PC_Thief_About_Kirgo_Death_Are_You_Impressed);
	Info_AddChoice (DIA_PC_Thief_About_Kirgo_Death, "Nie zabijesz mnie?", DIA_PC_Thief_About_Kirgo_Death_Will_You_Spare_Me);
};

//Nie jesteœ pod wra¿eniem?
func void DIA_PC_Thief_About_Kirgo_Death_Are_You_Impressed()
{
	AI_Output	(hero, self, "Diego-CH0-None-Caption-69944-0");	//Nie jesteœ pod wra¿eniem?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-94971");		//Czy jes...
	AI_Output	(self, hero, "Diego-CH0-None-Diego-76598");		//Nie jestem pewien, czy próbujesz byæ zabawny, ale moja cierpliwoœæ ma granice.
};

//Nie zabijesz mnie?
func void DIA_PC_Thief_About_Kirgo_Death_Will_You_Spare_Me()
{
	AI_Output	(hero, self, "Diego-CH0-None-Caption-96231-0");	//Nie zabijesz mnie?
	AI_Output	(self, hero, "Diego-CH0-None-Diego-16593");		//A chcesz, ¿ebym to zrobi³?
	AI_Output	(hero, self, "Diego-CH0-None-Hero-54250");		//Nie.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-95015");		//To nie zadawaj g³upich pytañ. 
};

//W porz¹dku, dziêkujê.
func void DIA_PC_Thief_About_Kirgo_Death_I_Understand_Thank_You()
{
	AI_Output	(hero, self, "Diego-CH0-None-Hero-67451");	//W porz¹dku, dziêkujê.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-31013");	//Nie mów tak. To by³ wypadek i nie pójdziesz przez niego do piachu.
	AI_Output	(self, hero, "Diego-CH0-None-Diego-1177");	//IdŸ ju¿ st¹d. I pod ¿adnym pozorem nie mów nic Orry’emu. 

	Info_ClearChoices (DIA_PC_Thief_About_Kirgo_Death);
};
