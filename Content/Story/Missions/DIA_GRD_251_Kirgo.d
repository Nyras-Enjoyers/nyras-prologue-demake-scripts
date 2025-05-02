
//========================================
//-----------------> KIRGO_HELLO
//========================================
var int Kirgo_WantsFightWaitAsReady; // If player wants to fight with Kirgo
var int Kirgo_WantsFightNow; // If player wants to fight with Kirgo now

instance DIA_GRD_251_Kirgo_Hello (C_INFO)
{
	npc				= GRD_251_Kirgo;
	nr				= 1;
	condition		= DIA_GRD_251_Kirgo_Hello_Condition;
	information		= DIA_GRD_251_Kirgo_Hello_Info;
	important		= true;
};

func int DIA_GRD_251_Kirgo_Hello_Condition()
{
	if (Npc_IsInState (self, ZS_Talk)) && (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello))
	{
		return true;
	};
};

func void DIA_GRD_251_Kirgo_Hello_Info()
{
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-13159");	//Prosz�, prosz�. Nowa twarz. Dopiero co ci� wrzucili?

	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Nie tw�j interes.", DIA_GRD_251_Kirgo_Hello_Not_Your_Business);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Tak.", DIA_GRD_251_Kirgo_Hello_Yes);
};

//Tak.
func void DIA_GRD_251_Kirgo_Hello_Yes()
{
	//FABIO-TODO TUTAJ S� DWA ODPOWIEDZI "Tak." i ka�da z nich ma inn� nazw� audio, do sprawdzenia!
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-61590");	//Tak.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-72322");	//No to witaj w Kolonii. Jak ci na imi�? Mnie nazywaj� Kirgo.
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-54970");	//Nyras.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-53995");	//Mi�o pozna�. Mo�e chwil� porozmawiamy? Powiedz mi, jak si� sprawy maj� na zewn�trz, a ja zdradz� ci par� rzeczy, kt�re u�atwi� ci prze�ycie w tej dziurze. 
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-48505");	//Ca�y dzie� przerzucam ten cholerny gruz. Chcia�bym si� na chwil� od tego oderwa�... To jak, pogadamy?
	
	// NyrasPrologueDemake: To handle saying about killing Kirgo
	Kirgo_IntroducedHimself = true;

	Info_ClearChoices(DIA_GRD_251_Kirgo_Hello);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Nie mam na to czasu.", DIA_GRD_251_Kirgo_Hello_No_Time);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "No trudno.", DIA_GRD_251_Kirgo_Hello_Too_Bad);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "A mo�e opowiem ci w zamian za bezpieczny nocleg?", DIA_GRD_251_Kirgo_Hello_Story_For_A_Place_To_Sleep);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Dlaczego w og�le obchodzi ci�, co si� dzieje na zewn�trz?", DIA_GRD_251_Kirgo_Hello_Why_Are_You_Interested_In_This);
};

//Dlaczego w og�le obchodzi ci�, co si� dzieje na zewn�trz?
func void DIA_GRD_251_Kirgo_Hello_Why_Are_You_Interested_In_This()
{
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-5576");	//Dlaczego w og�le obchodzi ci�, co si� dzieje na zewn�trz? Przecie� i tak si� st�d nie wydostaniemy.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-48595");	//Ludzie z Nowego Obozu i typy �yj�ce na bagnie twierdz� inaczej. Ale masz racj�, pewnie sp�dzimy tu reszt� �ycia. 
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-58994");	//Ja tam uwa�am, �e warto sobie czasem przypomnie�, �e �wiat nie ko�czy si� na tej zasranej, niebieskiej kopule. Inaczej bym zwariowa�.
};

//A mo�e opowiem ci w zamian za bezpieczny nocleg?
func void DIA_GRD_251_Kirgo_Hello_Story_For_A_Place_To_Sleep()
{
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-57845");	//A mo�e ci opowiem w zamian za bezpieczny nocleg? 
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-75065");	//Mo�e jedna z tych waszych chatek?
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-5289");	//Boisz si� cieniostwora, co? Pozwoli�bym ci, gdyby to zale�a�o ode mnie, ale tak nie jest. Przykro mi.
};

//No trudno.
func void DIA_GRD_251_Kirgo_Hello_Too_Bad()
{
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-75802-0");	//No trudno.
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-49599-0");	//Szczerze, to nawet nie ma co tu du�o opowiada�. Ka�dy sra w gacie z powodu wojny, a wszystkie chore historie o orkach te� nie pomagaj�. 
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-7847");		//Kr��y jednak plotka, �e Nordmarczycy odnie�li kilka ma�ych zwyci�stw. I tyle.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-86946");		//Chwa�a Innosowi. Miejmy nadziej�, �e uda im si� odzyska� cz�� kopal�. Nie ma znaczenia, ilu wi�ni�w wy�le tu kr�l � na d�u�sz� met� nie ma szans, �eby�my nad��yli za popytem.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-51889");		//A co z Khorinis? Mia�e� szans� zobaczy� miasto, gdy ci� tu przewozili?
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-69630");		//Niestety nie. Przez ca�y czas by�em zamkni�ty.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-15646");		//Szkoda. Brakuje mi tego miasta. Mieszka�em tam przez kilka lat po opuszczeniu Varantu. Mia�em nawet kobiet�... Ros�.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-28860-0");	//Nie wyobra�am sobie s�odszej istoty. By�a lepszym cz�owiekiem, ni� ja kiedykolwiek b�d�.  
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-50097");		//Cholera, znowu zaczynam biadoli� jak stary dziad. Wybacz. 
	
	Info_ClearChoices(DIA_GRD_251_Kirgo_Hello);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Czy to prawda, �e w og�le nie ma tu kobiet?", DIA_GRD_251_Kirgo_Hello_About_Women);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Twoja kolej. Jakie masz dla mnie rady?", DIA_GRD_251_Kirgo_Hello_Any_Advice);
};

//Nie mam na to czasu.
func void DIA_GRD_251_Kirgo_Hello_No_Time()
{
	Kirgo_NotYourBusiness = true;

	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-42421");	//Nie mam na to czasu.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-13085");	//Hm, szkoda. No ale jak wolisz.

	AI_StopProcessInfos	(self);
};

//Nie tw�j interes.
func void DIA_GRD_251_Kirgo_Hello_Not_Your_Business()
{
	Kirgo_NotYourBusiness = true;
	
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-73711");	//Nie tw�j interes.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-8473");	//Nie jeste� specjalnie rozmowny, co? Mnie to lata, ale radz� spu�ci� z tonu. Samotnicy szybko tu gin�.

	AI_StopProcessInfos	(self);
};

//Twoja kolej. Jakie masz dla mnie rady?
func void DIA_GRD_251_Kirgo_Hello_Any_Advice()
{
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-99779");	//Twoja kolej. Jakie masz dla mnie rady?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-70361");	//Do��cz do Starego Obozu. Jeste�my sercem Kolonii. Wszystko, co wysy�aj� nam z zewn�trz, trafia do nas.
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-25026");	//Chyba �e osun� si� ska�y...
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-58252");	//Nie przejmuj si� tym. Nasi ch�opcy uporaj� si� z tym w mgnieniu oka. Gomez jest surowy, ale wie, jak zarz�dza� tym miejscem.
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-59810");	//Gomez? To tw�j szef?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-34033");	//Jest najbardziej wp�ywowym cz�owiekiem w Starym Obozie. Poprowadzi� bunt wi�ni�w i teraz tam rz�dzi.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-18590");	//To on m�wi kr�lowi, czego chcemy w zamian za rud�, a kr�l to dostarcza.
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-26319");	//Rozumiem.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-52548");	//Jeszcze jedno. Wygl�dasz na kogo�, kto potrafi pos�ugiwa� si� mieczem. Co powiesz na ma�y sparing?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-630");		//W przysz�ym tygodniu czeka mnie walka. W zamian naucz� ci� kilku sztuczek.

	Info_ClearChoices	(DIA_GRD_251_Kirgo_Hello);
	Info_AddChoice 		(DIA_GRD_251_Kirgo_Hello, "Mo�e za chwil�.", DIA_GRD_251_Kirgo_Hello_Maybe_Later);
	Info_AddChoice 		(DIA_GRD_251_Kirgo_Hello, "Dobrze, czemu nie.", DIA_GRD_251_Kirgo_Hello_Why_Not);
	Info_AddChoice 		(DIA_GRD_251_Kirgo_Hello, "Wybacz, ale musz� lecie�.", DIA_GRD_251_Kirgo_Hello_Sorry_But_No);
	Info_AddChoice 		(DIA_GRD_251_Kirgo_Hello, "�Czeka ci� walka�?", DIA_GRD_251_Kirgo_Hello_Are_You_Going_To_Fight);
};

//�Czeka ci� walka�?
func void DIA_GRD_251_Kirgo_Hello_Are_You_Going_To_Fight()
{
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-1372");		//�Czeka ci� walka�?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-68105");	//Tak, na arenie. B�dziesz m�g� j� zobaczy�.
};

//Wybacz, ale musz� lecie�.
func void DIA_GRD_251_Kirgo_Hello_Sorry_But_No()
{
	Kirgo_WantsFightWaitAsReady = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-91130");	//Wybacz, ale musz� lecie�.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-3837");	//Trudno. Mo�e innym razem.

	AI_StopProcessInfos	(self);
};

//Dobrze, czemu nie.
func void DIA_GRD_251_Kirgo_Hello_Why_Not()
{
	Kirgo_WantsFightWaitAsReady = true;
	
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-95013");	//Dobrze, czemu nie. 
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-63047");	//�wietnie! Daj zna�, jak b�dziesz gotowy.

	Info_ClearChoices(DIA_GRD_251_Kirgo_Hello);
	
	// If player didn't fight with him before the talk
	if (Kirgo_FirstDuelFinished == false)
	{
		Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Mo�e za chwil�.", DIA_GRD_251_Kirgo_Ready_To_Fight_Maybe_Later);
		Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Jestem gotowy do walki.", DIA_GRD_251_Kirgo_Ready_To_Fight_I_Am_Ready);
	// Immediately comment a fake duel, i.e. start `DIA_GRD_251_Kirgo_After_Fight` dialogue.
	} else
	{
		Kirgo_ImmediatelyCommentFakeDuel = true;
	};
};

//Mo�e za chwil�.
func void DIA_GRD_251_Kirgo_Hello_Maybe_Later()
{
	Kirgo_WantsFightWaitAsReady = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-79373");	//Mo�e za chwil�.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-41448");	//Dobrze. Ja si� nigdzie nie wybieram.

	AI_StopProcessInfos	(self);
};

//Czy to prawda, �e w og�le nie ma tu kobiet?
func void DIA_GRD_251_Kirgo_Hello_About_Women()
{
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-24591");	//Czy to prawda, �e w og�le nie ma tu kobiet?
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-12464");	//S�, ale tylko te sprowadzone przez Magnat�w, by spe�nia�y ich zachcianki. Uwa�aj, bo je�li zawiesisz na kt�rej� oko, Gomez ka�e ci� wych�osta�. 
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-85213");	//Kr��� plotki o jakiej� parze, kt�ra uciek�a i gdzie� si� ukrywa, ale ja w to nie wierz�. Ludzie uwielbiaj� gada�... i chla�... a potem gada� jeszcze wi�cej.
};

//========================================
//-----------------> READY_TO_FIGHT
//========================================

instance DIA_GRD_251_Kirgo_Ready_To_Fight (C_INFO)
{
	npc				= GRD_251_Kirgo;
	nr				= 1;
	condition		= DIA_GRD_251_Kirgo_Ready_To_Fight_Condition;
	information		= DIA_GRD_251_Kirgo_Ready_To_Fight_Info;
	permanent		= true;
	important		= true;
};

func int DIA_GRD_251_Kirgo_Ready_To_Fight_Condition()
{
	if (Npc_IsInState (self, ZS_Talk))
	&& (Kirgo_WantsFightWaitAsReady == true)
	&& (Kirgo_PlayerIsReady == false)
	&& (Kirgo_FirstDuelFinished == false)
	{
		return true;
	};
};

func void DIA_GRD_251_Kirgo_Ready_To_Fight_Info()
{
	Info_ClearChoices(DIA_GRD_251_Kirgo_Ready_To_Fight);
	Info_AddChoice (DIA_GRD_251_Kirgo_Ready_To_Fight, "Mo�e za chwil�.", DIA_GRD_251_Kirgo_Ready_To_Fight_Maybe_Later);
	Info_AddChoice (DIA_GRD_251_Kirgo_Ready_To_Fight, "Jestem gotowy do walki.", DIA_GRD_251_Kirgo_Ready_To_Fight_I_Am_Ready);
};

func void DIA_GRD_251_Kirgo_Ready_To_Fight_Maybe_Later()
{
	Kirgo_WantsFightWaitAsReady = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-79373");	//Mo�e za chwil�.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-41448");	//Dobrze. Ja si� nigdzie nie wybieram.
	
	AI_StopProcessInfos	(self);
};

// The mechanic of starting a fight
func void KirgoFight_Start()
{
	Kirgo_PlayerIsReady = true;
	
	AI_Wait(self, 0.1);
	
	AI_TurnToNpc(self, hero);
	
	// Go to FP
	if (Wld_IsFPAvailable(hero, "FP_FIGHT_KIRGO"))
	{
		AI_SetWalkMode(hero, NPC_RUN);
		AI_GotoFP(hero, "FP_FIGHT_KIRGO");
		AI_TurnToNpc(hero, self);
	};
	
	AI_WaitTillEnd(self, hero);
	AI_WaitTillEnd(self, hero);
	AI_WaitTillEnd(self, hero);
	
	AI_TurnToNpc(self, hero);
	
	// SAFETY CHECK
	if (Npc_IsInFightMode(self, FMODE_NONE) == true)
	{
		AI_DrawWeapon(self);
	};
	
	AI_Wait(self, 0.1);
	AI_StopProcessInfos(self);

	// Stay near a rock after the fight
	Npc_ExchangeRoutine(self, "Wait");
};

func void DIA_GRD_251_Kirgo_Ready_To_Fight_I_Am_Ready()
{
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-64994");	//Jestem gotowy do walki.
	
	if (MIS_CH0_KirgoFight == LOG_NONE)
	{
		Kirgo_WantsFightNow = true;
	};

	if (Npc_HasEquippedMeleeWeapon (hero))
	{
		Kirgo_PlayerIsReady = true;
	
		// Walka z Kirgo:
		// 1. Posta� bohatera musi si� odpowiednio ustawi� wzgl�dem postaci Kirgo (w remake troch� odesz�a do ty�u)
		// 2. Kirgo powiedzia� tekst "Zata�czmy" taki troch� ala dialog, ala svm (nie mog�e� si� wtedy rusza�)
		// 3. Zacz�a si� walka
		// 4. Kirgo nie ma nas oczywi�cie dobija� tylko powali�
		KirgoFight_Start();
	}

	else
	{
		Kirgo_HeroNoWeapon = true;

		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-39679");	//Czekaj, tak bez broni? Za�atw sobie jak��. Bez tego to jak szcza� pod wiatr.
		
		AI_StopProcessInfos	(self);
	};
};

//========================================
//-----------------> AFTER_FIGHT
//========================================

instance DIA_GRD_251_Kirgo_After_Fight (C_INFO)
{
	npc				= GRD_251_Kirgo;
	nr				= 1;
	condition		= DIA_GRD_251_Kirgo_After_Fight_Condition;
	information		= DIA_GRD_251_Kirgo_After_Fight_Info;
	important		= true;
};

func int DIA_GRD_251_Kirgo_After_Fight_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_GRD_251_Kirgo_Hello)) // INFO: Player can do a duel without challenging Kirgo
	&& (Npc_IsInState (self, ZS_Talk))
	&& (Kirgo_FirstDuelFinished == true)
	{
		return true;
	};
};

func void DIA_GRD_251_Kirgo_After_Fight_Info()
{
	if (Kirgo_FirstDuelHeroWon == true)
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-87315");	//Oj, jak boli... tego si� nie spodziewa�em. Niez�y jeste�... masz potencja�. Ale i tak mog� ci� nauczy� paru sztuczek. Zainteresowany?
	}

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-35355");	//To by�a dobra walka! Nic ci nie z�ama�em?

		CreateInvItems 	(self, itfo_potion_health_01, 1);
		B_Ani_GiveItem	(hero, self);	
		B_GiveInvItems	(self, hero, itfo_potion_health_01, 1);	

		AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-61657");	//... Chyba prze�yj�.
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-59331");	//To dobrze. Nie walczysz �le, kolego. Musisz troch� po�wiczy�, ale masz potencja�. Chcesz, �ebym nauczy� ci� paru sztuczek?
	};

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-54063-0");	//Pewnie, czemu nie.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-565-0");	//No dobra. Po pierwsze, gdy pos�ugujesz si� tak� broni�, trzymaj j� jedn� r�k�, a nie obiema. Gdy nabierzesz nieco mi�ni, b�dziesz znacznie zwinniejszy, co pozwoli ci p�ynnie ��czy� ataki. 
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-95345-0");	//Po drugie, je�li podczas wyprowadzania ataku zdasz sobie spraw�, �e ods�oni ci� to na ripost� przeciwnika, wycofaj si� i wykonaj unik. Wymaga to nieco treningu, ale poradzisz sobie.

	if (Kirgo_FirstDuelHeroWon == false)
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-10101");	//Pami�taj te�, aby podczas parowania wyczu� idealny moment. Po idealnej paradzie tw�j przeciwnik b�dzie podatny na atak.
		AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-55473");	//Rozumiem. Dzi�ki.
	} 

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-35698");	//Pami�taj r�wnie�, �eby parowa� w idealnym momencie. Dzi�ki temu wybijesz wroga z r�wnowagi i b�dziesz m�g� zaatakowa�.
		AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-55473-0");	//Rozumiem. Dzi�ki.
	};


	if (Kirgo_FirstDuelHeroWon == false)
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-83210");	//Do us�ug. Lepiej znajd� sobie jakie� obozowisko. Zaczyna si� �ciemnia�. 
	} 

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-83210-0");	//Do us�ug. Lepiej znajd� sobie jakie� obozowisko. Zaczyna si� �ciemnia�. 
	};
	
	AI_StopProcessInfos	(self);

	// Return to the start routine
	Npc_ExchangeRoutine(self, "Start");
};

//========================================
//-----------------> WHY_ARE_YOU_NICE
//========================================

instance DIA_GRD_251_Kirgo_Why_Are_You_Nice (C_INFO)
{
	npc				= GRD_251_Kirgo;
	nr				= 1;
	condition		= DIA_GRD_251_Kirgo_Why_Are_You_Nice_Condition;
	information		= DIA_GRD_251_Kirgo_Why_Are_You_Nice_Info;
	description 	= "W�a�ciwie to dlaczego jeste� taki przyjazny?";
};

func int DIA_GRD_251_Kirgo_Why_Are_You_Nice_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_GRD_251_Kirgo_After_Fight))
	{
		return true;
	};
};

func void DIA_GRD_251_Kirgo_Why_Are_You_Nice_Info()
{
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-21333");	//W�a�ciwie to dlaczego jeste� taki przyjazny?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-42430-0");	//M�wisz, jakby by�o w tym co� z�ego. Sam nie wiem. Mo�e dlatego, �e pozostali tutaj wygl�daj�, jakby nie srali od lat, wi�c pr�buj� to jako� zr�wnowa�y�.
	
	// DAMIANUT-TODO: Jak nie ma �adnych innych opcji dialogowych, to ma si� automatycznie ko�czy� dialog. Np. jak zapyta si� go o to po rewan�u.
};

//========================================
//-----------------> ABOUT_REMATCH
//========================================

instance DIA_GRD_251_Kirgo_About_Rematch (C_INFO)
{
	npc				= GRD_251_Kirgo;
	nr				= 2;
	condition		= DIA_GRD_251_Kirgo_About_Rematch_Condition;
	information		= DIA_GRD_251_Kirgo_About_Rematch_Info;
	description 	= "Co powiesz na rewan�?";
	permanent		= true;
};

func int DIA_GRD_251_Kirgo_About_Rematch_Condition()
{
	if (Npc_KnowsInfo (hero, DIA_GRD_251_Kirgo_After_Fight))
	&& (Kirgo_PlayerChoseSecondFight == false)
	{
		return true;
	};
};

func void DIA_GRD_251_Kirgo_About_Rematch_Info()
{
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-57048");	//Co powiesz na rewan�?
	
	// If has a weapon
	if (Npc_HasEquippedMeleeWeapon (hero))
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-48441");	//Tak szybko? Pewnie. Powiedz kiedy.
	
		Info_ClearChoices	(DIA_GRD_251_Kirgo_About_Rematch);
		Info_AddChoice 		(DIA_GRD_251_Kirgo_About_Rematch, "Daj mi chwil�.", DIA_GRD_251_Kirgo_About_Rematch_Wait);
		Info_AddChoice 		(DIA_GRD_251_Kirgo_About_Rematch, "Tym razem si� nie powstrzymuj. Daj z siebie wszystko.", DIA_GRD_251_Kirgo_About_Rematch_No_Mercy);
		Info_AddChoice 		(DIA_GRD_251_Kirgo_About_Rematch, "Walczmy.", DIA_GRD_251_Kirgo_About_Rematch_Fight);
	}

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-70786");	//Hm, czemu nie. Tylko najpierw skombinuj sobie jak�� bro�.
		
		AI_StopProcessInfos	(self);
	};
};

//Walczmy.
func void DIA_GRD_251_Kirgo_About_Rematch_Fight()
{
	Kirgo_PlayerChoseSecondFight = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-23822");	//Walczmy.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-18035");	//Dobrze. Poka�, co potrafisz!
	
	KirgoFight_Start();
};

//Tym razem si� nie powstrzymuj. Daj z siebie wszystko.
func void DIA_GRD_251_Kirgo_About_Rematch_No_Mercy()
{
	Kirgo_PlayerChoseSecondFight = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-92998");	//Tym razem si� nie powstrzymuj. Daj z siebie wszystko. 
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-72913");	//Jeste� pewny? No dobrze, zata�czmy.

	KirgoFight_Start();
};

//Daj mi chwil�.
func void DIA_GRD_251_Kirgo_About_Rematch_Wait()
{
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-17711");	//Daj mi chwil�.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-27576");	//Dobrze. Wiesz, gdzie mnie szuka�.
	
	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> AFTER_REMATCH_FIGHT
//========================================

instance DIA_GRD_251_Kirgo_After_Rematch_Fight (C_INFO)
{
	npc				= GRD_251_Kirgo;
	nr				= 1;
	condition		= DIA_GRD_251_Kirgo_After_Rematch_Fight_Condition;
	information		= DIA_GRD_251_Kirgo_After_Rematch_Fight_Info;
	important		= true;
};

func int DIA_GRD_251_Kirgo_After_Rematch_Fight_Condition()
{
	if (Kirgo_PlayerChoseSecondFight == true) && (Npc_IsInState (self, ZS_Talk)) && (Kirgo_SecondDuelFinished == true)
	{
		return true;
	};
};

func void DIA_GRD_251_Kirgo_After_Rematch_Fight_Info()
{
	// DAMIANUT-TODO: Pytanie o bycie przyjaznym, a automatycznie ko�czenie tego dialogu.
	Kirgo_SaidEverything = true;

	if (Kirgo_SecondDuelHeroWon == true)
	{
		AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-65501");		//Nie�le... Tego si� nie spodziewa�em.
	}

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-22502");		//Dobra walka. Idzie ci coraz lepiej!
	};

	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-30285-0");	//Musz� wraca� do roboty. Do zobaczenia.
	
	AI_StopProcessInfos	(self);
	
	// Return to the start routine
	Npc_ExchangeRoutine(self, "Start");
};
