// **********************************************
// Standard	Voice Module
// **********************************************

// Diese Klasse	kann beliebig von den Skriptern	erweitert um
// "var string xxxx" erweitert werden, diese können	dann in	den
// einzelnen SVM - Instanzen initialisiert werden.


class C_SVM
{
// SC hat Waffe oder Magie gezogen oder zielt auf NSC
	var string	StopMagic;					// NSC  sieht wie in seiner Nähe gezaubert wird -> er fordert auf, damit aufzuhören!
	var string	ISaidStopMagic;				// NSC hat bereits mit $StopMagic gewarnt und greift nun an	(nachdem er	diesen Satz	gesagt hat;	WICHTIG: dies ist KEINE	letzte Warnung,	sonder sofort Angriff!)

	var string	WeaponDown				;	//ZS_AssessFighter: SC steht mit gezogener Waffe vor NSC -> NSC ist NEUTRAL zu SC	-> (herausfordernd,	bei	Pünten-Stimme etwas	unsicher, trotzdem kernig)
	var string	ISaidWeaponDown			;	//Kommt nachdem der SC $WeaponDown ignoriert hat!

	var string	WatchYourAim;				// ein FRIENDLY-SC zielt mit einer Fernkampfwaffe auf den NSC .	'Paß auf! Ziel woanders	hin!' B_Orc_AssessThreat hat das auch noch
	var string	WatchYourAimAngry		;	// SC zielt mit einer Fernkampfwaffe auf den Angry-NSC. (genervte Auffordern, damit	aufzuhören)
	var string	WhatAreYouDoing;			// NSC wird von einem FRIENDLY-SC/NSC geschlagen

// SC hat Waffe weggesteckt, NSC beendet Kampf
	var string	LetsForgetOurLittleFight;	//Friede, kann direkt kommen ( Wenn freundliche kämpfen und der Spieler die Waffe wegsteckt) oder als Reaction über das news-Gedächtnis, sollte daher Zeitneutral sein (--> nicht wie jetzt lass uns den Streit von letztens vergessen

// NSC hat Gegner aus den Augen verloren
	var string	Strange			;			// 1. NSC wird attackiert -> rennt mit gezogener Waffe zum Angreifer ->	kann ihn plötzlich nicht mehr entdecken	-> (muttering to himself)
											// 2. NSC sieht	einen Mord -> rennt	mit	gezogener Waffe	zum	Mörder -> kann ihn plötzlich nicht mehr	entdecken

// NSC greift an!
	var string	DieMonster				;	// NSC greift Monster an -> "Aus dir mach ich Gulasch, Drecksvieh!"
	var string	DieMOrtalEnemy;				// Der Nsc greift an, da er durch die Story permanent Hostile ist, d.h. die Lager sind in Blutfehde

	var string	NowWait;					// NSC hat den SC früher noch NICHT besiegt -> SC greift den NSC an -> "Na warte!"
	var string	YouStillNotHaveEnough	;	// NSC hat den SC früher besiegt ->	SC greift den NSC an -> "Hast du immer noch nicht genug?!"

	var	string	YouAskedForIt			;	// 1. SC hat eine Aufforderung ignoriert: den Raum zu verlassen, ein Item zurückzugeben, seine Waffe wegzustecken -> "Wer nicht hören will muß fühlen..."
	var string	NowWaitIntruder			;	// SC hat einen bewachten Durchgang durchbrochen...

	var	string	IWillTeachYouRespectForForeignProperty;	// 1. SC benutzt ein Besitz-Mob(Tür,Fallgitter-Drehkreuz,Kiste,...) und	wird ohne Vorwarnung attackiert
											// 2. SC trägt Waffe des NSCs -> NSC ist stärker und holt sie sich mit Gewalt wieder ->	vorher dieser Spruch

	var string	DirtyThief;					// 1. NSC ertappt den (schwächeren)	SC mit den Fingern in den eigenen Taschen
											// 2. NSC sieht	wie	der	(schwächere) SC	etwas nimmt, daß ihm gehört	(z.B. Waffe	auf	den	Tisch)
											// 3. NSC sieht	feindlichen, schwächeren SC, der ihn vorher	mal	beklaut	hat	und	sagt ihm diesen	Spruch,	bevor er angreift "Da hab ich Dich also	wieder,	Du dreckiger Dieb"
											// 4. Nsc ist in einen Raum eingedrungen

	var string	YouAttackedMyCharge		;	// SC/NSC greift einen Schützling einer NSC-Wache an -> Wache attackiert den Angreifer danach
	var string	YouKilledOneOfUs;			// NSC erblickt feindlichen SC, der einen Freund des NSCs getötet hat -> Angriff!

// im Kampf
	var string	Dead			;			// Tödlich verletzt
	var string	Aargh_1			;			// Treffer kassiert im Kampf	
	var string	Aargh_2			;			// Treffer kassiert im Kampf	
	var string	Aargh_3			;			// Treffer kassiert im Kampf	

	var string	Berzerk			;			// Wahnsinnsschrei im Zustand der Raserei!

// SC hat NSC niedergeschlagen oder bedroht
	var string	YoullBeSorryForThis;		// NSC wurde durch SC/aNSC besiegt und wacht aus der Ohnmacht wieder auf: 'Das wird	Dir	noch leidtun!'

	var string	YesYes			;			// 1. NSC wurde	im Kampf besiegt ->	erwacht	wieder ist aber	schächer als sein Kontrahent
											// 2. SC zieht Waffe oder nähert sich mit Waffe und NSC ist schwächer als SC
// NSC flieht
	var string	ShitWhatAMonster		;	// NSC flieht vor zu starkem Monster -> "Scheiße, was ein Höllenvieh. Nichts wie weg!"
	var string	Help;						// NSC flieht vor Gegner, Babe Nsc flieht vor Spieler, Orcs haben das auch
	var	STRING	WeWillMeetAgain;			// NSC flieht vor Gegner, ist aber eigentlich Stärker als er, ist aber trotzdem besiegt worden

// SC wurde von NSC besiegt und wird geplündert
	var string	NeverTryThatAgain	;		// NSC hat Gegner besiegt -> ("Versuch das NIE wieder!!")
	var string	ITakeYourWeapon;			// NSC plündert bewußtlosen SC/aNSC. Während er sich bückt, um nach der vom Besiegten fallengelassenen Waffe zu greifen sagt er diesen Spruch.
	var string	ITookYourOre	;			// NSC plündert bewußtlosen SC/aNSC. Nachdem er sich einen Teil des Erzes genommen hat, sagt er diesen Spruch.
	var string	ShitNoOre		;			// NSC ärgert sich darüber, daß er beim Durchsuchen eines bewußtlosen/toten Körpers kein Erz gefunden hat!

// NSC verwarnt SC
	var string	HandsOff;					// SC manipuliert ein MOB (Drehkreuz, Truhe, Tür) und ein befreundeter bzw. gildengleicher NSC sieht das...
	var string	GetOutOfHere		;		// NSC erwischt	schwächeren	SC in seiner Hütte -> ("Raus hier")	(SC	soll aus Raum gehen)
	var	string	YouViolatedForbiddenTerritory		;	// SC wird beim Betreten eines verbotenen Portalraums erwischt -> Warnung!

	var	STRING	YouWannaFoolMe;				// SC schnappt NSC ein Item vor der Nase weg und wird mit $GiveItToMe aufgefordert es zurückzugeben -> SC gibt ein falsches Item an den NSC -> 'Willst Du mich verarschen'

	var string	WhatsThisSupposedToBe	;	// 1. SC schleicht vor den Augen des NSCs -> "Was schleichst Du	hier rum?" (besser als "Was	soll das denn werden", weil	besseres Feedback!)
											// 2. SC bewegt	sich hinter	einer Wache	-> diese dreht sich	um und sagt	dann
	var string	WhyAreYouInHere			;	//im ZS_ClearRoom / SC steht in verbotenem Portalraum	-> schwächerer NSC fragt
	var string	WhatDidYouInThere		;	// Wache sieht Sc aus einer Hütte rauskommen und verwarnt ihn, ohne das ein Angriff folgt

	var string	WiseMove;					// 1. NSC wurde	gewarnt, seine Waffe wegzustecken ($RemoveYourWeapon) -> SC	befolgt	dies und steckt	die	Waffe weg
											// 2. SC steht in verbotenem Raum und wird mit $GetOutOfHere aufgefordert, rauszugehen -> SC befolgt die Aufforderung
											// 3. SC hat NSC ein Item vor der Nase weggeschnappt und wurde mit $GiveItToMe aufgefordert	es zurückzugeben ->	SC gehorcht

// NSC alarmiert/warnt andere NSCs vor SC
	var string	Alarm;						// Wache alarmiert die Sichtung	eines permanent	HOSTILE	SC/aNSC	"Alaaaaaaarm!!!!!"
											// Nicht Wache sieht wie ein Portalraum betreten wird, der einer Gilde zugeordnet ist und ruft die Wachen
											// Gemüse (NpcWorker) ruft Wachen nach einem Diebstahl/beobachteten Diebstahl etc.
	var string	IntruderAlert;				// SC hat einen bewachten Durchgang durchbrochen und die Wache alarmiert alle umstehenden
	var string	BehindYou;					// NSC sieht, wie ein anderer NSC vom SC bestohlen wird	und	warnt das Opfer

// NSC beobachtet Kampf
	var	string	TheresAFight	;			// NSC entdeckt	einen Kampf	und	will zuschauen (ZS_WatchFight) -> vorher ein Spruch	wie	"Hey da	drüben gibt's einen	Kampf"
	var string	HeyHeyHey;					// Hintergrund anfeuern	beim Beobachten	eines Kampfes: 'Hau	ihm	aufs Maul!'	(kommt alle	paar Sekunden!)
	var string	CheerFight;					// NSC ist im Zustand WatchFight: Neutraler	Kämpfer	schlägt irgendeinen Typen. '5 Erz auf den Dicken'
	var string	CheerFriend;				// NSC ist im Zustand WatchFight: Freund landet	einen Treffer. 'Immer in die Fresse!'
	var string	Ooh;						// NSC ist im Zustand WatchFight: Freund kriegt	aufs Maul. 'Mist - das tat weh.'
	var	STRING	YeahWellDone;				// NSC sieht, wie SC/aNSC, zu dem er ANGRY/HOSTILE ist getötet wird. 'Gut gemacht, das hat sie Sau verdient.'

// NSC-Gegner flieht
	var string	RunCoward;					// 1. Der NSC befindet sich	im Zustand WatchFight -> einer der Kämpfer haut	ab
											// 2. Der Gegner des NSCs flieht
	var	string	HeDefeatedHim	;			// NSC sieht wie ein SC/aNSC einen anderen aNSC/SC besiegt 	(WICHTIG: dies ist der normale Ausgang!)
	var	string	HeDeservedIt	;			// NSC sieht wie ein SC/aNSC, zu dem er	ANGRY/HOSTILE steht, besiegt wird -> ("DAS hat er verdient!")
	var	string	HeKilledHim		;			// NSC sieht wie ein SC/aNSC einen anderen aNSC/SC tötet	(WICHTIG: dies ist ein Skandal, niemand wird normalerweise	in einer "Schlägerei" getötet)
	var	string	ItWasAGoodFight	;			// NSC sieht wie ein FRIENDLY/NEUTRAL-SC/aNSC einen	anderen	besiegt

	var string	Awake			;			// NSC wacht aus dem Zustand Sleep wieder auf (Aufwachen, räkeln)

// Grüße
	var string	FriendlyGreetings;			// 1. Am Anfang	eines Dialoges, wenn NSC FRIENDLY/NEUTRAL zum SC,  2. Wenn sie sich unterwegs begegnen.
	var string	ALGreetings;				// 1. Am Anfang	eines Dialoges, wenn NSC und SC aus Altem Lager und FRIENDLY/NEUTRAL ('Für Gomez'), 2. Wenn sie sich unterwegs begegnen.
	var	STRING	MageGreetings;				// 1. Am Anfang	eines Dialoges, wenn NSC und SC beide Magier und FRIENDLY/NEUTRAL, 2. Wenn sie sich unterwegs begegnen.
	var string	SectGreetings;				// 1. Am Anfang	eines Dialoges, wenn NSC aus Psi-Camp und FRIENDLY/NEUTRAL	zum	SC ('Erwache. Der Schläfer erwache.') 2. Wenn sie sich unterwegs begegnen.

	var string	ThereHeIs;					// NSC zeigt SC wo ein anderer NSC steht nach dem der SC gefragt hat: "Da drüben ist er"

// Lehrer-Kommentare
	var string	NoLearnNoPoints			;	// NSC-Lehrer verbietet Steigerung - keine Lernpunkte!
	var string	NoLearnOverMax			;	// NSC-Lehrer verbietet Attribut-Steigerung über 100
	var string	NoLearnYouAlreadyKnow	;	// Du mußt erst Fortgeschritten sein, bevor du ein Meister werden kannst!
	var string	NoLearnYoureBetter		;	// Du bist jetzt schon besser!

// NSC spricht SC an
	var string	HeyYou;						// z.B. Wache, die den SC im Räumen erwischt, wo er nicht hin darf sagt HeyYou, und geht dann zum SC

// NSC will nicht reden
	var string	NotNow;						// NSC / Babe wird vom SC angesprochen,	lehnt aber ein Gespräch	ab.

// SC zu nah
	var string	WhatDoYouWant;				// SC rückt NSC zu dicht auf die Pelle -> "Kann ich was für Dich tun?"
	var string	ISaidWhatDoYouWant;			// NSC hat $WhatDoYouWant gesagt, aber der SC hat nicht reagiert -> "Was willst Du?"
// SC im Weg
	var string	MakeWay;					// SC steht	schwächerem NSC im Weg	-> Aufforderung, Platz zu	machen
	var string	OutOfMyWay;					// SC steht stärkerem NSC (Magier, Erzbaron) im Weg -> aggressive Aufforderung, Platz zu machen
	var string	YouDeafOrWhat;				// SC folgt	nicht der Aufforderung des stärkeren NSCs	-> letzte Warnung, danach Angriff

// SC spricht NSC an, der ihn besiegt hat
	var string	LookingForTroubleAgain;		//Erster Satz eines Dialoges, nachdem der NSC und der SC gekämpft haben (entweder wurde der SC besiegt oder es gab keinen klaren Ausgang des Kampfes)

// NSC ist schwächer...
	var string	LookAway;					// Eingeschüchterter NSC guckt weg bei bedrohlichen Situationen
	var string	OkayKeepIt;					// SC trägt	Waffe des schächeren NSCs -> NSCs verlangt die Waffe zurück	($GiveItToMe) -> SC	bedroht	NSC	-> ("Okay, okay, du	kannst das Ding	behalten..." zurückweichen)
	var string	WhatsThat;					// Verwandelter SC wird vor den Augen des NSCs wieder zum Menschen (Erschreckter Ausruf) Nsc wird aus dem MagicSleep wieder wach und wundert sich...

	var string	ThatsMyWeapon;				// SC trägt	eine Waffe,	die	dem	NSC	gehört -> Folge: ZS_GetBackBelongings
	var string	GiveItToMe;					// 1. SC trägt Waffe des NSCs -> NSC ist schwächer (also kein Kampf) ->	"Gib sie mir wieder"
	var string	YouCanKeeptheCrap;			// 1. SC trägt Waffe des schwächeren NSCs ->	NSCs verlangt die Waffe	zurück ($GiveItToMe) ->	SC geht	einfach	weg	-> ("Behalt	das	Scheiß-Ding	doch!)
											// 2. NSC will ein Item	aufheben und wird von einem	stärkeren NSC gewarnt, der das auch	tun	will ->	unser NSC weicht zurück

	var string	TheyKilledMyFriend;			// NSC Täter - NSC zu Opfer freundlich, zu Täter freundlich oder neutral

	var	string	YouDisturbedMySlumber;		// NSC wurde vom SC	mittelsanft	aus	dem	Schlaf gerissen	(z.B. durch	Ansprechen)

// Angry NSCs kommentieren SC-Aktionen
	var string	SuckerGotSome;				// Angry NSC hat gehört, daß der SC umgehauen wurde. "Das Dich jemand umgehauen hat, geschieht Dir Recht!"

	var string	SuckerDefeatedEBr;			// Du hast einen	EBR	besiegt. Er war wirklich beeindruckt!
	var string	SuckerDefeatedGur;			// Du hast einen	GUR	niedergeschlagen,	Du bist	ein	toter Mann
	var string	SuckerDefeatedMage;			// (News) - im Stil von SuckerDefeatedXY

	var string	SuckerDefeatedNOV_Guard;	// Der Spieler hat einen Novizen umgehauen, Templer spricht den Spieler an, Templer ist ANGRY zu Spieler
	var string	SuckerDefeatedVLK_Guard;	// Der Spieler hat einen Schützling der Wache niedergeschlagen
	var string	YouDefeatedMyComrade;		// Wache stellt fest, das sie gesehen/gehört hat, daß ich eine andere Wache umgehauen habe
	var string	YouDefeatedNOV_Guard;		// Der Spieler hat einen Novizen umgehauen, Templer spricht den Spieler an, Templer ist NEUTRAL/FRIENDLY zu Spieler
	var string	YouDefeatedVLK_Guard;		// Der Spieler hat einen Buddler umgehauen, Wache spricht den Spieler an, Wache ist NEUTRAL/FRIENDLY zu Spieler
	var string	YouStoleFromMe;				// Du Sau hast mich beklaut

//Wichtige Person (Lehrer, Auftraggeber?), hat davon gehört, daß Du Mist gebaut hat...
// FIXME: damit das so benutzt werden kann müssen noch Anpassungen in der B_ReactToMemory.d gemacht werden
	var string	YouStoleFromUs;				// eigene oder befreundete Gilde beklaut.
	var string	YouStoleFromEBr;			// Erzbarone beklaut.
	var string	YouStoleFromGur;			// Gurus beklaut.
	var string	StoleFromMage;				// Magier beklaut.

	var string	YouKilledMyFriend;			// jemand aus eigener oder befreundeter Gilde getötet
	var	STRING	YouKilledEBr;				// Erzbaron getötet
	var string	YouKilledGur;				// Guru getötet
	var string	YouKilledMage;				// Guru getötet

	var string	YouKilledOCfolk;			// Gardist, Schatten oder Buddler getötet.
	var string	YouKilledNCfolk;			// Söldner, Organisator, Schürfer oder Bauer getötet
	var string	YouKilledPSIfolk;			// Templer oder Novize getötet

	var string	GetThingsRight;				//SC hat Mist gebaut. NSC sagt, "Das wieder hinzubiegen wird nicht einfach!"

	var string	YouDefeatedMeWell;			//Zu SC	freundlich/neutral:	Du hast	mich ganz schön	geplättet

// Ambient-Unterhaltungen zwischen zwei NSCs (gemurmelte Wortfetzen, die zufällig zu "Dialogen" zusammengewürfelt werden...
	var string	Smalltalk01;				// ...wenn Du meinst...
	var string	Smalltalk02;				// ...kann schon sein...
	var string	Smalltalk03;				// ...war nicht besonders schlau....
	var string	Smalltalk04;				// ...ich halt mich da lieber raus...
	var string	Smalltalk05;				// ...das ist wirklich nicht mein Problem...
	var string	Smalltalk06;				// ...war doch klar, daß das Ärger gibt...
	var string	Smalltalk07;				// ...aber behalt's für Dich, muß nicht gleich jeder wissen...
	var string	Smalltalk08;				// ...das passiert mir nicht nochmal...
	var string	Smalltalk09;				// ...an der Gechichte muß wohl doch was dran sein...
	var string	Smalltalk10;				// ...man muß eben aufpassen was man rumerzählt...
	var string	Smalltalk11;				// ...solange ich damit nichts zu tun habe...
	var string	Smalltalk12;				// ...man darf auch nicht alles glauben, was man hört...
	var string	Smalltalk13;				// ...in seiner Haut will ich trotzdem nicht stecken...
	var string	Smalltalk14;				// ...immer wieder die selbe Leier...
	var string	Smalltalk15;				// ...manche lernen eben garnichts dazu...
	var string	Smalltalk16;				// ...früher wäre das ganz anders gelaufen...
	var string	Smalltalk17;				// ...gequatscht wird viel...
	var string	Smalltalk18;				// ...ich hör nicht mehr auf das Gefasel...
	var string	Smalltalk19;				// ...verlaß Dich auf jemanden und Du bist verlassen, das ist eben so...
	var string	Smalltalk20;				// ...ich glaube kaum, daß sich daran was ändern wird...
	var string	Smalltalk21;				// ...wahrscheinlich hast Du recht...
	var string	Smalltalk22;				// ...erstmal abwarten. Es wird nichts so heiß gegessen, wie es gekocht wird...
	var string	Smalltalk23;				// ...ich dachte, das wäre schon lange geklärt, aber das ist wohl nicht so...
	var string	Smalltalk24;				// ...laß uns lieber über was anderes reden...
	var string	Om;							// Ommm (Meditation)

// SC Dialog
	var string	SC_HeyTurnAround;			//SC: Hey du! (Nsc ansprechen, steht mit Rücken zu dir)                                   
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

	Hero_CH0_None_Hero_12036	= 	"Hero-CH0-None-Hero-12036"			;	//Có¿... pora rozpocz¹æ nowe ¿ycie...
	Hero_CH0_None_Hero_20445 	= 	"Hero-CH0-None-Hero-20445"			;	//To kiepski pomys³. Jeœli znajd¹ mnie tu œpi¹cego, to ju¿ po mnie.
	Hero_CH0_None_Hero_62833 	= 	"Hero-CH0-None-Hero-62833"			;	//Hmm... to miejsce siê nada. Ale ktoœ ju¿ z niego korzysta. Mo¿e jeœli go znajdê...

	Drax_CH0_None_Hero_68340 	= 	"Drax-CH0-None-Hero-68340"			;	//Mia³ przy sobie ten rysunek. Spójrz.
};

instance SVM_16	(C_SVM){};
instance SVM_17	(C_SVM){};

// ***************************
// 		Diego (PC_Thief)
// ***************************

instance SVM_18	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Diego-CH0-None-Diego-23432";		//Schowaj tê cholern¹ broñ!
	ISaidWeaponDown				=	"Diego-CH0-None-Diego-85171";		//Prosisz siê o lanie? Schowaj to!
	YouAskedForIt				=	"Diego-CH0-None-Diego-84477";		//Sam siê o to prosi³eœ!
	WiseMove					=	"Diego-CH0-None-Diego-77772";		//No i bardzo dobrze.

	Diego_CH0_None_Diego_67078	=	"Diego-CH0-None-Diego-67078";	//Wybacz, ¿e ciê zatrzyma³em, jak sytuacja?
	Diego_CH0_None_Diego_78525	=	"Diego-CH0-None-Diego-78525";	//Tylko trzy? Myœla³em, ¿e bêdzie gorzej.
	Diego_CH0_None_Diego_82774	=	"Diego-CH0-None-Diego-82774";	//Zgadza siê. Dok³adnie tak jak my dymamy ich.
	Diego_CH0_None_Diego_71218	=	"Diego-CH0-None-Diego-71218";	//Zauwa¿y³eœ, ¿e beczki z rud¹ z tego miesi¹ca mia³y wyj¹tkowo grube dno?
	Diego_CH0_None_Diego_18638	=	"Diego-CH0-None-Diego-18638";	//...¿e beczki mia³y wyj¹tkowo grube dno.
	Diego_CH0_None_Diego_23669	=	"Diego-CH0-None-Diego-23669";	//Tylko tyle wiem.
	Diego_CH0_None_Diego_5000	=	"Diego-CH0-None-Diego-5000";	//To wszystko gierki, Œwistak. Oni dymaj¹ nas, a my ich – i tak to siê toczy, dopóki bogowie nie odwal¹ kity.
	Diego_CH0_None_Diego_38791	=	"Diego-CH0-None-Diego-38791";	//Dobra. Dziêki, Œwistak!
};

// ***************************
// 		Whistler (STT_309_Whistler)
// ***************************

instance SVM_19	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Whistler-CH0-None-Whistler-17469";		//Od³o¿ broñ, kretynie!
	ISaidWeaponDown				=	"Whistler-CH0-None-Whistler-31444";		//Od³ó¿ broñ albo ciê za³atwiê!

	//YouAskedForIt				=	"SVM_1_YouAskedForIt";					//Sam siê o to prosi³eœ!

	WiseMove					=	"Whistler-CH0-None-Whistler-7791";		//No. Masz szczêœcie.

	
	
	Whistler_CH0_None_Whistler_53621_0	= "Whistler-CH0-None-Whistler-53621-0";	//Spieprzaj!

	Diego_CH0_None_Whistler_93885 		= "Diego-CH0-None-Whistler-93885";	//Znowu próbowali nas okantowaæ na zbo¿u, suczesyny.
	Diego_CH0_None_Whistler_25347 		= "Diego-CH0-None-Whistler-25347";	//Na dnie s¹ trzy zarobaczone worki... Za³o¿ê siê o dziesiêæ bry³ek rudy, ¿e bêd¹ udawali zdziwionych.
	Diego_CH0_None_Whistler_46374 		= "Diego-CH0-None-Whistler-46374";	//Wiêc pozwolimy im dalej dymaæ nas bez myd³a?
	Diego_CH0_None_Whistler_58295 		= "Diego-CH0-None-Whistler-58295";	//Wiêc chcesz mi powiedzieæ, ¿e...
	Diego_CH0_None_Whistler_36003 		= "Diego-CH0-None-Whistler-36003";	//Ale z ciebie poeta. Dobra, jebaæ to.
	Diego_CH0_None_Whistler_46247 		= "Diego-CH0-None-Whistler-46247";	//Sprawdzê tê partiê i przygotujê j¹ do transportu.
	Diego_CH0_None_Whistler_2972  		= "Diego-CH0-None-Whistler-2972";	//Jasne.
};

// ***************************
// 		Orry (GRD_254_Orry)
// ***************************

instance SVM_20	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Orry-CH0-None-Orry-1075";		//Co ty, kurwa, wyprawiasz?
	ISaidWeaponDown				=	"Orry-CH0-None-Orry-37151";		//Od³ó¿ to. Natychmiast.
	YouAskedForIt				=	"Orry-CH0-None-Orry-22114";		//No dobra!
	WiseMove					=	"Orry-CH0-None-Orry-24165";		//I nie wa¿ siê znowu tym machaæ.

	Orry_CH0_None_Orry_21502	=	"Orry-CH0-None-Orry-21502";		//Zabieraj siê. Mia³eœ ju¿ okazjê siê wykazaæ.
};

// ***************************
// 		Ratford (ORG_818_Ratford)
// ***************************

instance SVM_21	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown							=	"Ratford-CH0-None-Ratford-42075";	//Nie celuj we mnie tym gównem.
	ISaidWeaponDown						=	"Ratford-CH0-None-Ratford-48468";	//G³uchy czy g³upi? Od³ó¿ to!
	YouAskedForIt						=	"Ratford-CH0-None-Ratford-71391";	//Sam siê o to prosi³eœ!
	WiseMove							=	"Ratford-CH0-None-Ratford-97616";	//Nie jesteœ tak g³upi, na jakiego wygl¹dasz.

	TEXT_WIP_JNJMDGE_20240715_153503 	= "TEXT_WIP_JNJMDGE_20240715_153503";	//Odwal siê.
	Ratford_CH0_None_Ratford_64245_1 	= "Ratford-CH0-None-Ratford-64245-1"; 	//A kim ty niby jesteœ, na Beliara?
	Ratford_CH0_None_Ratford_44688		= "Ratford-CH0-None-Ratford-44688"; //Nie teraz.
	Ratford_CH0_None_Ratford_99079_1	= "Ratford-CH0-None-Ratford-99079-1"; //Powodzenia ¿yczê.

	Drax_CH0_None_Ratford_71939 = "Drax-CH0-None-Ratford-71939";	//Odwal siê. Masz coœ na obiad?
	Drax_CH0_None_Ratford_33049 = "Drax-CH0-None-Ratford-33049";	//To prawdopodobnie ten cieniostwór. Musimy byæ uwa¿niejsi w nocy.
	Drax_CH0_None_Ratford_90529 = "Drax-CH0-None-Ratford-90529";	//Nie pokazuj tego gówna ludziom i przestañ pleœæ bzdury. Jorik za du¿o jara³ i mu odwali³o – koniec tematu.
	Drax_CH0_None_Ratford_52326 = "Drax-CH0-None-Ratford-52326";	//Przez ciebie wygl¹damy jak panienki gotowe wskoczyæ mu w ramiona.
	Drax_CH0_None_Ratford_68439 = "Drax-CH0-None-Ratford-68439";	//No ale Drax ma racjê. Przydadz¹ nam siê nowi ludzie, a ty nieŸle sobie radzisz. Tylko pamiêtaj, ¿e jeœli nie chcesz skoñczyæ zgiêty w pó³ na polu ry¿owym, to musisz siê postaraæ.
	Drax_CH0_None_Ratford_70406 = "Drax-CH0-None-Ratford-70406";	//Jeœli nadal myœlisz, ¿e ten gówniany pomys³ wysadzenia kopca niebieskiej rudy zadzia³a, to jesteœ równie powalony, co tamte œwiry.
	Drax_CH0_None_Ratford_94638 = "Drax-CH0-None-Ratford-94638";	//No bo kurde. Maj¹ ju¿ tyle rudy, ¿e mogliby kupiæ ca³y Varant! A jakimœ sposobem zawsze, gdy pytam Najemników, kiedy Magowie bêd¹ mieli jej wystarczaj¹co, to odpowiadaj¹, ¿e „jeszcze trochê”.
	Drax_CH0_None_Ratford_61772 = "Drax-CH0-None-Ratford-61772";	//Zaczynam siê powa¿nie zastanawiaæ, czy z nami nie pogrywaj¹, tak jak ten ca³y Y’Berion ze swoimi owieczkami. Nie zdziwi³oby mnie...
};

// ***************************
// 		Drax (ORG_819_Drax)
// ***************************

instance SVM_22	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown							=	"Drax-CH0-None-Drax-94813";		//Od³ó¿ broñ. Nie ¿artujê.
	ISaidWeaponDown						=	"Drax-CH0-None-Drax-1574";		//Na pewno tego chcesz, kolego? Przegrasz.
	YouAskedForIt						=	"Drax-CH0-None-Drax-15907";		//Koniec z tym!
	WiseMove							=	"Drax-CH0-None-Drax-71298";		//Rozs¹dnie.

	Drax_CH0_None_Drax_32109				=	"Drax-CH0-None-Drax-32109";					//Nie mam czasu, kolego.
	Drax_CH0_G1RDemo_FindJorik_Drax_96572	=	"Drax-CH0-G1RDemo_FindJorik-Drax-96572";	//Hm? ZnajdŸ Rata. Powinien byæ gdzieœ w kanionie.
	Drax_CH0_G1RDemo_DraxHunt_Drax_83832	=	"Drax-CH0-G1RDemo_DraxHunt-Drax-83832";		//Hej! Ciszej tam, wystraszysz...

	Drax_CH0_None_Drax_54567 = "Drax-CH0-None-Drax-54567";	//A wiêc dorobi³eœ siê kumpla, Rat? Myœla³em, ¿e nie do¿yjê tego dnia.
	Drax_CH0_None_Drax_85556 = "Drax-CH0-None-Drax-85556";	//Ta, nowy mi pomóg³. Znalaz³eœ Jorika, hm? Co go zabi³o?
	Drax_CH0_None_Drax_88422 = "Drax-CH0-None-Drax-88422";	//Powiedz mi, œwie¿ak, gdy znalaz³eœ Jorika, dowiedzia³eœ siê mo¿e, dlaczego siê oddali³? Nadal tego nie rozumiem.
	Drax_CH0_None_Drax_95327 = "Drax-CH0-None-Drax-95327";	//Kopcê jak piec, a jakoœ ¿aden bóg nic mi jeszcze nie „wyszepta³ w snach”.
	Drax_CH0_None_Drax_44226 = "Drax-CH0-None-Drax-44226";	//Na jajca Beliara, weŸ siê uspokój. Tylko zapyta³em.
	Drax_CH0_None_Drax_54188 = "Drax-CH0-None-Drax-54188";	//To mo¿e pogadamy o czymœ innym. Pewnie ju¿ siê zorientowa³eœ, ¿e w Kolonii s¹ trzy obozy.
	Drax_CH0_None_Drax_73206 = "Drax-CH0-None-Drax-73206";	//Bêdê szczery: nie jesteœ tak bezu¿yteczny, jak wiêkszoœæ, których tu wrzucaj¹. Powinieneœ spróbowaæ do³¹czyæ do naszego obozu.
	Drax_CH0_None_Drax_15941 = "Drax-CH0-None-Drax-15941";	//To akurat tyczy siê ka¿dego obozu. Ale my przynajmniej mamy sensowny plan ucieczki. Prawdziwy plan, a nie jakieœ sekciarskie bzdury o œpi¹cych bogach.
};

// ***************************
// 		Kirgo (GRD_251_Kirgo)
// ***************************

instance SVM_23	(C_SVM)
{
	// ------ ZS_AssessFighter ---------------------------------------------------------------------------------------------
	WeaponDown					=	"Kirgo-CH0-None-Kirgo-48070";		//Schowaj broñ, idioto.
	ISaidWeaponDown				=	"Kirgo-CH0-None-Kirgo-75830";		//Nie ka¿ mi siê powtarzaæ.
	YouAskedForIt				=	"Kirgo-CH0-None-Kirgo-27709";		//Ostrzega³em ciê.
	WiseMove					=	"Kirgo-CH0-None-Kirgo-836";			//M¹dry wybór.

	Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_97338 	= "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-97338";	//Mi³o siê gawêdzi³o.
	Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_65948_6 	= "Kirgo-CH0-G1RDemo_KirgoFight-Kirgo-65948-6";	//Dobra. Zatañczmy.
};

// ***********************
// 		Maximale SVMs
// ***********************

CONST INT SVM_MODULES =	24;




