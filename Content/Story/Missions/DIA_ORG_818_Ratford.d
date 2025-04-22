//========================================
//-----------------> RATFORD_HELLO
//========================================
var int Ratford_HelloIfYouThinkSo; // If player selects the dialogue option "DIA_ORG_818_Ratford_Hello_If_You_Think_So"

instance DIA_ORG_818_Ratford_Hello (C_INFO)
{
	npc				= ORG_818_Ratford;
	nr				= 1;
	condition		= DIA_ORG_818_Ratford_Hello_Condition;
	information		= DIA_ORG_818_Ratford_Hello_Info;
	important		= true;
};

func int DIA_ORG_818_Ratford_Hello_Condition()
{
	if (Npc_IsInState (self, ZS_Talk)) && (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello)) && (Jorik_CorpseReached == false)
	{
		return true;
	} else
	{
		return false;
	};
};

func void DIA_ORG_818_Ratford_Hello_Info()
{
	if (Ratford_WhatTheHellSaidInSVM == false)
	{
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-64245-1");	//A kim ty niby jesteœ, na Beliara?
	};
	
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-87298");		//Jestem Nyr...
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-66784");		//Nie o imiê pytam. Nie wygl¹dasz mi na cz³onka któregoœ obozu. To co, jesteœ kopaczem? A mo¿e dopiero co ciê wrzucili?

	if (Npc_KnowsInfo (hero, DIA_ORG_819_Drax_After_Hunting))
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Tak, jestem nowy. Drax, przys³a³ mnie do ciebie, mam pomóc w zamian za nocleg w waszym obozie.", DIA_ORG_818_Ratford_Hello_About_Help);
	}

	else
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Dopiero mnie tu wrzucili. Szukam bezpiecznego miejsca na nocleg.", DIA_ORG_818_Ratford_Hello_About_Sleep_Place);
	};

};

//Tak, jestem nowy. Drax, przys³a³ mnie do ciebie, mam pomóc w zamian za nocleg w waszym obozie.
func void DIA_ORG_818_Ratford_Hello_About_Help()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-42595");	//Tak, jestem nowy. Drax, przys³a³ mnie do ciebie, mam pomóc w zamian za nocleg w waszym obozie.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-50882");	//Czy¿by? Nie potrzebujê pomocy, zw³aszcza od takiej pizdy jak ty, a ju¿ na pewno nie pozwolê obcemu spaæ przy naszym ognisku. Zabieraj siê st¹d. W podskokach.

	Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Jak chcesz.", DIA_ORG_818_Ratford_Hello_If_You_Think_So);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Zamknij ju¿ kurwa ten ryj.", DIA_ORG_818_Ratford_Hello_Fuck_You);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Mogê ciê jakoœ przekonaæ?", DIA_ORG_818_Ratford_Hello_Can_I_Convince_You_Somehow);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Ale przecie¿ siê z nim dogada³em.", DIA_ORG_818_Ratford_Hello_But_I_Talked_To_Drax);
};

 	//Ale przecie¿ siê z nim dogada³em.
 	func void DIA_ORG_818_Ratford_Hello_But_I_Talked_To_Drax()
 	{
		Ratford_GentlyPissedOff = true;
		
		AI_Output	(hero, self, "Ratford-CH0-None-Hero-30527");		//Ale przecie¿ siê z nim dogada³em.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-72328");		//Taa, ale ze mn¹ nie. Drax to ³atwowierny idiota, który poczêstowa³by orków piwem, bo pewnie im gor¹co od tego s³oñca.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-4113-0");	//Przykro mi, ale nic z tego.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-99079-1");	//Powodzenia ¿yczê.

		AI_StopProcessInfos	(self);
 	};

	//Mogê ciê jakoœ przekonaæ?
 	func void DIA_ORG_818_Ratford_Hello_Can_I_Convince_You_Somehow()
 	{
		Ratford_GentlyPissedOff = true;
		
		AI_Output	(hero, self, "Ratford-CH0-None-Hero-34959");		//Mogê ciê jakoœ przekonaæ?
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-35655");		//S³uchaj, nie chcê wychodziæ na dupka. Naprawdê. Ale ciê nie znam, a okazywanie zaufania ludziom, których siê nie zna, to prosty sposób na szybki zgon. 
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-99079-1");	//Powodzenia ¿yczê.

		AI_StopProcessInfos	(self);
 	};

	//Zamknij ju¿ kurwa ten ryj.
 	func void DIA_ORG_818_Ratford_Hello_Fuck_You()
 	{
		Ratford_PissedOff = true;
		
		AI_Output	(hero, self, "Ratford-CH0-None-Hero-26237");	//Zamknij ju¿ kurwa ten ryj.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-60669");	//No i sobie nagrabi³eœ.

		AI_StopProcessInfos	(self);

		B_Attack		(self, hero, AIV_AR_KILL);
 	};

	//Jak chcesz.
 	func void DIA_ORG_818_Ratford_Hello_If_You_Think_So()
 	{
		Ratford_HelloIfYouThinkSo = true;

		AI_Output	(hero, self, "Ratford-CH0-None-Hero-69849");		//Jak chcesz.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-45016");		//Przykro mi, ch³opie. Znajdziesz sobie coœ innego.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-99079-1");	//Powodzenia ¿yczê.

		AI_StopProcessInfos	(self);
 	};

//Dopiero mnie tu wrzucili. Szukam bezpiecznego miejsca na nocleg.
func void DIA_ORG_818_Ratford_Hello_About_Sleep_Place()
{
	Ratford_PissedOff = true;

	AI_Output	(hero, self, "Ratford-CH0-None-Hero-81996");	//Dopiero mnie tu wrzucili. Szukam bezpiecznego miejsca na nocleg.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-13684");	//To idŸ do Starego Obozu. 
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-15424");	//Tamten Varantczyk powiedzia³, ¿e muszê poczekaæ, a¿ Kopacze oczyszcz¹ szlak.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-99940");	//No to zaczekaj. S³uchaj, nic ode mnie nie dostaniesz, wiêc nie zawracaj mi dupy. 

	AI_StopProcessInfos	(self);
};	

//========================================
//-----------------> HELLO_AGAIN
//========================================

instance DIA_ORG_818_Ratford_Hello_Again (C_INFO)
{
	npc				= ORG_818_Ratford;
	nr				= 1;
	condition		= DIA_ORG_818_Ratford_Hello_Again_Condition;
	information		= DIA_ORG_818_Ratford_Hello_Again_Info;
	important		= true;
};

func int DIA_ORG_818_Ratford_Hello_Again_Condition()
{
	if (Npc_IsInState (self, ZS_Talk))
	&& (Npc_KnowsInfo (hero, DIA_ORG_818_Ratford_Hello))
	&& (Ratford_HelloIfYouThinkSo == true)
	&& (Jorik_CorpseReached == false)
	{
		return true;
	} else
	{
		return false;
	};
};

func void DIA_ORG_818_Ratford_Hello_Again_Info()
{
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-14986");	//Co?!

	Info_AddChoice (DIA_ORG_818_Ratford_Hello_Again, "Pójdê ju¿.", DIA_ORG_818_Ratford_Hello_Again_I_Will_Go_Now);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello_Again, "Ty te¿ jesteœ z tego Nowego Obozu?", DIA_ORG_818_Ratford_Hello_Again_Are_You_From_New_Camp);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello_Again, "Co ciê ugryz³o?", DIA_ORG_818_Ratford_Hello_Again_What_Do_You_Mean);
};

//Co ciê ugryz³o?
func void DIA_ORG_818_Ratford_Hello_Again_What_Do_You_Mean()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-74210");	//Co ciê ugryz³o?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-1706");	//Parê wkurwiaj¹cych robali. Na przyk³ad taki jeden kretyn, który nie wie, kiedy odpuœciæ.
};

//Ty te¿ jesteœ z tego Nowego Obozu?
func void DIA_ORG_818_Ratford_Hello_Again_Are_You_From_New_Camp()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-28264");	//Ty te¿ jesteœ z tego Nowego Obozu?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-73615");	//Jakim cudem zgad³eœ?
};

//Pójdê ju¿.
func void DIA_ORG_818_Ratford_Hello_Again_I_Will_Go_Now()
{
	Ratford_GentlyPissedOff = true;
	
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-91268");	//Pójdê ju¿.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-40335");	//Mmm.

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> WHO_ARE_YOU
//========================================
const string Ratford_CH0_G1RDemo_DraxHunt_Caption_9934_0 = "Tak po prostu?";
const string Ratford_CH0_G1RDemo_DraxHunt_Caption_25858_0 = "Œwietnie. Dziêkujê.";
instance DIA_ORG_818_Ratford_Who_Are_You (C_INFO)
{
	npc				= ORG_818_Ratford;
	nr				= 1;
	condition		= DIA_ORG_818_Ratford_Who_Are_You_Condition;
	information		= DIA_ORG_818_Ratford_Who_Are_You_Info;
	important		= true;
};

func int DIA_ORG_818_Ratford_Who_Are_You_Condition()
{
	if (Jorik_CorpseReached == true)
	{
		return true;
	} else
	{
		return false;
	};
};

// U¿ywane w przypadku, gdy Ratford ju¿ spotka³ Nyrasa LUB nie spotka³ i ten nie odpowiedzia³ "Nie celuj tym we mnie".
func void DIA_ORG_818_Ratford_Who_Are_You_Common_No_Offence()
{
	AI_Output	(self, hero, "TEXT_HECTO_20230817_110702_41");				//No tak. Nie ¿yje. Kurwa. To pewnie robota cieniostwora.
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-46542");	//Zna³eœ go?
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-56356");	//By³ z naszego gangu, wiêc tak. W³aœnie dlatego jesteœmy tutaj z kumplem.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-72197");	//G³upek uzale¿ni³ siê od tego zielska, które sprzedaj¹ kultyœci i zaczê³o mu odwalaæ.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-41347");	//Jak go widzia³em po raz ostatni, to bredzi³ coœ o tym, jak to ich bóg gada³ do niego we œnie. Ko³owaty, jak nic.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-76574");	//A potem, tydzieñ temu, po prostu wyszed³ z obozu w samym œrodku nocy i ju¿ nie wróci³.
	
	Info_ClearChoices (DIA_ORG_818_Ratford_Who_Are_You);

	if (Npc_HasItems (hero, ItWrJorik) > 0)
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "S³uchaj, znalaz³em to przy nieboszczyku.", DIA_ORG_818_Ratford_Who_Are_You_About_Mysterious_Note);
	}

	else
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Co teraz?", DIA_ORG_818_Ratford_Who_Are_You_What_Now);
	};
	
	Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Ten bóg... istnieje naprawdê?", DIA_ORG_818_Ratford_Who_Are_You_About_God);
	Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Co to za sekta?", DIA_ORG_818_Ratford_Who_Are_You_About_Sect_Camp);
	Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Mówisz o bagiennym zielu?", DIA_ORG_818_Ratford_Who_Are_You_About_Swamp_Herb);
	Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Bóg mówi³ do niego we œnie?", DIA_ORG_818_Ratford_Who_Are_You_About_Sleep);
};

func void DIA_ORG_818_Ratford_Who_Are_You_Info()
{
	// Since this dialogue, SVM in the camp is not played
	HuntersCamp_Busy = true;
	
	// If Ratford talked Nyras near Jorik's corpse
	Ratford_TalkNyrasNearJorik = true;

	if (Npc_KnowsInfo (hero, DIA_ORG_818_Ratford_Hello) == false)
	{
		AI_DrawWeapon 	(self);
	
		AI_Output		(self, hero, "Ratford-CH0-None-Ratford-40635");	//Kim jesteœ?
	
		Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Nie celuj tym we mnie.", DIA_ORG_818_Ratford_Who_Are_You_Put_Away_Your_Weapon);
		Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Tak go znalaz³em.", DIA_ORG_818_Ratford_Who_Are_You_This_Is_How_I_Found_Jorik);
	} 

	else
	{
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-29260");	//Znowu ty. 
		AI_Output	(hero, self, "Ratford-CH0-None-Hero-22878");	//Chyba znalaz³em twojego kumpla.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-80190");	//W³aœnie widzê. 
		
		// DAMIANUT-TODO <-- TU DAJ ALBO KOM PO ANGIELSKU ALBO DO WYWALENIA CA£KIEM (FABIO)
		// Kontynuuje dialog wspólny dla przypadku, gdy nie spotka³ Nyrasa i ten nie powiedzia³, by w niego nie celowa³.
		DIA_ORG_818_Ratford_Who_Are_You_Common_No_Offence();
	};
};

// INFO_ADDCHOICE: Nie celuj tym we mnie.
func void DIA_ORG_818_Ratford_Who_Are_You_Put_Away_Your_Weapon()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-57489");	//Nie celuj tym we mnie.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-67380");	//Z³a odpowiedŸ.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AIV_AR_KILL);
};

// INFO_ADDCHOICE: Tak go znalaz³em.
func void DIA_ORG_818_Ratford_Who_Are_You_This_Is_How_I_Found_Jorik()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-63229");	//Tak go znalaz³em.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-52590");	//Wiem. Us³ysza³bym odg³osy walki. Kim jesteœ? 
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-18505");	//Jestem tu nowy. Szuka³em bezpiecznego miejsca na nocleg i znalaz³em jego cia³o.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-16882");	//¯ó³todziób? Nie spodziewa³em siê dzisiaj œwie¿ynek.
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-55046");	//No a jednak.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-81347");	//Hmm. 
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-80505");	//Dobra, wierzê ci.

	AI_RemoveWeapon(self);

	// DAMIANUT-TODO <-- TU DAJ ALBO KOM PO ANGIELSKU ALBO DO WYWALENIA CA£KIEM (FABIO)
	// Kontynuuje dialog wspólny dla przypadku, gdy ju¿ spotka³ Nyrasa
	DIA_ORG_818_Ratford_Who_Are_You_Common_No_Offence();
};

	//Bóg mówi³ do niego we œnie?
	func void DIA_ORG_818_Ratford_Who_Are_You_About_Sleep()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-41798");	//Bóg mówi³ do niego we œnie?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-90716");	//„Szepta³”, chyba tego s³owa u¿y³. Tak siê koñczy palenie zielska od tych wariatów.
	};

	//Mówisz o bagiennym zielu?
	func void DIA_ORG_818_Ratford_Who_Are_You_About_Swamp_Herb()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-52915");	//Mówisz o bagiennym zielu?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-28568");	//Ta. W dolinie jest bagno, a sekta, która tam urzêduje, uprawia i sprzedaje to zielsko. 
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-82831");	//NajwyraŸniej pal¹ je, bo „otwiera umys³ na m¹droœæ ich boga”, ale wielu ludzi spoza sekty te¿ po nie siêga. Podobno pomaga siê rozluŸniæ.
	};
	
	//Co to za sekta?
	func void DIA_ORG_818_Ratford_Who_Are_You_About_Sect_Camp()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-3445");		//Co to za sekta?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-56576");	//No tak... Zapominam, ¿e jesteœ tu nowy.
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-61788");	//W du¿ym skrócie: mamy tu w Kolonii trzy obozy, a jeden z nich to powaleni sekciarze. 
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-95458");	//Podobno ich naczelny wariat szeœæ lat temu mia³ wizjê jakiegoœ przedwiecznego boga, który ma siê obudziæ i zbawiæ ich wszystkich, wiêc przenieœli siê na bagna. Do dziœ tam mieszkaj¹.
	}; 

	//Ten bóg... istnieje naprawdê?
	func void DIA_ORG_818_Ratford_Who_Are_You_About_God()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Caption-40855-0");	//Ten bóg... istnieje naprawdê?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-87472");		//Jasne, ¿e nie. Ten ich szef, Y’Berion, po prostu wykorzystuje to, ¿e desperacko chc¹ siê st¹d wydostaæ.  
	};

	//S³uchaj, znalaz³em to przy nieboszczyku.
	func void DIA_ORG_818_Ratford_Who_Are_You_About_Mysterious_Note()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-99331");		//S³uchaj, znalaz³em to przy nieboszczyku.
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-7287-0");	//List? 
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-43548-0");		//Nie, rysunek. I jakieœ symbole. 
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-41888-0");	//He. Musia³ to nabazgraæ, kiedy by³ ju¿ porobiony. Mo¿esz to wzi¹æ. 
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-9744-0");		//Co teraz? Zabierzesz go z powrotem do obozu?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-23899-0");	//Nie. Przeczekamy tu noc, a jutro wrócimy do obozu i powiemy szefowi, ¿e Jorik nie ¿yje. I po temacie.
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-72836-0");	//To ten... mówi³eœ, ¿e szukasz bezpiecznego miejsca na obóz, tak? Dobry pomys³, zw³aszcza ¿e w okolicy grasuje cieniostwór.
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-90162-0");		//Taa.
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-32267-0");	//Dobra ju¿ chuj tam – mo¿esz spaæ przy naszym ognisku. W starym obozie Kopaczy po drugiej stronie Opuszczonej Kopalni. Stwór siê tam nie zapuœci. 
		
		Info_ClearChoices 	(DIA_ORG_818_Ratford_Who_Are_You);
		Info_AddChoice 		(DIA_ORG_818_Ratford_Who_Are_You, Ratford_CH0_G1RDemo_DraxHunt_Caption_25858_0, DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Nice_Thanks);
		Info_AddChoice 		(DIA_ORG_818_Ratford_Who_Are_You, Ratford_CH0_G1RDemo_DraxHunt_Caption_9934_0, DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Just_That);
	};

	//Co teraz?
	func void DIA_ORG_818_Ratford_Who_Are_You_What_Now()
	{
		Ratford_HeroHasToCheckJorik = true;

		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-99334");		//Co teraz?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-23614-3");	//Przeszuka³eœ zw³oki?
		
		// To start a quest if not started
		if (MIS_CH0_FindJorik == LOG_NONE)
		{
			Ratford_StartCH0_JorikAfterDialogue = true;
		};

		Info_ClearChoices (DIA_ORG_818_Ratford_Who_Are_You);

		AI_StopProcessInfos	(self);
	};

//========================================
//-----------------> ABOUT_SEARCHING_JORIK_BODY
//========================================

instance DIA_ORG_818_Ratford_About_Searching_Jorik_Body (C_INFO)
{
	npc				= ORG_818_Ratford;
	nr				= 886;
	condition		= DIA_ORG_818_Ratford_About_Searching_Jorik_Body_Condition;
	information		= DIA_ORG_818_Ratford_About_Searching_Jorik_Body_Info;
	important		= true;
	permanent		= true;
};

func int DIA_ORG_818_Ratford_About_Searching_Jorik_Body_Condition()
{
	if (Npc_IsInState (self, ZS_Talk)) && (Ratford_HeroHasToCheckJorik == true) && (!Npc_HasItems (hero, ItWrJorik))
	{
		return true;
	} else
	{
		return false;
	};
};

func void DIA_ORG_818_Ratford_About_Searching_Jorik_Body_Info()
{
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-44653");	//Zobaczmy, co ma przy sobie.

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> ABOUT_FOUND_SKETCH_AFTER_SEARCHING
//========================================

instance DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching (C_INFO)
{
	npc				= ORG_818_Ratford;
	nr				= 1;
	condition		= DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Condition;
	information		= DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Info;
	important		= true;
};

func int DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Condition()
{
	if (Ratford_HeroHasToCheckJorik == true) && (Npc_HasItems (hero, ItWrJorik) == 1)
	{
		return true;
	} else
	{
		return false;
	};
};

func void DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Info()
{
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-63489");		//Co to?
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-7287-0");	//List? 
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-43548-0");		//Nie, rysunek. I jakieœ symbole. 
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-41888-0");	//He. Musia³ to nabazgraæ, kiedy by³ ju¿ porobiony. Mo¿esz to wzi¹æ. 
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-9744-0");		//Co teraz? Zabierzesz go z powrotem do obozu?
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-23899-0");	//Nie. Przeczekamy tu noc, a jutro wrócimy do obozu i powiemy szefowi, ¿e Jorik nie ¿yje. I po temacie.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-72836-0");	//To ten... mówi³eœ, ¿e szukasz bezpiecznego miejsca na obóz, tak? Dobry pomys³, zw³aszcza ¿e w okolicy grasuje cieniostwór.
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-90162-0");		//Taa.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-32267-0");	//Dobra ju¿ chuj tam – mo¿esz spaæ przy naszym ognisku. W starym obozie Kopaczy po drugiej stronie Opuszczonej Kopalni. Stwór siê tam nie zapuœci. 
	
	Info_ClearChoices (DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching);
	Info_AddChoice (DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching, Ratford_CH0_G1RDemo_DraxHunt_Caption_25858_0, DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Nice_Thanks);
	Info_AddChoice (DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching, Ratford_CH0_G1RDemo_DraxHunt_Caption_9934_0, DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Just_That);
};
func void DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching__Choices_Common()
{
	Ratford_CommentedFoundNote = true;

	// If Nyras refused Drax, Drax already go to the camp
	if (Drax_IHaveNoTimeForThat == true)
	{
		Drax_GoesCamp();
	};

	// If Drax went to the camp
	if (Drax_StartGoingToTheCamp == true)
	{
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-62191-1"); //Mój kumpel, Drax, powinien ju¿ byæ w obozie. Idziemy.
	}

	// If Drax didn't go
	else
	{
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-32587-0"); //Tak czy siak, kolacji nie bêdzie, dopóki Drax nie upoluje dla nas paru œcierwojadów. 
		
		// DAMIANUT-OPT-TODO: Ograæ Remake jeszcze raz i sprawdziæ tê opcjê.
		if (MIS_CH0_DraxHunt == LOG_NONE)
		{
			AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-15507-0"); 	//Mo¿e ty mu pomo¿esz? Bêdzie móg³ ciê wtedy poznaæ.
			AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-94901-0"); 		//Gdzie go szukaæ? 
			AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-26907-1"); 	//IdŸ t¹ drog¹, a¿ dojdziesz do doliny. Powinien byæ gdzieœ w okolicy. Spotkamy siê w obozie. 
		}

		else if (MIS_CH0_DraxHunt == LOG_RUNNING)
		{
			AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-26907-2"); //Spotkamy siê w obozie.
		};
	};
	
	AI_StopProcessInfos (self);
	
	Npc_ExchangeRoutine(self, "HUNTERSCAMP");
};
func void DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Just_That()
{
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-9934-0"); 		//Tak po prostu?
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-90459-0");	//Pewnie nie znalaz³bym nieboszczyka przed zmrokiem, gdybyœ nie postanowi³ pobuszowaæ po krzakach.
	
	// The speeches common for two dialogue's choices
	DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching__Choices_Common();
};

func void DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Nice_Thanks()
{
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-25858-0");		//Œwietnie. Dziêkujê.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-32619-0");	//To ja ci dziêkujê. Pewnie nie znalaz³bym nieboszczyka przed zmrokiem gdybyœ nie postanowi³ pobuszowaæ po krzakach.
	
	// The speeches common for two dialogue's choices
	DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching__Choices_Common();
};

//========================================
//-----------------> GO_CAMP_SMALLTALK
//========================================
var int Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp; // Whether this dialogue option was selected
var int Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here; // Whether this dialogue option was selected

instance DIA_ORG_818_Ratford_Go_Camp_Smalltalk (C_INFO)
{
	npc				= ORG_818_Ratford;
	nr				= 1;
	condition		= DIA_ORG_818_Ratford_Go_Camp_Smalltalk_Condition;
	information		= DIA_ORG_818_Ratford_Go_Camp_Smalltalk_Info;
	important		= true;
	permanent		= true;
};

func int DIA_ORG_818_Ratford_Go_Camp_Smalltalk_Condition()
{
	if (Npc_IsInState (self, ZS_Talk)) && (Ratford_CommentedFoundNote == true)
	&& ((Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp == false) || (Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here == false)) // If didn't choose below 2 questions
	&& (Ratford_IsInTheCamp == false) // If didn't reach the camp
	{
		return true;
	} else
	{
		return false;
	};
};

func void DIA_ORG_818_Ratford_Go_Camp_Smalltalk_Info()
{
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-26027"); //Co? ZnajdŸmy Draxa. 

	Info_ClearChoices 	(DIA_ORG_818_Ratford_Go_Camp_Smalltalk);
	Info_AddChoice 		(DIA_ORG_818_Ratford_Go_Camp_Smalltalk, "No dobrze.", DIA_ORG_818_Ratford_Go_Camp_Smalltalk_Good);

	if (Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here == false)
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Go_Camp_Smalltalk, "Jak tu trafi³eœ?", DIA_ORG_818_Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here);
	};

	if (Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp == false)
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Go_Camp_Smalltalk, "Jak jest w tym obozie, do którego nale¿ysz?", DIA_ORG_818_Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp);
	};
};
func void DIA_ORG_818_Ratford_Go_Camp_Smalltalk_Good()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-75802"); //No dobrze.
	
	AI_StopProcessInfos	(self);
};

func void DIA_ORG_818_Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here()
{
	Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here = true;
	
	// Ignore player, until reaching the camp
	if (Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp == true)
	{
		Ratford_LastPissedOff = true;
	};

	AI_Output	(hero, self, "Ratford-CH0-None-Hero-63685"); 	//Jak tu trafi³eœ?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-21599"); //S³uchaj, jestem ci d³u¿ny za znalezienie Jorika, ale nie bêdê ci siê zwierzaæ. 
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-67954"); //Jak chcesz pogadaæ, to uderz do Draxa. Ten dureñ pytluje jêzorem jak stara przekupa po paru g³êbszych.
};

func void DIA_ORG_818_Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp()
{
	Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp = true;

	// Ignore player, until reaching the camp
	if (Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here == true)
	{
		Ratford_LastPissedOff = true;
	};

	AI_Output	(hero, self, "Ratford-CH0-None-Hero-36270"); 	//Jak jest w tym obozie, do którego nale¿ysz?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-97063"); //W Nowym Obozie? Jest w porz¹dku.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-72398"); //Musisz umieæ o siebie zadbaæ, ale jeœli to potrafisz, masz du¿o wiêcej swobody ni¿ w pozosta³ych obozach.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-18169"); //Ach, no i Magowie Wody, którzy z nami mieszkaj¹, s¹dz¹, ¿e zdo³aj¹ nas st¹d wydostaæ.
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-85496"); 	//Naprawdê? Niby jak?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-7074"); 	//Chc¹ wysadziæ wielk¹ kupê niebieskiej rudy. Co, wed³ug mnie jest jeszcze durniejsze, ni¿ siê wydaje.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-42915"); //No ale, tak szczerze, to nasz obóz jest w porz¹dku, ale zapomnij o wolnoœci.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-86658"); //Stary Obóz, Nowy Obóz, Obóz Bractwa... nikt siê st¹d nie wydostanie. 
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-78201"); //Tak ju¿ musi byæ.
};
