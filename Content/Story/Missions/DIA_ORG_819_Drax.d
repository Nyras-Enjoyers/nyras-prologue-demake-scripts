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

	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-89011");	//Chwileczk�. To ciebie w�a�nie do nas wrzucili, prawda? Nie musisz nic m�wi�, ju� wiem.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-20861"); 	//Masz wypisane na g�bie pytanie: �W co ja si�, kurwa, wpakowa�em?�
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-10911");	//Pewnie ju� wiesz, �e tu utkn�li�my?
	
	// If already found Jorik 
	if (MIS_CH0_FindJorik == LOG_SUCCESS)
	{
		// By odpali� si� `DIA_ORG_819_Drax_Lets_Hunt`.
		Drax_HuntingYes = true;

		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-9657");	//Tak, jestem tu nowy, ale przysy�a mnie tw�j kumpel, Ratford.
		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-46836");	//Powiedzia�, �e mog� u was przenocowa�, ale kaza� pom�c w polowaniu.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-58516");	//Rat? I co? Znalaz� Jorika?
		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-8890");	//Tak, nie �yje.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-97866");	//Rozumiem. Szkoda, ale jako� mnie to nie dziwi.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-26302");	//Czyli chcesz mi pom�c w polowaniu... Mi�o z twojej strony. Dobra, czemu nie. Do dzie�a.
	} 

	else
	{
		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-43176");	//Tak, szukam bezpiecznego miejsca na nocleg. Podobno �azi tu jaki� cieniostw�r.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-70619");	//To prawda. Te� go widzieli�my. Wielki skurwysyn.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-49351");	//Co powiesz na uk�ad? Pomo�esz mi upolowa� to stado �cierwojad�w, a my podzielimy si� z tob� jad�em i b�dziesz m�g� si� przespa� przy naszym ognisku.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-43533");	//Jest w starym obozie g�rniczym naprzeciwko zalanej kopalni. Nie�le os�oni�te miejsce. Co ty na to?
	
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Nie jestem zainteresowany.", DIA_ORG_819_Drax_Hello_No);
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "A ty co z tego masz? Spokojnie da�by� rad� tym �cierwojadom w pojedynk�.", DIA_ORG_819_Drax_Hello_You_Could_Do_It_Yourself);
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Sk�d mam wiedzie�, �e to nie pu�apka?", DIA_ORG_819_Drax_Hello_Maybe_Its_A_Trap);
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Nie brzmisz, jakby� by� z Khorinis.", DIA_ORG_819_Drax_Hello_You_Are_Not_From_Khorinis);
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "�Naszym� ognisku?", DIA_ORG_819_Drax_Hello_About_Fire);
	};
};

//�Naszym� ognisku?
func void DIA_ORG_819_Drax_Hello_About_Fire()
{
	ORG_819_Drax_Hello_About_Fire = true;

	AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-47782");	//�Naszym� ognisku?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-87244");	//Taa, jest moje i moich ziomk�w.
};

//Nie brzmisz, jakby� by� z Khorinis.
func void DIA_ORG_819_Drax_Hello_You_Are_Not_From_Khorinis()
{
	ORG_819_Drax_Hello_You_Are_Not_From_Khorinis = true;

	AI_Output	(hero, self, "Drax-CH0-None-Hero-72487");	//Nie brzmisz, jakby� by� z Khorinis.  
	AI_Output	(self, hero, "Drax-CH0-None-Drax-86382");	//Ty te� nie.
	AI_Output	(hero, self, "Drax-CH0-None-Hero-57725");	//To sk�d jeste�? Krainy Centralne?
	AI_Output	(self, hero, "Drax-CH0-None-Drax-47752");	//Mo�e tak, mo�e nie. 
};

//Sk�d mam wiedzie�, �e to nie pu�apka?
func void DIA_ORG_819_Drax_Hello_Maybe_Its_A_Trap()
{
	ORG_819_Drax_Hello_Maybe_Its_A_Trap = true;

	AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-80576");	//Sk�d mam wiedzie�, �e to nie pu�apka? 
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-27434");	//A wygl�dam ci na z�ego z�oczy�c�, kt�ry chce ograbi� biedn� �wie�ynk� z ca�ego nieistniej�cego dobytku?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-91704");	//Bez urazy, przyjacielu, ale gdybym mia� z tob� problem, ju� by� nie �y�. 
};

//A ty co z tego masz? Spokojnie da�by� rad� tym �cierwojadom w pojedynk�.
func void DIA_ORG_819_Drax_Hello_You_Could_Do_It_Yourself()
{
	AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-61662-0");	//A ty co z tego masz? Spokojnie da�by� rad� tym �cierwojadom w pojedynk�.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-66721");	//Ale� ty ostro�ny. To dobrze! Po pierwsze: pami�tam, jak sam zosta�em tu wrzucony i wszyscy pr�bowali mnie or�n�� albo zabi�.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-59742");	//Po drugie: je�li si� oka�e, �e jeste� cho� ODROBIN� mniej bezu�yteczny ni� przeci�tna �wie�ynka, mog� ci doradzi�, �eby� ola� to, co pewnie nagada� ci Diego, i spr�bowa� do��czy� do NASZEGO obozu � Nowego Obozu.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-43603");	//Przynajmniej z nami nie b�dziesz musia� do ko�ca �ycia w�azi� w dup� Gomezowi.
	
	Info_ClearChoices 	(DIA_ORG_819_Drax_Hello);
	Info_AddChoice 		(DIA_ORG_819_Drax_Hello, "Nie jestem zainteresowany.", DIA_ORG_819_Drax_Hello_No);
	Info_AddChoice 		(DIA_ORG_819_Drax_Hello, "Umowa stoi. Jaki jest plan?", DIA_ORG_819_Drax_Hello_About_Plan);
	Info_AddChoice 		(DIA_ORG_819_Drax_Hello, "A ten wasz gang ma przyw�dc�?", DIA_ORG_819_Drax_Hello_About_Leader);

	if (ORG_819_Drax_Hello_Maybe_Its_A_Trap == false)
	{
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Sk�d mam wiedzie�, �e to nie pu�apka?", DIA_ORG_819_Drax_Hello_Maybe_Its_A_Trap);
	};

	if (ORG_819_Drax_Hello_You_Are_Not_From_Khorinis == false)
	{
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "Nie brzmisz, jakby� by� z Khorinis.", DIA_ORG_819_Drax_Hello_You_Are_Not_From_Khorinis);
	};
	
	if (ORG_819_Drax_Hello_About_Fire == false)
	{
		Info_AddChoice (DIA_ORG_819_Drax_Hello, "�Naszym� ognisku?", DIA_ORG_819_Drax_Hello_About_Fire);
	};
};

	//A ten wasz gang ma przyw�dc�?
	func void DIA_ORG_819_Drax_Hello_About_Leader()
	{
		AI_Output	(hero, self, "TEXT_DAVID_20230811_170556_41");	//A ten wasz gang ma przyw�dc�?
		AI_Output	(self, hero, "TEXT_DAVID_20230811_170615");		//Ma � Laresa. Ale powtarzam: to nie jest taki uk�ad jak w Starym Obozie. Dowodzi, bo najlepiej nadaje si� do tej roboty, i tyle. Kiedy to si� zmieni, ust�pi miejsca komu� lepszemu.
	};

	//Umowa stoi. Jaki jest plan?
	func void DIA_ORG_819_Drax_Hello_About_Plan()
	{
		Drax_HuntingYes = true;

		Info_ClearChoices (DIA_ORG_819_Drax_Hello);

		AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-66022");	//Umowa stoi. Jaki jest plan?
		AI_Output	(self, hero, "TEXT_DAVID_20230811_170008");				//Nie potrzebujemy planu. Te ptaszyska s� g�upie jak but, wi�c po prostu wpadasz i je zabijasz.
		AI_Output	(self, hero, "TEXT_DAVID_20230811_170018");				//Tylko nie daj si� otoczy�. Daj zna�, jak b�dziesz gotowy. Wtedy wyruszymy.
	};

//Nie jestem zainteresowany.
func void DIA_ORG_819_Drax_Hello_No()
{
	Drax_IHaveNoTimeForThat = true;

	AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-34325");	//Nie jestem zainteresowany.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-97644-2");	//Nie przepadasz za towarzystwem, co? G�upie podej�cie, ale jak sobie chcesz. Tylko trzymaj si� z daleka od moich �cierwojad�w, bo mog� ci� z kt�rym� pomyli�.

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
	AI_Output	(self, hero, "Drax-CH0-None-Drax-27879");				//I to w�a�nie chcia�em us�ysze�. Bro� masz?

	if (Npc_HasEquippedMeleeWeapon (hero)) || (Npc_HasEquippedRangedWeapon (hero)) 
	{
		Drax_HeroWeaponCheck = true;

		AI_Output	(hero, self, "Drax-CH0-None-Hero-90162");	//Tak.
		AI_Output	(self, hero, "Drax-CH0-None-Drax-91362");	//Dobrze. No to chod� za mn�.
	}

	else
	{
		Drax_HeroNoWeapon = true;

		AI_Output	(hero, self, "Drax-CH0-None-Hero-54250");	//Nie.
		AI_Output	(self, hero, "Drax-CH0-None-Drax-3588-0");	//Jaja sobie robisz? To we� jak�� znajd�. Mog� zaczeka� jeszcze par� minut. 
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
	description 	= "Mo�e za chwil�.";
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
	AI_Output	(hero, self, "Kirgo-CH0-G1RDemo_KirgoFight-Hero-79373");	//Mo�e za chwil�.
	AI_Output	(self, hero, "Drax-CH0-None-Drax-3588-1");					//Dobrze, mog� chwil� poczeka�.

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

			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-50312");		//Zapomnij o �cierwojadach.
			AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-62484");		//Dlaczego?
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-43473");		//Bo kto� je ukatrupi�, kiedy nie patrzy�em. Jestem PEWIEN, �e to nie by�e� ty.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-95185");		//Dobra, chuj z tym. Wracam do obozu. Na kolacj� b�dzie suszone mi�so...
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-78430");		//Chod�my.
		} 

		else
		{
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-18631");		//Ha! Niez�a zdobycz.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-16681");		//Mia�em zamiar wypatroszy� je tutaj, ale skoro Rat jest ju� w obozie, nie tra�my wi�cej czasu. Spotkamy si� na miejscu, m�ody! Dobra robota.
		};
		
		AI_StopProcessInfos(self);
	} 

	else if (MIS_CH0_FindJorik == LOG_RUNNING)
	{
		if (Drax_HeroStartedFightAlone == true)
		{
			Drax_FailedMissionKilledAloneAfterJorik = true;
			
			Drax_RefusedCamp = true;

			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-50312");		//Zapomnij o �cierwojadach.
			AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-62484");		//Dlaczego?
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-43473");		//Bo kto� je ukatrupi�, kiedy nie patrzy�em. Jestem PEWIEN, �e to nie by�e� ty.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-95185");		//Dobra, chuj z tym. Wracam do obozu. Na kolacj� b�dzie suszone mi�so...
			AI_Output	(hero, self, "Drax-CH0-G1RDemo_DraxHunt-Hero-1376");		//Ale co z nasz� umow�? Ci�gle potrzebuj� noclegu.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-70710");		//Taa... Wsp�czuj�, naprawd�. Niestety, nic w �yciu nie ma za darmo.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-40881");		//Rozejrzyj si� po okolicy. Na pewno sobie co� znajdziesz.	
		} 

		else
		{
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-18631");		//Ha! Niez�a zdobycz.
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-16681");		//Mia�em zamiar wypatroszy� je tutaj, ale skoro Rat jest ju� w obozie, nie tra�my wi�cej czasu. Spotkamy si� na miejscu, m�ody! Dobra robota.
		};
		
		AI_StopProcessInfos(self);
	} 

	else
	{
		if (Drax_HeroStartedFightAlone == true)
		{
			AI_Output    (self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-80360");    //Nie jeste� z tych, kt�rzy lubi� planowa�, co? Niewa�ne. Mamy skuba�ce. Wiesz, jak si� je patroszy?
		} 

		else
		{
			AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-55131");		//Dobra robota! Nawet niez�a ta zdobycz. S�uchaj, wiesz, jak si� je patroszy? 
		};

		AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-55641-0");	//Eee, no c�...
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-59799-0");	//Niewa�ne, poradz� sobie. Skoro ju� tu jeste�, to mo�e m�g�by� znale�� mojego druha Ratforda i sprawdzi�, czy nie potrzebuje pomocy.
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-21285-0");	//Jeden z cz�onk�w naszej kompanii, Jorik, zagin��. S�dzimy, �e mo�e by� gdzie� w kanionie. Rat w�a�nie go szuka. Do zobaczenia przy ognisku.
	
		Info_AddChoice (DIA_ORG_819_Drax_After_Hunting, "Jak wygl�da ten ca�y Ratford?", DIA_ORG_819_Drax_Hello_About_Ratford);
		Info_AddChoice (DIA_ORG_819_Drax_After_Hunting, "Co si� sta�o z tym Jorikiem?", DIA_ORG_819_Drax_After_Hunting_About_Jorik);
		Info_AddChoice (DIA_ORG_819_Drax_After_Hunting, "Tw�j gang pewnie dowodzi tym Nowym Obozem, o kt�rym wspomina�e�?", DIA_ORG_819_Drax_After_Hunting_About_Crew);
		Info_AddChoice (DIA_ORG_819_Drax_After_Hunting, "�Kompanii�?", DIA_ORG_819_Drax_Hello_About_Company);
	};
	
	// DAMIANUT-OPT-TODO: Raz uda�o mi si� odtworzy� ten dialog. Zapisuj� tu na wypadek, gdybym ustali�, jak to zrobi�.
	if (false)
	{
		AI_Output	(self, hero, "Drax-CH0-G1RDemo_DraxHunt-Drax-57366");	//Przykro mi, przyjacielu, ale dokona�e� wyboru. Powodzenia.
	};
};

//�Kompanii�?
func void DIA_ORG_819_Drax_Hello_About_Company()
{
	AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-91969-0");	//�Kompanii�?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-9536-0");		//Tak, naszego gangu. Czerwoni nazywaj� nas bandytami, ale to niesprawiedliwa opinia. Jeste�my czym� wi�cej. 
};

//Tw�j gang pewnie dowodzi tym Nowym Obozem, o kt�rym wspomina�e�?
func void DIA_ORG_819_Drax_After_Hunting_About_Crew()
{
	AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-86916-0");	//Tw�j gang pewnie dowodzi tym Nowym Obozem, o kt�rym wspomina�e�?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-45745-0");	//�Dowodzi� to nie jest w�a�ciwe s�owo. Jasne, mamy swoje kliki i tak dalej, ale nie ma ustalonych zasad czy sztywnej, jak to si� m�wi, hierarchii. 
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-77367-0");	//Ale pogadamy o tym, kiedy ju� nabij� tego �cierwojada na ruszt i upiek� go na wolnym ogniu.
};

//Co si� sta�o z tym Jorikiem?
func void DIA_ORG_819_Drax_After_Hunting_About_Jorik()
{
	AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-96179-0");	//Co si� sta�o z tym Jorikiem? 
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-63260-0");	//Tego w�a�nie chcemy si� dowiedzie�. Facet po prostu wzi��, gdzie� poszed� i tyle�my go widzieli.
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-56611-0");	//Kto� widzia�, jak si� wspina� po zboczach kanionu w okolicy, ale nic poza tym.
};

//Jak wygl�da ten ca�y Ratford?
func void DIA_ORG_819_Drax_Hello_About_Ratford()
{
	Drax_HowLooksThisRatford = true;

	AI_Output	(hero, self, "Drax-CH0-G1RDemo_FindJorik-Hero-29676-0");	//Jak wygl�da ten ca�y Ratford?
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-46680-2");	//Mojej postury, czarne w�osy, krzaczaste w�sy. Nosi taki sam pancerz jak ja, wi�c powinno go by� �atwo wypatrzy�. 
	AI_Output	(self, hero, "Drax-CH0-G1RDemo_FindJorik-Drax-94407-0");	//Znajd� Jorika i wr��cie tutaj. Do tego czasu rozpal� ogie� i przygotuj� kolacj�. A tak przy okazji... Jestem Drax.

	AI_StopProcessInfos	(self);
};

// -> DAMIANUT-TODO jak zaatakuje si� �cierwojady przed pierwsz� rozmow� z Draxem, to chce zabi�
