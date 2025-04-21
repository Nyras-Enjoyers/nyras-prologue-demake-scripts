///========================================
//-----------------> DRAX_HELLO
//========================================
var int ORG_819_Drax_Hello_Maybe_Its_A_Trap; // If `DIA_ORG_819_Drax_Hello_Maybe_Its_A_Trap` option was chosen.
var int ORG_819_Drax_Hello_You_Are_Not_From_Khorinis; // If `DIA_ORG_819_Drax_Hello_You_Are_Not_From_Khorinis` option was chosen.
var int ORG_819_Drax_Hello_About_Fire; // If `DIA_ORG_819_Drax_Hello_About_Fire` option was chosen.

instance DIA_ORG_819_Drax_Hello (C_INFO)
{
	npc				= ORG_819_Drax;
	nr				= 1;
	condition		= DIA_ORG_819_Drax_Hello_Condition;
	information		= DIA_ORG_819_Drax_Hello_Info;
	important		= true;
};

func int DIA_ORG_819_Drax_Hello_Condition()
{
	if (Npc_IsInState (self, ZS_Talk)) && (Npc_KnowsInfo (hero, DIA_PC_Thief_Hello))
	{
		return true;
	};
};

func void DIA_ORG_819_Drax_Hello_Info()
{
	// Nyras knows about the camp
	HuntersCamp_Busy = true;

	// Wait, if Nyras comes
	if (Drax_HeroEnteredHuntAreaTooFast == true)
	{
		AI_WaitTillEnd(self, hero);
		AI_TurnToNpc(self, hero);
	};

	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-89011");	//Chwileczkê. To ciebie w³aœnie do nas wrzucili, prawda? Nie musisz nic mówiæ, ju¿ wiem.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-20861"); 	//Masz wypisane na gêbie pytanie: „W co ja siê, kurwa, wpakowa³em?”
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-10911");	//Pewnie ju¿ wiesz, ¿e tu utknêliœmy?
	
	// If already found Jorik 
	if (MIS_CH0_FindJorik == LOG_SUCCESS)
	{
		// By odpali³ siê `DIA_ORG_819_Drax_Lets_Hunt`.
		Drax_HuntingYes = true;

		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-9657");	//Tak, jestem tu nowy, ale przysy³a mnie twój kumpel, Ratford.
		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-46836");	//Powiedzia³, ¿e mogê u was przenocowaæ, ale kaza³ pomóc w polowaniu.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-58516");	//Rat? I co? Znalaz³ Jorika?
		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-8890");	//Tak, nie ¿yje.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-97866");	//Rozumiem. Szkoda, ale jakoœ mnie to nie dziwi.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-26302");	//Czyli chcesz mi pomóc w polowaniu... Mi³o z twojej strony. Dobra, czemu nie. Do dzie³a.
	} 

	else
	{
		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-43176");	//Tak, szukam bezpiecznego miejsca na nocleg. Podobno ³azi tu jakiœ cieniostwór.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-70619");	//To prawda. Te¿ go widzieliœmy. Wielki skurwysyn.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-49351");	//Co powiesz na uk³ad? Pomo¿esz mi upolowaæ to stado œcierwojadów, a my podzielimy siê z tob¹ jad³em i bêdziesz móg³ siê przespaæ przy naszym ognisku.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-43533");	//Jest w starym obozie górniczym naprzeciwko zalanej kopalni. NieŸle os³oniête miejsce. Co ty na to?
	
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Nie jestem zainteresowany.", DIA_ORG_819_Drax_Hello_No);
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "A ty co z tego masz? Spokojnie da³byœ radê tym œcierwojadom w pojedynkê.", DIA_ORG_819_Drax_Hello_You_Could_Do_It_Yourself);
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Sk¹d mam wiedzieæ, ¿e to nie pu³apka?", DIA_ORG_819_Drax_Hello_Maybe_Its_A_Trap);
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Nie brzmisz, jakbyœ by³ z Khorinis.", DIA_ORG_819_Drax_Hello_You_Are_Not_From_Khorinis);
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "„Naszym” ognisku?", DIA_ORG_819_Drax_Hello_About_Fire);
	};
};

//„Naszym” ognisku?
func void DIA_ORG_819_Drax_Hello_About_Fire()
{
	ORG_819_Drax_Hello_About_Fire = true;

	AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-47782");	//„Naszym” ognisku?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-87244");	//Taa, jest moje i moich ziomków.
};

//Nie brzmisz, jakbyœ by³ z Khorinis.
func void DIA_ORG_819_Drax_Hello_You_Are_Not_From_Khorinis()
{
	ORG_819_Drax_Hello_You_Are_Not_From_Khorinis = true;

	AI_Output	(hero, self, "Drax-CH0-None-Hero-72487");	//Nie brzmisz, jakbyœ by³ z Khorinis.  
	AI_Output	(self, hero, "Drax-CH0-None-Drax-86382");	//Ty te¿ nie.
	AI_Output	(hero, self, "Drax-CH0-None-Hero-57725");	//To sk¹d jesteœ? Krainy Centralne?
	AI_Output	(self, hero, "Drax-CH0-None-Drax-47752");	//Mo¿e tak, mo¿e nie. 
};

//Sk¹d mam wiedzieæ, ¿e to nie pu³apka?
func void DIA_ORG_819_Drax_Hello_Maybe_Its_A_Trap()
{
	ORG_819_Drax_Hello_Maybe_Its_A_Trap = true;

	AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-80576");	//Sk¹d mam wiedzieæ, ¿e to nie pu³apka? 
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-27434");	//A wygl¹dam ci na z³ego z³oczyñcê, który chce ograbiæ biedn¹ œwie¿ynkê z ca³ego nieistniej¹cego dobytku?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-91704");	//Bez urazy, przyjacielu, ale gdybym mia³ z tob¹ problem, ju¿ byœ nie ¿y³. 
};

//A ty co z tego masz? Spokojnie da³byœ radê tym œcierwojadom w pojedynkê.
func void DIA_ORG_819_Drax_Hello_You_Could_Do_It_Yourself()
{
	AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-61662-0");	//A ty co z tego masz? Spokojnie da³byœ radê tym œcierwojadom w pojedynkê.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-66721");	//Aleœ ty ostro¿ny. To dobrze! Po pierwsze: pamiêtam, jak sam zosta³em tu wrzucony i wszyscy próbowali mnie or¿n¹æ albo zabiæ.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-59742");	//Po drugie: jeœli siê oka¿e, ¿e jesteœ choæ ODROBINÊ mniej bezu¿yteczny ni¿ przeciêtna œwie¿ynka, mogê ci doradziæ, ¿ebyœ ola³ to, co pewnie nagada³ ci Diego, i spróbowa³ do³¹czyæ do NASZEGO obozu – Nowego Obozu.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-43603");	//Przynajmniej z nami nie bêdziesz musia³ do koñca ¿ycia w³aziæ w dupê Gomezowi.
	
	Info_ClearChoices 	(DIA_ORG_819_Drax_Hello);
	Info_AddChoice 		(DIA_ORG_819_Drax_Hello, "Nie jestem zainteresowany.", DIA_ORG_819_Drax_Hello_No);
	Info_AddChoice 		(DIA_ORG_819_Drax_Hello, "Umowa stoi. Jaki jest plan?", DIA_ORG_819_Drax_Hello_About_Plan);
	Info_AddChoice 		(DIA_ORG_819_Drax_Hello, "A ten wasz gang ma przywódcê?", DIA_ORG_819_Drax_Hello_About_Leader);

	if (ORG_819_Drax_Hello_Maybe_Its_A_Trap == false)
	{
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Sk¹d mam wiedzieæ, ¿e to nie pu³apka?", DIA_ORG_819_Drax_Hello_Maybe_Its_A_Trap);
	};

	if (ORG_819_Drax_Hello_You_Are_Not_From_Khorinis == false)
	{
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Nie brzmisz, jakbyœ by³ z Khorinis.", DIA_ORG_819_Drax_Hello_You_Are_Not_From_Khorinis);
	};
	
	if (ORG_819_Drax_Hello_About_Fire == false)
	{
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "„Naszym” ognisku?", DIA_ORG_819_Drax_Hello_About_Fire);
	};
};

	//A ten wasz gang ma przywódcê?
	func void DIA_ORG_819_Drax_Hello_About_Leader()
	{
		AI_Output	(hero, self, "TEXT_DAVID_20230811_170556_41");	//A ten wasz gang ma przywódcê?
		AI_Output	(self, hero, "TEXT_DAVID_20230811_170615");		//Ma – Laresa. Ale powtarzam: to nie jest taki uk³ad jak w Starym Obozie. Dowodzi, bo najlepiej nadaje siê do tej roboty, i tyle. Kiedy to siê zmieni, ust¹pi miejsca komuœ lepszemu.
	};

	//Umowa stoi. Jaki jest plan?
	func void DIA_ORG_819_Drax_Hello_About_Plan()
	{
		Drax_HuntingYes = true;

		Info_ClearChoices (DIA_ORG_819_Drax_Hello);

		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-66022");	//Umowa stoi. Jaki jest plan?
		AI_Output	(self, hero, "TEXT_DAVID_20230811_170008");				//Nie potrzebujemy planu. Te ptaszyska s¹ g³upie jak but, wiêc po prostu wpadasz i je zabijasz.
		AI_Output	(self, hero, "TEXT_DAVID_20230811_170018");				//Tylko nie daj siê otoczyæ. Daj znaæ, jak bêdziesz gotowy. Wtedy wyruszymy.
	};

//Nie jestem zainteresowany.
func void DIA_ORG_819_Drax_Hello_No()
{
	Drax_IHaveNoTimeForThat = true;

	AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-34325");	//Nie jestem zainteresowany.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-97644-2");	//Nie przepadasz za towarzystwem, co? G³upie podejœcie, ale jak sobie chcesz. Tylko trzymaj siê z daleka od moich œcierwojadów, bo mogê ciê z którymœ pomyliæ.

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> LETS_HUNT
//========================================
instance DIA_ORG_819_Drax_Lets_Hunt (C_INFO)
{
	npc				= ORG_819_Drax;
	nr				= 1;
	condition		= DIA_ORG_819_Drax_Lets_Hunt_Condition;
	information		= DIA_ORG_819_Drax_Lets_Hunt_Info;
	description 	= "Zapolujmy.";
	permanent		= true;
};

func int DIA_ORG_819_Drax_Lets_Hunt_Condition()
{
	if (Drax_HuntingYes == true) && (Drax_HeroWeaponCheck == false)
	{
		return true;
	};
};

func void DIA_ORG_819_Drax_Lets_Hunt_Info()
{
	AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-36233");	//Zapolujmy.
	AI_Output	(self, hero, "Drax-CH0-None-Drax-27879");				//I to w³aœnie chcia³em us³yszeæ. Broñ masz?

	if (Npc_HasEquippedMeleeWeapon (hero)) || (Npc_HasEquippedRangedWeapon (hero)) 
	{
		Drax_HeroWeaponCheck = true;

		AI_Output	(hero, self, "Drax-CH0-None-Hero-90162");	//Tak.
		AI_Output	(self, hero, "Drax-CH0-None-Drax-91362");	//Dobrze. No to chodŸ za mn¹.
	}

	else
	{
		Drax_HeroNoWeapon = true;

		AI_Output	(hero, self, "Drax-CH0-None-Hero-54250");	//Nie.
		AI_Output	(self, hero, "Drax-CH0-None-Drax-3588-0");	//Jaja sobie robisz? To weŸ jak¹œ znajdŸ. Mogê zaczekaæ jeszcze parê minut. 
	};

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> HUNTING_MAYBE_LATER
//========================================

instance DIA_ORG_819_Drax_Hunting_Maybe_Later (C_INFO)
{
	npc				= ORG_819_Drax;
	nr				= 2;
	condition		= DIA_ORG_819_Drax_Hunting_Maybe_Later_Condition;
	information		= DIA_ORG_819_Drax_Hunting_Maybe_Later_Info;
	description 	= "Mo¿e za chwilê.";
	permanent		= true;
};

func int DIA_ORG_819_Drax_Hunting_Maybe_Later_Condition()
{
	if (Drax_HuntingYes == true) && (Drax_HeroWeaponCheck == false)
	{
		return true;
	};
};

func void DIA_ORG_819_Drax_Hunting_Maybe_Later_Info()
{
	Drax_MaybeLater = true;

	//IMPORTANT INFO: Kirgo-CH0-G1RDemo_KirgoFight-Hero-79373.wav is used twice
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-79373");	//Mo¿e za chwilê.
	AI_Output	(self, hero, "Drax-CH0-None-Drax-3588-1");					//Dobrze, mogê chwilê poczekaæ.

	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> AFTER_HUNTING
//========================================

instance DIA_ORG_819_Drax_After_Hunting (C_INFO)
{
	npc				= ORG_819_Drax;
	nr				= 1;
	condition		= DIA_ORG_819_Drax_After_Hunting_Condition;
	information		= DIA_ORG_819_Drax_After_Hunting_Info;
	important		= true;
};

func int DIA_ORG_819_Drax_After_Hunting_Condition()
{
	if (Drax_HeroWeaponCheck == true) // If started fight after announcing it Drax
	|| ((Drax_HeroStartedFightAlone == true) && ((Drax_MaybeLater == true) || (Drax_HeroNoWeapon == true)))
	{
		if (Npc_IsInState (self, ZS_Talk))
		{
			if (Drax_AllScavengersKilled == true)
			{
				return true;
			};
		};
	};
};

func void DIA_ORG_819_Drax_After_Hunting_Info()
{
	// If already found Jorik.
	if (MIS_CH0_FindJorik == LOG_SUCCESS)
	{
		if (Drax_HeroStartedFightAlone == true)
		{
			Drax_FailedMissionKilledAloneAfterJorik = true;

			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-50312");		//Zapomnij o œcierwojadach.
			AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-62484");		//Dlaczego?
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-43473");		//Bo ktoœ je ukatrupi³, kiedy nie patrzy³em. Jestem PEWIEN, ¿e to nie by³eœ ty.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-95185");		//Dobra, chuj z tym. Wracam do obozu. Na kolacjê bêdzie suszone miêso...
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-78430");		//ChodŸmy.
		} 

		else
		{
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-18631");		//Ha! Niez³a zdobycz.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-16681");		//Mia³em zamiar wypatroszyæ je tutaj, ale skoro Rat jest ju¿ w obozie, nie traæmy wiêcej czasu. Spotkamy siê na miejscu, m³ody! Dobra robota.
		};
		
		AI_StopProcessInfos(self);
	} 

	else if (MIS_CH0_FindJorik == LOG_RUNNING)
	{
		if (Drax_HeroStartedFightAlone == true)
		{
			Drax_FailedMissionKilledAloneAfterJorik = true;
			
			Drax_RefusedCamp = true;

			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-50312");		//Zapomnij o œcierwojadach.
			AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-62484");		//Dlaczego?
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-43473");		//Bo ktoœ je ukatrupi³, kiedy nie patrzy³em. Jestem PEWIEN, ¿e to nie by³eœ ty.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-95185");		//Dobra, chuj z tym. Wracam do obozu. Na kolacjê bêdzie suszone miêso...
			AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-1376");		//Ale co z nasz¹ umow¹? Ci¹gle potrzebujê noclegu.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-70710");		//Taa... Wspó³czujê, naprawdê. Niestety, nic w ¿yciu nie ma za darmo.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-40881");		//Rozejrzyj siê po okolicy. Na pewno sobie coœ znajdziesz.	
		} 

		else
		{
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-18631");		//Ha! Niez³a zdobycz.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-16681");		//Mia³em zamiar wypatroszyæ je tutaj, ale skoro Rat jest ju¿ w obozie, nie traæmy wiêcej czasu. Spotkamy siê na miejscu, m³ody! Dobra robota.
		};
		
		AI_StopProcessInfos(self);
	} 

	else
	{
		if (Drax_HeroStartedFightAlone == true)
		{
			AI_Output    (self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-80360");    //Nie jesteœ z tych, którzy lubi¹ planowaæ, co? Niewa¿ne. Mamy skubañce. Wiesz, jak siê je patroszy?
		} 

		else
		{
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-55131");		//Dobra robota! Nawet niez³a ta zdobycz. S³uchaj, wiesz, jak siê je patroszy? 
		};

		AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-55641-0");	//Eee, no có¿...
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-59799-0");	//Niewa¿ne, poradzê sobie. Skoro ju¿ tu jesteœ, to mo¿e móg³byœ znaleŸæ mojego druha Ratforda i sprawdziæ, czy nie potrzebuje pomocy.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-21285-0");	//Jeden z cz³onków naszej kompanii, Jorik, zagin¹³. S¹dzimy, ¿e mo¿e byæ gdzieœ w kanionie. Rat w³aœnie go szuka. Do zobaczenia przy ognisku.
	
		Info_AddChoice (DIA_ORG_819_Drax_After_Hunting, "Jak wygl¹da ten ca³y Ratford?", DIA_ORG_819_Drax_Hello_About_Ratford);
		Info_AddChoice (DIA_ORG_819_Drax_After_Hunting, "Co siê sta³o z tym Jorikiem?", DIA_ORG_819_Drax_After_Hunting_About_Jorik);
		Info_AddChoice (DIA_ORG_819_Drax_After_Hunting, "Twój gang pewnie dowodzi tym Nowym Obozem, o którym wspomina³eœ?", DIA_ORG_819_Drax_After_Hunting_About_Crew);
		Info_AddChoice (DIA_ORG_819_Drax_After_Hunting, "„Kompanii”?", DIA_ORG_819_Drax_Hello_About_Company);
	};
	
	// DAMIANUT-OPT-TODO: Raz uda³o mi siê odtworzyæ ten dialog. Zapisujê tu na wypadek, gdybym ustali³, jak to zrobiæ.
	if (false)
	{
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-57366");	//Przykro mi, przyjacielu, ale dokona³eœ wyboru. Powodzenia.
	};
};

//„Kompanii”?
func void DIA_ORG_819_Drax_Hello_About_Company()
{
	AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-91969-0");	//„Kompanii”?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-9536-0");		//Tak, naszego gangu. Czerwoni nazywaj¹ nas bandytami, ale to niesprawiedliwa opinia. Jesteœmy czymœ wiêcej. 
};

//Twój gang pewnie dowodzi tym Nowym Obozem, o którym wspomina³eœ?
func void DIA_ORG_819_Drax_After_Hunting_About_Crew()
{
	AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-86916-0");	//Twój gang pewnie dowodzi tym Nowym Obozem, o którym wspomina³eœ?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-45745-0");	//„Dowodzi” to nie jest w³aœciwe s³owo. Jasne, mamy swoje kliki i tak dalej, ale nie ma ustalonych zasad czy sztywnej, jak to siê mówi, hierarchii. 
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-77367-0");	//Ale pogadamy o tym, kiedy ju¿ nabijê tego œcierwojada na ruszt i upiekê go na wolnym ogniu.
};

//Co siê sta³o z tym Jorikiem?
func void DIA_ORG_819_Drax_After_Hunting_About_Jorik()
{
	AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-96179-0");	//Co siê sta³o z tym Jorikiem? 
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-63260-0");	//Tego w³aœnie chcemy siê dowiedzieæ. Facet po prostu wzi¹³, gdzieœ poszed³ i tyleœmy go widzieli.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-56611-0");	//Ktoœ widzia³, jak siê wspina³ po zboczach kanionu w okolicy, ale nic poza tym.
};

//Jak wygl¹da ten ca³y Ratford?
func void DIA_ORG_819_Drax_Hello_About_Ratford()
{
	Drax_HowLooksThisRatford = true;

	AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-29676-0");	//Jak wygl¹da ten ca³y Ratford?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-46680-2");	//Mojej postury, czarne w³osy, krzaczaste w¹sy. Nosi taki sam pancerz jak ja, wiêc powinno go byæ ³atwo wypatrzyæ. 
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-94407-0");	//ZnajdŸ Jorika i wróæcie tutaj. Do tego czasu rozpalê ogieñ i przygotujê kolacjê. A tak przy okazji... Jestem Drax.

	AI_StopProcessInfos	(self);
};

// -> DAMIANUT-TODO jak zaatakuje siê œcierwojady przed pierwsz¹ rozmow¹ z Draxem, to chce zabiæ
