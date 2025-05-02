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
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-64245-1");	//A kim ty niby jeste�, na Beliara?
	};
	
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-87298");		//Jestem Nyr...
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-66784");		//Nie o imi� pytam. Nie wygl�dasz mi na cz�onka kt�rego� obozu. To co, jeste� kopaczem? A mo�e dopiero co ci� wrzucili?

	if (Npc_KnowsInfo (hero, DIA_ORG_819_Drax_After_Hunting))
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Tak, jestem nowy. Drax, przys�a� mnie do ciebie, mam pom�c w zamian za nocleg w waszym obozie.", DIA_ORG_818_Ratford_Hello_About_Help);
	}

	else
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Dopiero mnie tu wrzucili. Szukam bezpiecznego miejsca na nocleg.", DIA_ORG_818_Ratford_Hello_About_Sleep_Place);
	};

};

//Tak, jestem nowy. Drax, przys�a� mnie do ciebie, mam pom�c w zamian za nocleg w waszym obozie.
func void DIA_ORG_818_Ratford_Hello_About_Help()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-42595");	//Tak, jestem nowy. Drax, przys�a� mnie do ciebie, mam pom�c w zamian za nocleg w waszym obozie.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-50882");	//Czy�by? Nie potrzebuj� pomocy, zw�aszcza od takiej pizdy jak ty, a ju� na pewno nie pozwol� obcemu spa� przy naszym ognisku. Zabieraj si� st�d. W podskokach.

	Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Jak chcesz.", DIA_ORG_818_Ratford_Hello_If_You_Think_So);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Zamknij ju� kurwa ten ryj.", DIA_ORG_818_Ratford_Hello_Fuck_You);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Mog� ci� jako� przekona�?", DIA_ORG_818_Ratford_Hello_Can_I_Convince_You_Somehow);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello, "Ale przecie� si� z nim dogada�em.", DIA_ORG_818_Ratford_Hello_But_I_Talked_To_Drax);
};

 	//Ale przecie� si� z nim dogada�em.
 	func void DIA_ORG_818_Ratford_Hello_But_I_Talked_To_Drax()
 	{
		Ratford_GentlyPissedOff = true;
		
		AI_Output	(hero, self, "Ratford-CH0-None-Hero-30527");		//Ale przecie� si� z nim dogada�em.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-72328");		//Taa, ale ze mn� nie. Drax to �atwowierny idiota, kt�ry pocz�stowa�by ork�w piwem, bo pewnie im gor�co od tego s�o�ca.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-4113-0");	//Przykro mi, ale nic z tego.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-99079-1");	//Powodzenia �ycz�.

		AI_StopProcessInfos	(self);
 	};

	//Mog� ci� jako� przekona�?
 	func void DIA_ORG_818_Ratford_Hello_Can_I_Convince_You_Somehow()
 	{
		Ratford_GentlyPissedOff = true;
		
		AI_Output	(hero, self, "Ratford-CH0-None-Hero-34959");		//Mog� ci� jako� przekona�?
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-35655");		//S�uchaj, nie chc� wychodzi� na dupka. Naprawd�. Ale ci� nie znam, a okazywanie zaufania ludziom, kt�rych si� nie zna, to prosty spos�b na szybki zgon. 
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-99079-1");	//Powodzenia �ycz�.

		AI_StopProcessInfos	(self);
 	};

	//Zamknij ju� kurwa ten ryj.
 	func void DIA_ORG_818_Ratford_Hello_Fuck_You()
 	{
		Ratford_PissedOff = true;
		
		AI_Output	(hero, self, "Ratford-CH0-None-Hero-26237");	//Zamknij ju� kurwa ten ryj.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-60669");	//No i sobie nagrabi�e�.

		AI_StopProcessInfos	(self);

		B_Attack		(self, hero, AIV_AR_KILL);
 	};

	//Jak chcesz.
 	func void DIA_ORG_818_Ratford_Hello_If_You_Think_So()
 	{
		Ratford_HelloIfYouThinkSo = true;

		AI_Output	(hero, self, "Ratford-CH0-None-Hero-69849");		//Jak chcesz.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-45016");		//Przykro mi, ch�opie. Znajdziesz sobie co� innego.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-99079-1");	//Powodzenia �ycz�.

		AI_StopProcessInfos	(self);
 	};

//Dopiero mnie tu wrzucili. Szukam bezpiecznego miejsca na nocleg.
func void DIA_ORG_818_Ratford_Hello_About_Sleep_Place()
{
	Ratford_PissedOff = true;

	AI_Output	(hero, self, "Ratford-CH0-None-Hero-81996");	//Dopiero mnie tu wrzucili. Szukam bezpiecznego miejsca na nocleg.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-13684");	//To id� do Starego Obozu. 
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-15424");	//Tamten Varantczyk powiedzia�, �e musz� poczeka�, a� Kopacze oczyszcz� szlak.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-99940");	//No to zaczekaj. S�uchaj, nic ode mnie nie dostaniesz, wi�c nie zawracaj mi dupy. 

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

	Info_AddChoice (DIA_ORG_818_Ratford_Hello_Again, "P�jd� ju�.", DIA_ORG_818_Ratford_Hello_Again_I_Will_Go_Now);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello_Again, "Ty te� jeste� z tego Nowego Obozu?", DIA_ORG_818_Ratford_Hello_Again_Are_You_From_New_Camp);
	Info_AddChoice (DIA_ORG_818_Ratford_Hello_Again, "Co ci� ugryz�o?", DIA_ORG_818_Ratford_Hello_Again_What_Do_You_Mean);
};

//Co ci� ugryz�o?
func void DIA_ORG_818_Ratford_Hello_Again_What_Do_You_Mean()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-74210");	//Co ci� ugryz�o?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-1706");	//Par� wkurwiaj�cych robali. Na przyk�ad taki jeden kretyn, kt�ry nie wie, kiedy odpu�ci�.
};

//Ty te� jeste� z tego Nowego Obozu?
func void DIA_ORG_818_Ratford_Hello_Again_Are_You_From_New_Camp()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-28264");	//Ty te� jeste� z tego Nowego Obozu?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-73615");	//Jakim cudem zgad�e�?
};

//P�jd� ju�.
func void DIA_ORG_818_Ratford_Hello_Again_I_Will_Go_Now()
{
	Ratford_GentlyPissedOff = true;
	
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-91268");	//P�jd� ju�.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-40335");	//Mmm.

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> WHO_ARE_YOU
//========================================
const string Ratford_CH0_G1RDemo_DraxHunt_Caption_9934_0 = "Tak po prostu?";
const string Ratford_CH0_G1RDemo_DraxHunt_Caption_25858_0 = "�wietnie. Dzi�kuj�.";
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

// U�ywane w przypadku, gdy Ratford ju� spotka� Nyrasa LUB nie spotka� i ten nie odpowiedzia� "Nie celuj tym we mnie".
func void DIA_ORG_818_Ratford_Who_Are_You_Common_No_Offence()
{
	AI_Output	(self, hero, "TEXT_HECTO_20230817_110702_41");				//No tak. Nie �yje. Kurwa. To pewnie robota cieniostwora.
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-46542");	//Zna�e� go?
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-56356");	//By� z naszego gangu, wi�c tak. W�a�nie dlatego jeste�my tutaj z kumplem.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-72197");	//G�upek uzale�ni� si� od tego zielska, kt�re sprzedaj� kulty�ci i zacz�o mu odwala�.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-41347");	//Jak go widzia�em po raz ostatni, to bredzi� co� o tym, jak to ich b�g gada� do niego we �nie. Ko�owaty, jak nic.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-76574");	//A potem, tydzie� temu, po prostu wyszed� z obozu w samym �rodku nocy i ju� nie wr�ci�.
	
	Info_ClearChoices (DIA_ORG_818_Ratford_Who_Are_You);

	if (Npc_HasItems (hero, ItWrJorik) > 0)
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "S�uchaj, znalaz�em to przy nieboszczyku.", DIA_ORG_818_Ratford_Who_Are_You_About_Mysterious_Note);
	}

	else
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Co teraz?", DIA_ORG_818_Ratford_Who_Are_You_What_Now);
	};
	
	Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Ten b�g... istnieje naprawd�?", DIA_ORG_818_Ratford_Who_Are_You_About_God);
	Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Co to za sekta?", DIA_ORG_818_Ratford_Who_Are_You_About_Sect_Camp);
	Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "M�wisz o bagiennym zielu?", DIA_ORG_818_Ratford_Who_Are_You_About_Swamp_Herb);
	Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "B�g m�wi� do niego we �nie?", DIA_ORG_818_Ratford_Who_Are_You_About_Sleep);
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
	
		AI_Output		(self, hero, "Ratford-CH0-None-Ratford-40635");	//Kim jeste�?
	
		Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Nie celuj tym we mnie.", DIA_ORG_818_Ratford_Who_Are_You_Put_Away_Your_Weapon);
		Info_AddChoice (DIA_ORG_818_Ratford_Who_Are_You, "Tak go znalaz�em.", DIA_ORG_818_Ratford_Who_Are_You_This_Is_How_I_Found_Jorik);
	} 

	else
	{
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-29260");	//Znowu ty. 
		AI_Output	(hero, self, "Ratford-CH0-None-Hero-22878");	//Chyba znalaz�em twojego kumpla.
		AI_Output	(self, hero, "Ratford-CH0-None-Ratford-80190");	//W�a�nie widz�. 
		
		// DAMIANUT-TODO <-- TU DAJ ALBO KOM PO ANGIELSKU ALBO DO WYWALENIA CA�KIEM (FABIO)
		// Kontynuuje dialog wsp�lny dla przypadku, gdy nie spotka� Nyrasa i ten nie powiedzia�, by w niego nie celowa�.
		DIA_ORG_818_Ratford_Who_Are_You_Common_No_Offence();
	};
};

// INFO_ADDCHOICE: Nie celuj tym we mnie.
func void DIA_ORG_818_Ratford_Who_Are_You_Put_Away_Your_Weapon()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-57489");	//Nie celuj tym we mnie.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-67380");	//Z�a odpowied�.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AIV_AR_KILL);
};

// INFO_ADDCHOICE: Tak go znalaz�em.
func void DIA_ORG_818_Ratford_Who_Are_You_This_Is_How_I_Found_Jorik()
{
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-63229");	//Tak go znalaz�em.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-52590");	//Wiem. Us�ysza�bym odg�osy walki. Kim jeste�? 
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-18505");	//Jestem tu nowy. Szuka�em bezpiecznego miejsca na nocleg i znalaz�em jego cia�o.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-16882");	//��todzi�b? Nie spodziewa�em si� dzisiaj �wie�ynek.
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-55046");	//No a jednak.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-81347");	//Hmm. 
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-80505");	//Dobra, wierz� ci.

	AI_RemoveWeapon(self);

	// DAMIANUT-TODO <-- TU DAJ ALBO KOM PO ANGIELSKU ALBO DO WYWALENIA CA�KIEM (FABIO)
	// Kontynuuje dialog wsp�lny dla przypadku, gdy ju� spotka� Nyrasa
	DIA_ORG_818_Ratford_Who_Are_You_Common_No_Offence();
};

	//B�g m�wi� do niego we �nie?
	func void DIA_ORG_818_Ratford_Who_Are_You_About_Sleep()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-41798");	//B�g m�wi� do niego we �nie?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-90716");	//�Szepta��, chyba tego s�owa u�y�. Tak si� ko�czy palenie zielska od tych wariat�w.
	};

	//M�wisz o bagiennym zielu?
	func void DIA_ORG_818_Ratford_Who_Are_You_About_Swamp_Herb()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-52915");	//M�wisz o bagiennym zielu?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-28568");	//Ta. W dolinie jest bagno, a sekta, kt�ra tam urz�duje, uprawia i sprzedaje to zielsko. 
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-82831");	//Najwyra�niej pal� je, bo �otwiera umys� na m�dro�� ich boga�, ale wielu ludzi spoza sekty te� po nie si�ga. Podobno pomaga si� rozlu�ni�.
	};
	
	//Co to za sekta?
	func void DIA_ORG_818_Ratford_Who_Are_You_About_Sect_Camp()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-3445");		//Co to za sekta?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-56576");	//No tak... Zapominam, �e jeste� tu nowy.
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-61788");	//W du�ym skr�cie: mamy tu w Kolonii trzy obozy, a jeden z nich to powaleni sekciarze. 
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-95458");	//Podobno ich naczelny wariat sze�� lat temu mia� wizj� jakiego� przedwiecznego boga, kt�ry ma si� obudzi� i zbawi� ich wszystkich, wi�c przenie�li si� na bagna. Do dzi� tam mieszkaj�.
	}; 

	//Ten b�g... istnieje naprawd�?
	func void DIA_ORG_818_Ratford_Who_Are_You_About_God()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Caption-40855-0");	//Ten b�g... istnieje naprawd�?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-87472");		//Jasne, �e nie. Ten ich szef, Y�Berion, po prostu wykorzystuje to, �e desperacko chc� si� st�d wydosta�.  
	};

	//S�uchaj, znalaz�em to przy nieboszczyku.
	func void DIA_ORG_818_Ratford_Who_Are_You_About_Mysterious_Note()
	{
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-99331");		//S�uchaj, znalaz�em to przy nieboszczyku.
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-7287-0");	//List? 
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-43548-0");		//Nie, rysunek. I jakie� symbole. 
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-41888-0");	//He. Musia� to nabazgra�, kiedy by� ju� porobiony. Mo�esz to wzi��. 
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-9744-0");		//Co teraz? Zabierzesz go z powrotem do obozu?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-23899-0");	//Nie. Przeczekamy tu noc, a jutro wr�cimy do obozu i powiemy szefowi, �e Jorik nie �yje. I po temacie.
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-72836-0");	//To ten... m�wi�e�, �e szukasz bezpiecznego miejsca na ob�z, tak? Dobry pomys�, zw�aszcza �e w okolicy grasuje cieniostw�r.
		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-90162-0");		//Taa.
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-32267-0");	//Dobra ju� chuj tam � mo�esz spa� przy naszym ognisku. W starym obozie Kopaczy po drugiej stronie Opuszczonej Kopalni. Stw�r si� tam nie zapu�ci. 
		
		Info_ClearChoices 	(DIA_ORG_818_Ratford_Who_Are_You);
		Info_AddChoice 		(DIA_ORG_818_Ratford_Who_Are_You, Ratford_CH0_G1RDemo_DraxHunt_Caption_25858_0, DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Nice_Thanks);
		Info_AddChoice 		(DIA_ORG_818_Ratford_Who_Are_You, Ratford_CH0_G1RDemo_DraxHunt_Caption_9934_0, DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Just_That);
	};

	//Co teraz?
	func void DIA_ORG_818_Ratford_Who_Are_You_What_Now()
	{
		Ratford_HeroHasToCheckJorik = true;

		AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-99334");		//Co teraz?
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-23614-3");	//Przeszuka�e� zw�oki?
		
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
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-43548-0");		//Nie, rysunek. I jakie� symbole. 
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-41888-0");	//He. Musia� to nabazgra�, kiedy by� ju� porobiony. Mo�esz to wzi��. 
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-9744-0");		//Co teraz? Zabierzesz go z powrotem do obozu?
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-23899-0");	//Nie. Przeczekamy tu noc, a jutro wr�cimy do obozu i powiemy szefowi, �e Jorik nie �yje. I po temacie.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-72836-0");	//To ten... m�wi�e�, �e szukasz bezpiecznego miejsca na ob�z, tak? Dobry pomys�, zw�aszcza �e w okolicy grasuje cieniostw�r.
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-90162-0");		//Taa.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-32267-0");	//Dobra ju� chuj tam � mo�esz spa� przy naszym ognisku. W starym obozie Kopaczy po drugiej stronie Opuszczonej Kopalni. Stw�r si� tam nie zapu�ci. 
	
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
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-62191-1"); //M�j kumpel, Drax, powinien ju� by� w obozie. Idziemy.
	}

	// If Drax didn't go
	else
	{
		AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-32587-0"); //Tak czy siak, kolacji nie b�dzie, dop�ki Drax nie upoluje dla nas paru �cierwojad�w. 
		
		// DAMIANUT-OPT-TODO: Ogra� Remake jeszcze raz i sprawdzi� t� opcj�.
		if (MIS_CH0_DraxHunt == LOG_NONE)
		{
			AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-15507-0"); 	//Mo�e ty mu pomo�esz? B�dzie m�g� ci� wtedy pozna�.
			AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-94901-0"); 		//Gdzie go szuka�? 
			AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-26907-1"); 	//Id� t� drog�, a� dojdziesz do doliny. Powinien by� gdzie� w okolicy. Spotkamy si� w obozie. 
		}

		else if (MIS_CH0_DraxHunt == LOG_RUNNING)
		{
			AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-26907-2"); //Spotkamy si� w obozie.
		};
	};
	
	AI_StopProcessInfos (self);
	
	Npc_ExchangeRoutine(self, "HUNTERSCAMP");
};
func void DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Just_That()
{
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-9934-0"); 		//Tak po prostu?
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-90459-0");	//Pewnie nie znalaz�bym nieboszczyka przed zmrokiem, gdyby� nie postanowi� pobuszowa� po krzakach.
	
	// The speeches common for two dialogue's choices
	DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching__Choices_Common();
};

func void DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching_Nice_Thanks()
{
	AI_Output	(hero, self, "Ratford-CH0-G1RDemo_DraxHunt-Hero-25858-0");		//�wietnie. Dzi�kuj�.
	AI_Output	(self, hero, "Ratford-CH0-G1RDemo_DraxHunt-Ratford-32619-0");	//To ja ci dzi�kuj�. Pewnie nie znalaz�bym nieboszczyka przed zmrokiem gdyby� nie postanowi� pobuszowa� po krzakach.
	
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
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-26027"); //Co? Znajd�my Draxa. 

	Info_ClearChoices 	(DIA_ORG_818_Ratford_Go_Camp_Smalltalk);
	Info_AddChoice 		(DIA_ORG_818_Ratford_Go_Camp_Smalltalk, "No dobrze.", DIA_ORG_818_Ratford_Go_Camp_Smalltalk_Good);

	if (Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here == false)
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Go_Camp_Smalltalk, "Jak tu trafi�e�?", DIA_ORG_818_Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here);
	};

	if (Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp == false)
	{
		Info_AddChoice (DIA_ORG_818_Ratford_Go_Camp_Smalltalk, "Jak jest w tym obozie, do kt�rego nale�ysz?", DIA_ORG_818_Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp);
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

	AI_Output	(hero, self, "Ratford-CH0-None-Hero-63685"); 	//Jak tu trafi�e�?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-21599"); //S�uchaj, jestem ci d�u�ny za znalezienie Jorika, ale nie b�d� ci si� zwierza�. 
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-67954"); //Jak chcesz pogada�, to uderz do Draxa. Ten dure� pytluje j�zorem jak stara przekupa po paru g��bszych.
};

func void DIA_ORG_818_Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp()
{
	Ratford_Go_Camp_Smalltalk_How_Is_In_New_Camp = true;

	// Ignore player, until reaching the camp
	if (Ratford_Go_Camp_Smalltalk_How_Did_You_End_Here == true)
	{
		Ratford_LastPissedOff = true;
	};

	AI_Output	(hero, self, "Ratford-CH0-None-Hero-36270"); 	//Jak jest w tym obozie, do kt�rego nale�ysz?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-97063"); //W Nowym Obozie? Jest w porz�dku.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-72398"); //Musisz umie� o siebie zadba�, ale je�li to potrafisz, masz du�o wi�cej swobody ni� w pozosta�ych obozach.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-18169"); //Ach, no i Magowie Wody, kt�rzy z nami mieszkaj�, s�dz�, �e zdo�aj� nas st�d wydosta�.
	AI_Output	(hero, self, "Ratford-CH0-None-Hero-85496"); 	//Naprawd�? Niby jak?
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-7074"); 	//Chc� wysadzi� wielk� kup� niebieskiej rudy. Co, wed�ug mnie jest jeszcze durniejsze, ni� si� wydaje.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-42915"); //No ale, tak szczerze, to nasz ob�z jest w porz�dku, ale zapomnij o wolno�ci.
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-86658"); //Stary Ob�z, Nowy Ob�z, Ob�z Bractwa... nikt si� st�d nie wydostanie. 
	AI_Output	(self, hero, "Ratford-CH0-None-Ratford-78201"); //Tak ju� musi by�.
};
