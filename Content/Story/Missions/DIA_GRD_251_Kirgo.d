
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
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-13159");	//Proszê, proszê. Nowa twarz. Dopiero co ciê wrzucili?

	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Nie twój interes.", DIA_GRD_251_Kirgo_Hello_Not_Your_Business);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Tak.", DIA_GRD_251_Kirgo_Hello_Yes);
};

//Tak.
func void DIA_GRD_251_Kirgo_Hello_Yes()
{
	//FABIO-TODO TUTAJ S¥ DWA ODPOWIEDZI "Tak." i ka¿da z nich ma inn¹ nazwê audio, do sprawdzenia!
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-61590");	//Tak.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-72322");	//No to witaj w Kolonii. Jak ci na imiê? Mnie nazywaj¹ Kirgo.
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-54970");	//Nyras.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-53995");	//Mi³o poznaæ. Mo¿e chwilê porozmawiamy? Powiedz mi, jak siê sprawy maj¹ na zewn¹trz, a ja zdradzê ci parê rzeczy, które u³atwi¹ ci prze¿ycie w tej dziurze. 
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-48505");	//Ca³y dzieñ przerzucam ten cholerny gruz. Chcia³bym siê na chwilê od tego oderwaæ... To jak, pogadamy?
	
	// NyrasPrologueDemake: To handle saying about killing Kirgo
	Kirgo_IntroducedHimself = true;

	Info_ClearChoices(DIA_GRD_251_Kirgo_Hello);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Nie mam na to czasu.", DIA_GRD_251_Kirgo_Hello_No_Time);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "No trudno.", DIA_GRD_251_Kirgo_Hello_Too_Bad);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "A mo¿e opowiem ci w zamian za bezpieczny nocleg?", DIA_GRD_251_Kirgo_Hello_Story_For_A_Place_To_Sleep);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Dlaczego w ogóle obchodzi ciê, co siê dzieje na zewn¹trz?", DIA_GRD_251_Kirgo_Hello_Why_Are_You_Interested_In_This);
};

//Dlaczego w ogóle obchodzi ciê, co siê dzieje na zewn¹trz?
func void DIA_GRD_251_Kirgo_Hello_Why_Are_You_Interested_In_This()
{
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-5576");	//Dlaczego w ogóle obchodzi ciê, co siê dzieje na zewn¹trz? Przecie¿ i tak siê st¹d nie wydostaniemy.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-48595");	//Ludzie z Nowego Obozu i typy ¿yj¹ce na bagnie twierdz¹ inaczej. Ale masz racjê, pewnie spêdzimy tu resztê ¿ycia. 
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-58994");	//Ja tam uwa¿am, ¿e warto sobie czasem przypomnieæ, ¿e œwiat nie koñczy siê na tej zasranej, niebieskiej kopule. Inaczej bym zwariowa³.
};

//A mo¿e opowiem ci w zamian za bezpieczny nocleg?
func void DIA_GRD_251_Kirgo_Hello_Story_For_A_Place_To_Sleep()
{
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-57845");	//A mo¿e ci opowiem w zamian za bezpieczny nocleg? 
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-75065");	//Mo¿e jedna z tych waszych chatek?
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-5289");	//Boisz siê cieniostwora, co? Pozwoli³bym ci, gdyby to zale¿a³o ode mnie, ale tak nie jest. Przykro mi.
};

//No trudno.
func void DIA_GRD_251_Kirgo_Hello_Too_Bad()
{
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-75802-0");	//No trudno.
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-49599-0");	//Szczerze, to nawet nie ma co tu du¿o opowiadaæ. Ka¿dy sra w gacie z powodu wojny, a wszystkie chore historie o orkach te¿ nie pomagaj¹. 
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-7847");		//Kr¹¿y jednak plotka, ¿e Nordmarczycy odnieœli kilka ma³ych zwyciêstw. I tyle.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-86946");		//Chwa³a Innosowi. Miejmy nadziejê, ¿e uda im siê odzyskaæ czêœæ kopalñ. Nie ma znaczenia, ilu wiêŸniów wyœle tu król – na d³u¿sz¹ metê nie ma szans, ¿ebyœmy nad¹¿yli za popytem.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-51889");		//A co z Khorinis? Mia³eœ szansê zobaczyæ miasto, gdy ciê tu przewozili?
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-69630");		//Niestety nie. Przez ca³y czas by³em zamkniêty.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-15646");		//Szkoda. Brakuje mi tego miasta. Mieszka³em tam przez kilka lat po opuszczeniu Varantu. Mia³em nawet kobietê... Rosê.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-28860-0");	//Nie wyobra¿am sobie s³odszej istoty. By³a lepszym cz³owiekiem, ni¿ ja kiedykolwiek bêdê.  
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-50097");		//Cholera, znowu zaczynam biadoliæ jak stary dziad. Wybacz. 
	
	Info_ClearChoices(DIA_GRD_251_Kirgo_Hello);
	Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Czy to prawda, ¿e w ogóle nie ma tu kobiet?", DIA_GRD_251_Kirgo_Hello_About_Women);
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

//Nie twój interes.
func void DIA_GRD_251_Kirgo_Hello_Not_Your_Business()
{
	Kirgo_NotYourBusiness = true;
	
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-73711");	//Nie twój interes.
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-8473");	//Nie jesteœ specjalnie rozmowny, co? Mnie to lata, ale radzê spuœciæ z tonu. Samotnicy szybko tu gin¹.

	AI_StopProcessInfos	(self);
};

//Twoja kolej. Jakie masz dla mnie rady?
func void DIA_GRD_251_Kirgo_Hello_Any_Advice()
{
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-99779");	//Twoja kolej. Jakie masz dla mnie rady?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-70361");	//Do³¹cz do Starego Obozu. Jesteœmy sercem Kolonii. Wszystko, co wysy³aj¹ nam z zewn¹trz, trafia do nas.
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-25026");	//Chyba ¿e osun¹ siê ska³y...
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-58252");	//Nie przejmuj siê tym. Nasi ch³opcy uporaj¹ siê z tym w mgnieniu oka. Gomez jest surowy, ale wie, jak zarz¹dzaæ tym miejscem.
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-59810");	//Gomez? To twój szef?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-34033");	//Jest najbardziej wp³ywowym cz³owiekiem w Starym Obozie. Poprowadzi³ bunt wiêŸniów i teraz tam rz¹dzi.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-18590");	//To on mówi królowi, czego chcemy w zamian za rudê, a król to dostarcza.
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-26319");	//Rozumiem.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-52548");	//Jeszcze jedno. Wygl¹dasz na kogoœ, kto potrafi pos³ugiwaæ siê mieczem. Co powiesz na ma³y sparing?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-630");		//W przysz³ym tygodniu czeka mnie walka. W zamian nauczê ciê kilku sztuczek.

	Info_ClearChoices	(DIA_GRD_251_Kirgo_Hello);
	Info_AddChoice 		(DIA_GRD_251_Kirgo_Hello, "Mo¿e za chwilê.", DIA_GRD_251_Kirgo_Hello_Maybe_Later);
	Info_AddChoice 		(DIA_GRD_251_Kirgo_Hello, "Dobrze, czemu nie.", DIA_GRD_251_Kirgo_Hello_Why_Not);
	Info_AddChoice 		(DIA_GRD_251_Kirgo_Hello, "Wybacz, ale muszê lecieæ.", DIA_GRD_251_Kirgo_Hello_Sorry_But_No);
	Info_AddChoice 		(DIA_GRD_251_Kirgo_Hello, "„Czeka ciê walka”?", DIA_GRD_251_Kirgo_Hello_Are_You_Going_To_Fight);
};

//„Czeka ciê walka”?
func void DIA_GRD_251_Kirgo_Hello_Are_You_Going_To_Fight()
{
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-1372");		//„Czeka ciê walka”?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-68105");	//Tak, na arenie. Bêdziesz móg³ j¹ zobaczyæ.
};

//Wybacz, ale muszê lecieæ.
func void DIA_GRD_251_Kirgo_Hello_Sorry_But_No()
{
	Kirgo_WantsFightWaitAsReady = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-91130");	//Wybacz, ale muszê lecieæ.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-3837");	//Trudno. Mo¿e innym razem.

	AI_StopProcessInfos	(self);
};

//Dobrze, czemu nie.
func void DIA_GRD_251_Kirgo_Hello_Why_Not()
{
	Kirgo_WantsFightWaitAsReady = true;
	
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-95013");	//Dobrze, czemu nie. 
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-63047");	//Œwietnie! Daj znaæ, jak bêdziesz gotowy.

	Info_ClearChoices(DIA_GRD_251_Kirgo_Hello);
	
	// If player didn't fight with him before the talk
	if (Kirgo_FirstDuelFinished == false)
	{
		Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Mo¿e za chwilê.", DIA_GRD_251_Kirgo_Ready_To_Fight_Maybe_Later);
		Info_AddChoice (DIA_GRD_251_Kirgo_Hello, "Jestem gotowy do walki.", DIA_GRD_251_Kirgo_Ready_To_Fight_I_Am_Ready);
	// Immediately comment a fake duel, i.e. start `DIA_GRD_251_Kirgo_After_Fight` dialogue.
	} else
	{
		Kirgo_ImmediatelyCommentFakeDuel = true;
	};
};

//Mo¿e za chwilê.
func void DIA_GRD_251_Kirgo_Hello_Maybe_Later()
{
	Kirgo_WantsFightWaitAsReady = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-79373");	//Mo¿e za chwilê.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-41448");	//Dobrze. Ja siê nigdzie nie wybieram.

	AI_StopProcessInfos	(self);
};

//Czy to prawda, ¿e w ogóle nie ma tu kobiet?
func void DIA_GRD_251_Kirgo_Hello_About_Women()
{
	AI_Output	(hero, self, "Kirgo-CH0-None-Hero-24591");	//Czy to prawda, ¿e w ogóle nie ma tu kobiet?
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-12464");	//S¹, ale tylko te sprowadzone przez Magnatów, by spe³nia³y ich zachcianki. Uwa¿aj, bo jeœli zawiesisz na którejœ oko, Gomez ka¿e ciê wych³ostaæ. 
	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-85213");	//Kr¹¿¹ plotki o jakiejœ parze, która uciek³a i gdzieœ siê ukrywa, ale ja w to nie wierzê. Ludzie uwielbiaj¹ gadaæ... i chlaæ... a potem gadaæ jeszcze wiêcej.
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
	Info_AddChoice (DIA_GRD_251_Kirgo_Ready_To_Fight, "Mo¿e za chwilê.", DIA_GRD_251_Kirgo_Ready_To_Fight_Maybe_Later);
	Info_AddChoice (DIA_GRD_251_Kirgo_Ready_To_Fight, "Jestem gotowy do walki.", DIA_GRD_251_Kirgo_Ready_To_Fight_I_Am_Ready);
};

func void DIA_GRD_251_Kirgo_Ready_To_Fight_Maybe_Later()
{
	Kirgo_WantsFightWaitAsReady = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-79373");	//Mo¿e za chwilê.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-41448");	//Dobrze. Ja siê nigdzie nie wybieram.
	
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
		// 1. Postaæ bohatera musi siê odpowiednio ustawiæ wzglêdem postaci Kirgo (w remake trochê odesz³a do ty³u)
		// 2. Kirgo powiedzia³ tekst "Zatañczmy" taki trochê ala dialog, ala svm (nie mog³eœ siê wtedy ruszaæ)
		// 3. Zaczê³a siê walka
		// 4. Kirgo nie ma nas oczywiœcie dobijaæ tylko powaliæ
		KirgoFight_Start();
	}

	else
	{
		Kirgo_HeroNoWeapon = true;

		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-39679");	//Czekaj, tak bez broni? Za³atw sobie jak¹œ. Bez tego to jak szczaæ pod wiatr.
		
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
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-87315");	//Oj, jak boli... tego siê nie spodziewa³em. Niez³y jesteœ... masz potencja³. Ale i tak mogê ciê nauczyæ paru sztuczek. Zainteresowany?
	}

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-35355");	//To by³a dobra walka! Nic ci nie z³ama³em?

		CreateInvItems 	(self, itfo_potion_health_01, 1);
		B_Ani_GiveItem	(hero, self);	
		B_GiveInvItems	(self, hero, itfo_potion_health_01, 1);	

		AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-61657");	//... Chyba prze¿yjê.
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-59331");	//To dobrze. Nie walczysz Ÿle, kolego. Musisz trochê poæwiczyæ, ale masz potencja³. Chcesz, ¿ebym nauczy³ ciê paru sztuczek?
	};

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-54063-0");	//Pewnie, czemu nie.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-565-0");	//No dobra. Po pierwsze, gdy pos³ugujesz siê tak¹ broni¹, trzymaj j¹ jedn¹ rêk¹, a nie obiema. Gdy nabierzesz nieco miêœni, bêdziesz znacznie zwinniejszy, co pozwoli ci p³ynnie ³¹czyæ ataki. 
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-95345-0");	//Po drugie, jeœli podczas wyprowadzania ataku zdasz sobie sprawê, ¿e ods³oni ciê to na ripostê przeciwnika, wycofaj siê i wykonaj unik. Wymaga to nieco treningu, ale poradzisz sobie.

	if (Kirgo_FirstDuelHeroWon == false)
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-10101");	//Pamiêtaj te¿, aby podczas parowania wyczuæ idealny moment. Po idealnej paradzie twój przeciwnik bêdzie podatny na atak.
		AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-55473");	//Rozumiem. Dziêki.
	} 

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-35698");	//Pamiêtaj równie¿, ¿eby parowaæ w idealnym momencie. Dziêki temu wybijesz wroga z równowagi i bêdziesz móg³ zaatakowaæ.
		AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-55473-0");	//Rozumiem. Dziêki.
	};


	if (Kirgo_FirstDuelHeroWon == false)
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-83210");	//Do us³ug. Lepiej znajdŸ sobie jakieœ obozowisko. Zaczyna siê œciemniaæ. 
	} 

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-83210-0");	//Do us³ug. Lepiej znajdŸ sobie jakieœ obozowisko. Zaczyna siê œciemniaæ. 
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
	description 	= "W³aœciwie to dlaczego jesteœ taki przyjazny?";
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
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-21333");	//W³aœciwie to dlaczego jesteœ taki przyjazny?
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-42430-0");	//Mówisz, jakby by³o w tym coœ z³ego. Sam nie wiem. Mo¿e dlatego, ¿e pozostali tutaj wygl¹daj¹, jakby nie srali od lat, wiêc próbujê to jakoœ zrównowa¿yæ.
	
	// DAMIANUT-TODO: Jak nie ma ¿adnych innych opcji dialogowych, to ma siê automatycznie koñczyæ dialog. Np. jak zapyta siê go o to po rewan¿u.
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
	description 	= "Co powiesz na rewan¿?";
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
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-57048");	//Co powiesz na rewan¿?
	
	// If has a weapon
	if (Npc_HasEquippedMeleeWeapon (hero))
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-48441");	//Tak szybko? Pewnie. Powiedz kiedy.
	
		Info_ClearChoices	(DIA_GRD_251_Kirgo_About_Rematch);
		Info_AddChoice 		(DIA_GRD_251_Kirgo_About_Rematch, "Daj mi chwilê.", DIA_GRD_251_Kirgo_About_Rematch_Wait);
		Info_AddChoice 		(DIA_GRD_251_Kirgo_About_Rematch, "Tym razem siê nie powstrzymuj. Daj z siebie wszystko.", DIA_GRD_251_Kirgo_About_Rematch_No_Mercy);
		Info_AddChoice 		(DIA_GRD_251_Kirgo_About_Rematch, "Walczmy.", DIA_GRD_251_Kirgo_About_Rematch_Fight);
	}

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-70786");	//Hm, czemu nie. Tylko najpierw skombinuj sobie jak¹œ broñ.
		
		AI_StopProcessInfos	(self);
	};
};

//Walczmy.
func void DIA_GRD_251_Kirgo_About_Rematch_Fight()
{
	Kirgo_PlayerChoseSecondFight = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-23822");	//Walczmy.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-18035");	//Dobrze. Poka¿, co potrafisz!
	
	KirgoFight_Start();
};

//Tym razem siê nie powstrzymuj. Daj z siebie wszystko.
func void DIA_GRD_251_Kirgo_About_Rematch_No_Mercy()
{
	Kirgo_PlayerChoseSecondFight = true;

	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-92998");	//Tym razem siê nie powstrzymuj. Daj z siebie wszystko. 
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-72913");	//Jesteœ pewny? No dobrze, zatañczmy.

	KirgoFight_Start();
};

//Daj mi chwilê.
func void DIA_GRD_251_Kirgo_About_Rematch_Wait()
{
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-17711");	//Daj mi chwilê.
	AI_Output	(self, hero, "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-27576");	//Dobrze. Wiesz, gdzie mnie szukaæ.
	
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
	// DAMIANUT-TODO: Pytanie o bycie przyjaznym, a automatycznie koñczenie tego dialogu.
	Kirgo_SaidEverything = true;

	if (Kirgo_SecondDuelHeroWon == true)
	{
		AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-65501");		//NieŸle... Tego siê nie spodziewa³em.
	}

	else
	{
		AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-22502");		//Dobra walka. Idzie ci coraz lepiej!
	};

	AI_Output	(self, hero, "Kirgo-CH0-None-Kirgo-30285-0");	//Muszê wracaæ do roboty. Do zobaczenia.
	
	AI_StopProcessInfos	(self);
	
	// Return to the start routine
	Npc_ExchangeRoutine(self, "Start");
};
