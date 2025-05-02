// **********************************************
// Standard	Voice Module
// **********************************************

// Diese Klasse	kann beliebig von den Skriptern	erweitert um
// "var string xxxx" erweitert werden, diese k�nnen	dann in	den
// einzelnen SVM - Instanzen initialisiert werden.


class C_SVM
{
// SC hat Waffe oder Magie gezogen oder zielt auf NSC
	var string	StopMagic;					// NSC  sieht wie in seiner N�he gezaubert wird -> er fordert auf, damit aufzuh�ren!
	var string	ISaidStopMagic;				// NSC hat bereits mit $StopMagic gewarnt und greift nun an	(nachdem er	diesen Satz	gesagt hat;	WICHTIG: dies ist KEINE	letzte Warnung,	sonder sofort Angriff!)

	var string	WeaponDown				;	//ZS_AssessFighter: SC steht mit gezogener Waffe vor NSC -> NSC ist NEUTRAL zu SC	-> (herausfordernd,	bei	P�nten-Stimme etwas	unsicher, trotzdem kernig)
	var string	ISaidWeaponDown			;	//Kommt nachdem der SC $WeaponDown ignoriert hat!

	var string	WatchYourAim;				// ein FRIENDLY-SC zielt mit einer Fernkampfwaffe auf den NSC .	'Pa� auf! Ziel woanders	hin!' B_Orc_AssessThreat hat das auch noch
	var string	WatchYourAimAngry		;	// SC zielt mit einer Fernkampfwaffe auf den Angry-NSC. (genervte Auffordern, damit	aufzuh�ren)
	var string	WhatAreYouDoing;			// NSC wird von einem FRIENDLY-SC/NSC geschlagen

// SC hat Waffe weggesteckt, NSC beendet Kampf
	var string	LetsForgetOurLittleFight;	//Friede, kann direkt kommen ( Wenn freundliche k�mpfen und der Spieler die Waffe wegsteckt) oder als Reaction �ber das news-Ged�chtnis, sollte daher Zeitneutral sein (--> nicht wie jetzt lass uns den Streit von letztens vergessen

// NSC hat Gegner aus den Augen verloren
	var string	Strange			;			// 1. NSC wird attackiert -> rennt mit gezogener Waffe zum Angreifer ->	kann ihn pl�tzlich nicht mehr entdecken	-> (muttering to himself)
											// 2. NSC sieht	einen Mord -> rennt	mit	gezogener Waffe	zum	M�rder -> kann ihn pl�tzlich nicht mehr	entdecken

// NSC greift an!
	var string	DieMonster				;	// NSC greift Monster an -> "Aus dir mach ich Gulasch, Drecksvieh!"
	var string	DieMOrtalEnemy;				// Der Nsc greift an, da er durch die Story permanent Hostile ist, d.h. die Lager sind in Blutfehde

	var string	NowWait;					// NSC hat den SC fr�her noch NICHT besiegt -> SC greift den NSC an -> "Na warte!"
	var string	YouStillNotHaveEnough	;	// NSC hat den SC fr�her besiegt ->	SC greift den NSC an -> "Hast du immer noch nicht genug?!"

	var	string	YouAskedForIt			;	// 1. SC hat eine Aufforderung ignoriert: den Raum zu verlassen, ein Item zur�ckzugeben, seine Waffe wegzustecken -> "Wer nicht h�ren will mu� f�hlen..."
	var string	NowWaitIntruder			;	// SC hat einen bewachten Durchgang durchbrochen...

	var	string	IWillTeachYouRespectForForeignProperty;	// 1. SC benutzt ein Besitz-Mob(T�r,Fallgitter-Drehkreuz,Kiste,...) und	wird ohne Vorwarnung attackiert
											// 2. SC tr�gt Waffe des NSCs -> NSC ist st�rker und holt sie sich mit Gewalt wieder ->	vorher dieser Spruch

	var string	DirtyThief;					// 1. NSC ertappt den (schw�cheren)	SC mit den Fingern in den eigenen Taschen
											// 2. NSC sieht	wie	der	(schw�chere) SC	etwas nimmt, da� ihm geh�rt	(z.B. Waffe	auf	den	Tisch)
											// 3. NSC sieht	feindlichen, schw�cheren SC, der ihn vorher	mal	beklaut	hat	und	sagt ihm diesen	Spruch,	bevor er angreift "Da hab ich Dich also	wieder,	Du dreckiger Dieb"
											// 4. Nsc ist in einen Raum eingedrungen

	var string	YouAttackedMyCharge		;	// SC/NSC greift einen Sch�tzling einer NSC-Wache an -> Wache attackiert den Angreifer danach
	var string	YouKilledOneOfUs;			// NSC erblickt feindlichen SC, der einen Freund des NSCs get�tet hat -> Angriff!

// im Kampf
	var string	Dead			;			// T�dlich verletzt
	var string	Aargh_1			;			// Treffer kassiert im Kampf	
	var string	Aargh_2			;			// Treffer kassiert im Kampf	
	var string	Aargh_3			;			// Treffer kassiert im Kampf	

	var string	Berzerk			;			// Wahnsinnsschrei im Zustand der Raserei!

// SC hat NSC niedergeschlagen oder bedroht
	var string	YoullBeSorryForThis;		// NSC wurde durch SC/aNSC besiegt und wacht aus der Ohnmacht wieder auf: 'Das wird	Dir	noch leidtun!'

	var string	YesYes			;			// 1. NSC wurde	im Kampf besiegt ->	erwacht	wieder ist aber	sch�cher als sein Kontrahent
											// 2. SC zieht Waffe oder n�hert sich mit Waffe und NSC ist schw�cher als SC
// NSC flieht
	var string	ShitWhatAMonster		;	// NSC flieht vor zu starkem Monster -> "Schei�e, was ein H�llenvieh. Nichts wie weg!"
	var string	Help;						// NSC flieht vor Gegner, Babe Nsc flieht vor Spieler, Orcs haben das auch
	var	STRING	WeWillMeetAgain;			// NSC flieht vor Gegner, ist aber eigentlich St�rker als er, ist aber trotzdem besiegt worden

// SC wurde von NSC besiegt und wird gepl�ndert
	var string	NeverTryThatAgain	;		// NSC hat Gegner besiegt -> ("Versuch das NIE wieder!!")
	var string	ITakeYourWeapon;			// NSC pl�ndert bewu�tlosen SC/aNSC. W�hrend er sich b�ckt, um nach der vom Besiegten fallengelassenen Waffe zu greifen sagt er diesen Spruch.
	var string	ITookYourOre	;			// NSC pl�ndert bewu�tlosen SC/aNSC. Nachdem er sich einen Teil des Erzes genommen hat, sagt er diesen Spruch.
	var string	ShitNoOre		;			// NSC �rgert sich dar�ber, da� er beim Durchsuchen eines bewu�tlosen/toten K�rpers kein Erz gefunden hat!

// NSC verwarnt SC
	var string	HandsOff;					// SC manipuliert ein MOB (Drehkreuz, Truhe, T�r) und ein befreundeter bzw. gildengleicher NSC sieht das...
	var string	GetOutOfHere		;		// NSC erwischt	schw�cheren	SC in seiner H�tte -> ("Raus hier")	(SC	soll aus Raum gehen)
	var	string	YouViolatedForbiddenTerritory		;	// SC wird beim Betreten eines verbotenen Portalraums erwischt -> Warnung!

	var	STRING	YouWannaFoolMe;				// SC schnappt NSC ein Item vor der Nase weg und wird mit $GiveItToMe aufgefordert es zur�ckzugeben -> SC gibt ein falsches Item an den NSC -> 'Willst Du mich verarschen'

	var string	WhatsThisSupposedToBe	;	// 1. SC schleicht vor den Augen des NSCs -> "Was schleichst Du	hier rum?" (besser als "Was	soll das denn werden", weil	besseres Feedback!)
											// 2. SC bewegt	sich hinter	einer Wache	-> diese dreht sich	um und sagt	dann
	var string	WhyAreYouInHere			;	//im ZS_ClearRoom / SC steht in verbotenem Portalraum	-> schw�cherer NSC fragt
	var string	WhatDidYouInThere		;	// Wache sieht Sc aus einer H�tte rauskommen und verwarnt ihn, ohne das ein Angriff folgt

	var string	WiseMove;					// 1. NSC wurde	gewarnt, seine Waffe wegzustecken ($RemoveYourWeapon) -> SC	befolgt	dies und steckt	die	Waffe weg
											// 2. SC steht in verbotenem Raum und wird mit $GetOutOfHere aufgefordert, rauszugehen -> SC befolgt die Aufforderung
											// 3. SC hat NSC ein Item vor der Nase weggeschnappt und wurde mit $GiveItToMe aufgefordert	es zur�ckzugeben ->	SC gehorcht

// NSC alarmiert/warnt andere NSCs vor SC
	var string	Alarm;						// Wache alarmiert die Sichtung	eines permanent	HOSTILE	SC/aNSC	"Alaaaaaaarm!!!!!"
											// Nicht Wache sieht wie ein Portalraum betreten wird, der einer Gilde zugeordnet ist und ruft die Wachen
											// Gem�se (NpcWorker) ruft Wachen nach einem Diebstahl/beobachteten Diebstahl etc.
	var string	IntruderAlert;				// SC hat einen bewachten Durchgang durchbrochen und die Wache alarmiert alle umstehenden
	var string	BehindYou;					// NSC sieht, wie ein anderer NSC vom SC bestohlen wird	und	warnt das Opfer

// NSC beobachtet Kampf
	var	string	TheresAFight	;			// NSC entdeckt	einen Kampf	und	will zuschauen (ZS_WatchFight) -> vorher ein Spruch	wie	"Hey da	dr�ben gibt's einen	Kampf"
	var string	HeyHeyHey;					// Hintergrund anfeuern	beim Beobachten	eines Kampfes: 'Hau	ihm	aufs Maul!'	(kommt alle	paar Sekunden!)
	var string	CheerFight;					// NSC ist im Zustand WatchFight: Neutraler	K�mpfer	schl�gt irgendeinen Typen. '5 Erz auf den Dicken'
	var string	CheerFriend;				// NSC ist im Zustand WatchFight: Freund landet	einen Treffer. 'Immer in die Fresse!'
	var string	Ooh;						// NSC ist im Zustand WatchFight: Freund kriegt	aufs Maul. 'Mist - das tat weh.'
	var	STRING	YeahWellDone;				// NSC sieht, wie SC/aNSC, zu dem er ANGRY/HOSTILE ist get�tet wird. 'Gut gemacht, das hat sie Sau verdient.'

// NSC-Gegner flieht
	var string	RunCoward;					// 1. Der NSC befindet sich	im Zustand WatchFight -> einer der K�mpfer haut	ab
											// 2. Der Gegner des NSCs flieht
	var	string	HeDefeatedHim	;			// NSC sieht wie ein SC/aNSC einen anderen aNSC/SC besiegt 	(WICHTIG: dies ist der normale Ausgang!)
	var	string	HeDeservedIt	;			// NSC sieht wie ein SC/aNSC, zu dem er	ANGRY/HOSTILE steht, besiegt wird -> ("DAS hat er verdient!")
	var	string	HeKilledHim		;			// NSC sieht wie ein SC/aNSC einen anderen aNSC/SC t�tet	(WICHTIG: dies ist ein Skandal, niemand wird normalerweise	in einer "Schl�gerei" get�tet)
	var	string	ItWasAGoodFight	;			// NSC sieht wie ein FRIENDLY/NEUTRAL-SC/aNSC einen	anderen	besiegt

	var string	Awake			;			// NSC wacht aus dem Zustand Sleep wieder auf (Aufwachen, r�keln)

// Gr��e
	var string	FriendlyGreetings;			// 1. Am Anfang	eines Dialoges, wenn NSC FRIENDLY/NEUTRAL zum SC,  2. Wenn sie sich unterwegs begegnen.
	var string	ALGreetings;				// 1. Am Anfang	eines Dialoges, wenn NSC und SC aus Altem Lager und FRIENDLY/NEUTRAL ('F�r Gomez'), 2. Wenn sie sich unterwegs begegnen.
	var	STRING	MageGreetings;				// 1. Am Anfang	eines Dialoges, wenn NSC und SC beide Magier und FRIENDLY/NEUTRAL, 2. Wenn sie sich unterwegs begegnen.
	var string	SectGreetings;				// 1. Am Anfang	eines Dialoges, wenn NSC aus Psi-Camp und FRIENDLY/NEUTRAL	zum	SC ('Erwache. Der Schl�fer erwache.') 2. Wenn sie sich unterwegs begegnen.

	var string	ThereHeIs;					// NSC zeigt SC wo ein anderer NSC steht nach dem der SC gefragt hat: "Da dr�ben ist er"

// Lehrer-Kommentare
	var string	NoLearnNoPoints			;	// NSC-Lehrer verbietet Steigerung - keine Lernpunkte!
	var string	NoLearnOverMax			;	// NSC-Lehrer verbietet Attribut-Steigerung �ber 100
	var string	NoLearnYouAlreadyKnow	;	// Du mu�t erst Fortgeschritten sein, bevor du ein Meister werden kannst!
	var string	NoLearnYoureBetter		;	// Du bist jetzt schon besser!

// NSC spricht SC an
	var string	HeyYou;						// z.B. Wache, die den SC im R�umen erwischt, wo er nicht hin darf sagt HeyYou, und geht dann zum SC

// NSC will nicht reden
	var string	NotNow;						// NSC / Babe wird vom SC angesprochen,	lehnt aber ein Gespr�ch	ab.

// SC zu nah
	var string	WhatDoYouWant;				// SC r�ckt NSC zu dicht auf die Pelle -> "Kann ich was f�r Dich tun?"
	var string	ISaidWhatDoYouWant;			// NSC hat $WhatDoYouWant gesagt, aber der SC hat nicht reagiert -> "Was willst Du?"
// SC im Weg
	var string	MakeWay;					// SC steht	schw�cherem NSC im Weg	-> Aufforderung, Platz zu	machen
	var string	OutOfMyWay;					// SC steht st�rkerem NSC (Magier, Erzbaron) im Weg -> aggressive Aufforderung, Platz zu machen
	var string	YouDeafOrWhat;				// SC folgt	nicht der Aufforderung des st�rkeren NSCs	-> letzte Warnung, danach Angriff

// SC spricht NSC an, der ihn besiegt hat
	var string	LookingForTroubleAgain;		//Erster Satz eines Dialoges, nachdem der NSC und der SC gek�mpft haben (entweder wurde der SC besiegt oder es gab keinen klaren Ausgang des Kampfes)

// NSC ist schw�cher...
	var string	LookAway;					// Eingesch�chterter NSC guckt weg bei bedrohlichen Situationen
	var string	OkayKeepIt;					// SC tr�gt	Waffe des sch�cheren NSCs -> NSCs verlangt die Waffe zur�ck	($GiveItToMe) -> SC	bedroht	NSC	-> ("Okay, okay, du	kannst das Ding	behalten..." zur�ckweichen)
	var string	WhatsThat;					// Verwandelter SC wird vor den Augen des NSCs wieder zum Menschen (Erschreckter Ausruf) Nsc wird aus dem MagicSleep wieder wach und wundert sich...

	var string	ThatsMyWeapon;				// SC tr�gt	eine Waffe,	die	dem	NSC	geh�rt -> Folge: ZS_GetBackBelongings
	var string	GiveItToMe;					// 1. SC tr�gt Waffe des NSCs -> NSC ist schw�cher (also kein Kampf) ->	"Gib sie mir wieder"
	var string	YouCanKeeptheCrap;			// 1. SC tr�gt Waffe des schw�cheren NSCs ->	NSCs verlangt die Waffe	zur�ck ($GiveItToMe) ->	SC geht	einfach	weg	-> ("Behalt	das	Schei�-Ding	doch!)
											// 2. NSC will ein Item	aufheben und wird von einem	st�rkeren NSC gewarnt, der das auch	tun	will ->	unser NSC weicht zur�ck

	var string	TheyKilledMyFriend;			// NSC T�ter - NSC zu Opfer freundlich, zu T�ter freundlich oder neutral

	var	string	YouDisturbedMySlumber;		// NSC wurde vom SC	mittelsanft	aus	dem	Schlaf gerissen	(z.B. durch	Ansprechen)

// Angry NSCs kommentieren SC-Aktionen
	var string	SuckerGotSome;				// Angry NSC hat geh�rt, da� der SC umgehauen wurde. "Das Dich jemand umgehauen hat, geschieht Dir Recht!"

	var string	SuckerDefeatedEBr;			// Du hast einen	EBR	besiegt. Er war wirklich beeindruckt!
	var string	SuckerDefeatedGur;			// Du hast einen	GUR	niedergeschlagen,	Du bist	ein	toter Mann
	var string	SuckerDefeatedMage;			// (News) - im Stil von SuckerDefeatedXY

	var string	SuckerDefeatedNOV_Guard;	// Der Spieler hat einen Novizen umgehauen, Templer spricht den Spieler an, Templer ist ANGRY zu Spieler
	var string	SuckerDefeatedVLK_Guard;	// Der Spieler hat einen Sch�tzling der Wache niedergeschlagen
	var string	YouDefeatedMyComrade;		// Wache stellt fest, das sie gesehen/geh�rt hat, da� ich eine andere Wache umgehauen habe
	var string	YouDefeatedNOV_Guard;		// Der Spieler hat einen Novizen umgehauen, Templer spricht den Spieler an, Templer ist NEUTRAL/FRIENDLY zu Spieler
	var string	YouDefeatedVLK_Guard;		// Der Spieler hat einen Buddler umgehauen, Wache spricht den Spieler an, Wache ist NEUTRAL/FRIENDLY zu Spieler
	var string	YouStoleFromMe;				// Du Sau hast mich beklaut

//Wichtige Person (Lehrer, Auftraggeber?), hat davon geh�rt, da� Du Mist gebaut hat...
// FIXME: damit das so benutzt werden kann m�ssen noch Anpassungen in der B_ReactToMemory.d gemacht werden
	var string	YouStoleFromUs;				// eigene oder befreundete Gilde beklaut.
	var string	YouStoleFromEBr;			// Erzbarone beklaut.
	var string	YouStoleFromGur;			// Gurus beklaut.
	var string	StoleFromMage;				// Magier beklaut.

	var string	YouKilledMyFriend;			// jemand aus eigener oder befreundeter Gilde get�tet
	var	STRING	YouKilledEBr;				// Erzbaron get�tet
	var string	YouKilledGur;				// Guru get�tet
	var string	YouKilledMage;				// Guru get�tet

	var string	YouKilledOCfolk;			// Gardist, Schatten oder Buddler get�tet.
	var string	YouKilledNCfolk;			// S�ldner, Organisator, Sch�rfer oder Bauer get�tet
	var string	YouKilledPSIfolk;			// Templer oder Novize get�tet

	var string	GetThingsRight;				//SC hat Mist gebaut. NSC sagt, "Das wieder hinzubiegen wird nicht einfach!"

	var string	YouDefeatedMeWell;			//Zu SC	freundlich/neutral:	Du hast	mich ganz sch�n	gepl�ttet

// Ambient-Unterhaltungen zwischen zwei NSCs (gemurmelte Wortfetzen, die zuf�llig zu "Dialogen" zusammengew�rfelt werden...
	var string	Smalltalk01;				// ...wenn Du meinst...
	var string	Smalltalk02;				// ...kann schon sein...
	var string	Smalltalk03;				// ...war nicht besonders schlau....
	var string	Smalltalk04;				// ...ich halt mich da lieber raus...
	var string	Smalltalk05;				// ...das ist wirklich nicht mein Problem...
	var string	Smalltalk06;				// ...war doch klar, da� das �rger gibt...
	var string	Smalltalk07;				// ...aber behalt's f�r Dich, mu� nicht gleich jeder wissen...
	var string	Smalltalk08;				// ...das passiert mir nicht nochmal...
	var string	Smalltalk09;				// ...an der Gechichte mu� wohl doch was dran sein...
	var string	Smalltalk10;				// ...man mu� eben aufpassen was man rumerz�hlt...
	var string	Smalltalk11;				// ...solange ich damit nichts zu tun habe...
	var string	Smalltalk12;				// ...man darf auch nicht alles glauben, was man h�rt...
	var string	Smalltalk13;				// ...in seiner Haut will ich trotzdem nicht stecken...
	var string	Smalltalk14;				// ...immer wieder die selbe Leier...
	var string	Smalltalk15;				// ...manche lernen eben garnichts dazu...
	var string	Smalltalk16;				// ...fr�her w�re das ganz anders gelaufen...
	var string	Smalltalk17;				// ...gequatscht wird viel...
	var string	Smalltalk18;				// ...ich h�r nicht mehr auf das Gefasel...
	var string	Smalltalk19;				// ...verla� Dich auf jemanden und Du bist verlassen, das ist eben so...
	var string	Smalltalk20;				// ...ich glaube kaum, da� sich daran was �ndern wird...
	var string	Smalltalk21;				// ...wahrscheinlich hast Du recht...
	var string	Smalltalk22;				// ...erstmal abwarten. Es wird nichts so hei� gegessen, wie es gekocht wird...
	var string	Smalltalk23;				// ...ich dachte, das w�re schon lange gekl�rt, aber das ist wohl nicht so...
	var string	Smalltalk24;				// ...la� uns lieber �ber was anderes reden...
	var string	Om;							// Ommm (Meditation)

// SC Dialog
	var string	SC_HeyTurnAround;			//SC: Hey du! (Nsc ansprechen, steht mit R�cken zu dir)                                   
	var string	SC_HeyWaitASecond;			//SC: Warte mal! (Nsc im vorgeigehen anhalten)                                            
	var string DoesntWork;				
	var string PickBroke;				
	var string NeedKey;					
	var string NoMorePicks;				
	var string InvFull;		

//////////////////////////////////
// NYRAS PROLOGUE DEMAKE MOD
//////////////////////////////////
	
	// Nyras (PC_HERO) - SVM_15
	var string Hero_CH0_None_Hero_17013;
	var string Hero_CH0_None_Hero_12036;
	var string Hero_CH0_None_Hero_20445;
	var string Hero_CH0_None_Hero_62833;

	// Whistler (STT_309_Whistler) - SVM_19
	var string Whistler_CH0_None_Whistler_53621_0;

	// Orry (GRD_254_Orry) - SVM_20 
	var string Orry_CH0_None_Orry_21502;

	// Ratford (ORG_818_Ratford) - SVM_21
	var string TEXT_WIP_JNJMDGE_20240715_153503;
	var string Ratford_CH0_None_Ratford_64245_1;
	var string Ratford_CH0_None_Ratford_44688;
	var string Ratford_CH0_None_Ratford_99079_1;

	// Drax (ORG_819_Drax) - SVM_22
	var string Drax_CH0_G1RDemo_DraxHunt_Drax_83832;
	var string Drax_CH0_None_Drax_32109;
	var string Drax_CH0_G1RDemo_FindJorik_Drax_96572;

	// Kirgo (GRD_251_Kirgo) - SVM_23
	var string Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_97338;
	var string Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_65948_6;

	// Diego (PC_Thief) & Whistler (STT_309_Whistler) Smalltalk - SVM_18 and SVM_19
	var string Diego_CH0_None_Diego_67078;
	var string Diego_CH0_None_Whistler_93885;
	var string Diego_CH0_None_Whistler_25347;
	var string Diego_CH0_None_Diego_78525;
	var string Diego_CH0_None_Whistler_46374;
	var string Diego_CH0_None_Diego_82774;
	var string Diego_CH0_None_Diego_71218;
	var string Diego_CH0_None_Whistler_58295;
	var string Diego_CH0_None_Diego_18638;
	var string Diego_CH0_None_Diego_23669;
	var string Diego_CH0_None_Diego_5000;
	var string Diego_CH0_None_Whistler_36003;
	var string Diego_CH0_None_Whistler_46247;
	var string Diego_CH0_None_Diego_38791;
	var string Diego_CH0_None_Whistler_2972;
	
	// Ratford (ORG_818_Ratford) & Drax (ORG_819_Drax) & Hero (PC_HERO) Trialog - SVM 21, SVM 22 and SVM 15
    var string Drax_CH0_None_Ratford_71939;
    var string Drax_CH0_None_Ratford_33049; 
    var string Drax_CH0_None_Ratford_90529; 
    var string Drax_CH0_None_Ratford_52326; 
    var string Drax_CH0_None_Ratford_68439; 
    var string Drax_CH0_None_Ratford_70406; 
    var string Drax_CH0_None_Ratford_94638; 
    var string Drax_CH0_None_Ratford_61772; 
    var string Drax_CH0_None_Drax_54567;
    var string Drax_CH0_None_Drax_85556;
    var string Drax_CH0_None_Drax_88422;
    var string Drax_CH0_None_Drax_95327;
    var string Drax_CH0_None_Drax_44226;
    var string Drax_CH0_None_Drax_54188;
    var string Drax_CH0_None_Drax_73206;
    var string Drax_CH0_None_Drax_15941;
    var string Drax_CH0_None_Hero_68340;
};

instance SVM_0 (C_SVM){};
instance SVM_1 (C_SVM){};
instance SVM_2 (C_SVM){};
instance SVM_3 (C_SVM){};
instance SVM_4 (C_SVM){};
instance SVM_5 (C_SVM){};
instance SVM_6 (C_SVM){};
instance SVM_7 (C_SVM){};
instance SVM_8 (C_SVM){};
instance SVM_9 (C_SVM){};
instance SVM_10	(C_SVM){};
instance SVM_11	(C_SVM){};
instance SVM_12	(C_SVM){};
instance SVM_13	(C_SVM){};
instance SVM_14	(C_SVM){};

// ***************************
// 		NYRAS (PC_HERO)
// ***************************

instance SVM_15	(C_SVM)
{
	// NYRAS PROLOGUE DEMAKE MOD
	Hero_CH0_None_Hero_17013 	= 	"Hero-CH0-None-Hero-17013"			;	//Hej, ty!

	Hero_CH0_None_Hero_12036	= 	"Hero-CH0-None-Hero-12036"			;	//C�... pora rozpocz�� nowe �ycie...
	Hero_CH0_None_Hero_20445 	= 	"Hero-CH0-None-Hero-20445"			;	//To kiepski pomys�. Je�li znajd� mnie tu �pi�cego, to ju� po mnie.
	Hero_CH0_None_Hero_62833 	= 	"Hero-CH0-None-Hero-62833"			;	//Hmm... to miejsce si� nada. Ale kto� ju� z niego korzysta. Mo�e je�li go znajd�...

	Drax_CH0_None_Hero_68340 	= 	"Drax-CH0-None-Hero-68340"			;	//Mia� przy sobie ten rysunek. Sp�jrz.
};

instance SVM_16	(C_SVM){};
instance SVM_17	(C_SVM){};

// ***************************
// 		Diego (PC_Thief)
// ***************************

instance SVM_18	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Diego-CH0-None-Diego-23432";		//Schowaj t� cholern� bro�!
	ISaidWeaponDown				=	"Diego-CH0-None-Diego-85171";		//Prosisz si� o lanie? Schowaj to!
	YouAskedForIt				=	"Diego-CH0-None-Diego-84477";		//Sam si� o to prosi�e�!
	WiseMove					=	"Diego-CH0-None-Diego-77772";		//No i bardzo dobrze.

	Diego_CH0_None_Diego_67078	=	"Diego-CH0-None-Diego-67078";	//Wybacz, �e ci� zatrzyma�em, jak sytuacja?
	Diego_CH0_None_Diego_78525	=	"Diego-CH0-None-Diego-78525";	//Tylko trzy? My�la�em, �e b�dzie gorzej.
	Diego_CH0_None_Diego_82774	=	"Diego-CH0-None-Diego-82774";	//Zgadza si�. Dok�adnie tak jak my dymamy ich.
	Diego_CH0_None_Diego_71218	=	"Diego-CH0-None-Diego-71218";	//Zauwa�y�e�, �e beczki z rud� z tego miesi�ca mia�y wyj�tkowo grube dno?
	Diego_CH0_None_Diego_18638	=	"Diego-CH0-None-Diego-18638";	//...�e beczki mia�y wyj�tkowo grube dno.
	Diego_CH0_None_Diego_23669	=	"Diego-CH0-None-Diego-23669";	//Tylko tyle wiem.
	Diego_CH0_None_Diego_5000	=	"Diego-CH0-None-Diego-5000";	//To wszystko gierki, �wistak. Oni dymaj� nas, a my ich � i tak to si� toczy, dop�ki bogowie nie odwal� kity.
	Diego_CH0_None_Diego_38791	=	"Diego-CH0-None-Diego-38791";	//Dobra. Dzi�ki, �wistak!
};

// ***************************
// 		Whistler (STT_309_Whistler)
// ***************************

instance SVM_19	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Whistler-CH0-None-Whistler-17469";		//Od�o� bro�, kretynie!
	ISaidWeaponDown				=	"Whistler-CH0-None-Whistler-31444";		//Od�� bro� albo ci� za�atwi�!

	//YouAskedForIt				=	"SVM_1_YouAskedForIt";					//Sam si� o to prosi�e�!

	WiseMove					=	"Whistler-CH0-None-Whistler-7791";		//No. Masz szcz�cie.

	
	
	Whistler_CH0_None_Whistler_53621_0	= "Whistler-CH0-None-Whistler-53621-0";	//Spieprzaj!

	Diego_CH0_None_Whistler_93885 		= "Diego-CH0-None-Whistler-93885";	//Znowu pr�bowali nas okantowa� na zbo�u, suczesyny.
	Diego_CH0_None_Whistler_25347 		= "Diego-CH0-None-Whistler-25347";	//Na dnie s� trzy zarobaczone worki... Za�o�� si� o dziesi�� bry�ek rudy, �e b�d� udawali zdziwionych.
	Diego_CH0_None_Whistler_46374 		= "Diego-CH0-None-Whistler-46374";	//Wi�c pozwolimy im dalej dyma� nas bez myd�a?
	Diego_CH0_None_Whistler_58295 		= "Diego-CH0-None-Whistler-58295";	//Wi�c chcesz mi powiedzie�, �e...
	Diego_CH0_None_Whistler_36003 		= "Diego-CH0-None-Whistler-36003";	//Ale z ciebie poeta. Dobra, jeba� to.
	Diego_CH0_None_Whistler_46247 		= "Diego-CH0-None-Whistler-46247";	//Sprawdz� t� parti� i przygotuj� j� do transportu.
	Diego_CH0_None_Whistler_2972  		= "Diego-CH0-None-Whistler-2972";	//Jasne.
};

// ***************************
// 		Orry (GRD_254_Orry)
// ***************************

instance SVM_20	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Orry-CH0-None-Orry-1075";		//Co ty, kurwa, wyprawiasz?
	ISaidWeaponDown				=	"Orry-CH0-None-Orry-37151";		//Od�� to. Natychmiast.
	YouAskedForIt				=	"Orry-CH0-None-Orry-22114";		//No dobra!
	WiseMove					=	"Orry-CH0-None-Orry-24165";		//I nie wa� si� znowu tym macha�.

	Orry_CH0_None_Orry_21502	=	"Orry-CH0-None-Orry-21502";		//Zabieraj si�. Mia�e� ju� okazj� si� wykaza�.
};

// ***************************
// 		Ratford (ORG_818_Ratford)
// ***************************

instance SVM_21	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown							=	"Ratford-CH0-None-Ratford-42075";	//Nie celuj we mnie tym g�wnem.
	ISaidWeaponDown						=	"Ratford-CH0-None-Ratford-48468";	//G�uchy czy g�upi? Od�� to!
	YouAskedForIt						=	"Ratford-CH0-None-Ratford-71391";	//Sam si� o to prosi�e�!
	WiseMove							=	"Ratford-CH0-None-Ratford-97616";	//Nie jeste� tak g�upi, na jakiego wygl�dasz.

	TEXT_WIP_JNJMDGE_20240715_153503 	= "TEXT_WIP_JNJMDGE_20240715_153503";	//Odwal si�.
	Ratford_CH0_None_Ratford_64245_1 	= "Ratford-CH0-None-Ratford-64245-1"; 	//A kim ty niby jeste�, na Beliara?
	Ratford_CH0_None_Ratford_44688		= "Ratford-CH0-None-Ratford-44688"; //Nie teraz.
	Ratford_CH0_None_Ratford_99079_1	= "Ratford-CH0-None-Ratford-99079-1"; //Powodzenia �ycz�.

	Drax_CH0_None_Ratford_71939 = "Drax-CH0-None-Ratford-71939";	//Odwal si�. Masz co� na obiad?
	Drax_CH0_None_Ratford_33049 = "Drax-CH0-None-Ratford-33049";	//To prawdopodobnie ten cieniostw�r. Musimy by� uwa�niejsi w nocy.
	Drax_CH0_None_Ratford_90529 = "Drax-CH0-None-Ratford-90529";	//Nie pokazuj tego g�wna ludziom i przesta� ple�� bzdury. Jorik za du�o jara� i mu odwali�o � koniec tematu.
	Drax_CH0_None_Ratford_52326 = "Drax-CH0-None-Ratford-52326";	//Przez ciebie wygl�damy jak panienki gotowe wskoczy� mu w ramiona.
	Drax_CH0_None_Ratford_68439 = "Drax-CH0-None-Ratford-68439";	//No ale Drax ma racj�. Przydadz� nam si� nowi ludzie, a ty nie�le sobie radzisz. Tylko pami�taj, �e je�li nie chcesz sko�czy� zgi�ty w p� na polu ry�owym, to musisz si� postara�.
	Drax_CH0_None_Ratford_70406 = "Drax-CH0-None-Ratford-70406";	//Je�li nadal my�lisz, �e ten g�wniany pomys� wysadzenia kopca niebieskiej rudy zadzia�a, to jeste� r�wnie powalony, co tamte �wiry.
	Drax_CH0_None_Ratford_94638 = "Drax-CH0-None-Ratford-94638";	//No bo kurde. Maj� ju� tyle rudy, �e mogliby kupi� ca�y Varant! A jakim� sposobem zawsze, gdy pytam Najemnik�w, kiedy Magowie b�d� mieli jej wystarczaj�co, to odpowiadaj�, �e �jeszcze troch�.
	Drax_CH0_None_Ratford_61772 = "Drax-CH0-None-Ratford-61772";	//Zaczynam si� powa�nie zastanawia�, czy z nami nie pogrywaj�, tak jak ten ca�y Y�Berion ze swoimi owieczkami. Nie zdziwi�oby mnie...
};

// ***************************
// 		Drax (ORG_819_Drax)
// ***************************

instance SVM_22	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown							=	"Drax-CH0-None-Drax-94813";		//Od�� bro�. Nie �artuj�.
	ISaidWeaponDown						=	"Drax-CH0-None-Drax-1574";		//Na pewno tego chcesz, kolego? Przegrasz.
	YouAskedForIt						=	"Drax-CH0-None-Drax-15907";		//Koniec z tym!
	WiseMove							=	"Drax-CH0-None-Drax-71298";		//Rozs�dnie.

	Drax_CH0_None_Drax_32109				=	"Drax-CH0-None-Drax-32109";					//Nie mam czasu, kolego.
	Drax_CH0_G1RDemo_FindJorik_Drax_96572	=	"Drax-CH0-G1RDemo_FindJorik-Drax-96572";	//Hm? Znajd� Rata. Powinien by� gdzie� w kanionie.
	Drax_CH0_G1RDemo_DraxHunt_Drax_83832	=	"Drax-CH0-G1RDemo_DraxHunt-Drax-83832";		//Hej! Ciszej tam, wystraszysz...

	Drax_CH0_None_Drax_54567 = "Drax-CH0-None-Drax-54567";	//A wi�c dorobi�e� si� kumpla, Rat? My�la�em, �e nie do�yj� tego dnia.
	Drax_CH0_None_Drax_85556 = "Drax-CH0-None-Drax-85556";	//Ta, nowy mi pom�g�. Znalaz�e� Jorika, hm? Co go zabi�o?
	Drax_CH0_None_Drax_88422 = "Drax-CH0-None-Drax-88422";	//Powiedz mi, �wie�ak, gdy znalaz�e� Jorika, dowiedzia�e� si� mo�e, dlaczego si� oddali�? Nadal tego nie rozumiem.
	Drax_CH0_None_Drax_95327 = "Drax-CH0-None-Drax-95327";	//Kopc� jak piec, a jako� �aden b�g nic mi jeszcze nie �wyszepta� w snach�.
	Drax_CH0_None_Drax_44226 = "Drax-CH0-None-Drax-44226";	//Na jajca Beliara, we� si� uspok�j. Tylko zapyta�em.
	Drax_CH0_None_Drax_54188 = "Drax-CH0-None-Drax-54188";	//To mo�e pogadamy o czym� innym. Pewnie ju� si� zorientowa�e�, �e w Kolonii s� trzy obozy.
	Drax_CH0_None_Drax_73206 = "Drax-CH0-None-Drax-73206";	//B�d� szczery: nie jeste� tak bezu�yteczny, jak wi�kszo��, kt�rych tu wrzucaj�. Powiniene� spr�bowa� do��czy� do naszego obozu.
	Drax_CH0_None_Drax_15941 = "Drax-CH0-None-Drax-15941";	//To akurat tyczy si� ka�dego obozu. Ale my przynajmniej mamy sensowny plan ucieczki. Prawdziwy plan, a nie jakie� sekciarskie bzdury o �pi�cych bogach.
};

// ***************************
// 		Kirgo (GRD_251_Kirgo)
// ***************************

instance SVM_23	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Kirgo-CH0-None-Kirgo-48070";		//Schowaj bro�, idioto.
	ISaidWeaponDown				=	"Kirgo-CH0-None-Kirgo-75830";		//Nie ka� mi si� powtarza�.
	YouAskedForIt				=	"Kirgo-CH0-None-Kirgo-27709";		//Ostrzega�em ci�.
	WiseMove					=	"Kirgo-CH0-None-Kirgo-836";			//M�dry wyb�r.

	Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_97338 	= "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-97338";	//Mi�o si� gaw�dzi�o.
	Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_65948_6 	= "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-65948-6";	//Dobra. Zata�czmy.
};

// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	24;




