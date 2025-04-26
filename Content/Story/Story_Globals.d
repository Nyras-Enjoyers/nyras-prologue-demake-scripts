// *************************
// Story_Globals
// *************************

var int Orry_IHaveNoTimeForThat; // If player refused to give him a beer.
var int Orry_IWillDoThat; // If player wants to give him a beer.
var int Orry_ABeerFound; // If player found a beer
var int Drax_IHaveNoTimeForThat; // If player refused to help in the hunt.
var int Drax_IsHunting; // If Drax is hunting
var int Drax_FirstZSTalkFinished; // If hero talked with Drax at least a one time
var int Kirgo_NotYourBusiness; // If player refuses to answer Kirgo.
const int DRAX_HUNTSCAVENGERSTOKILL = 3;
var int Drax_KilledScavengersCounter; // How many scavengers were killed during hunt with Drax.
var int Drax_AllScavengersKilled; // If all scavengers were killed.
var int Drax_HowLooksThisRatford; // If player asked Drax, how Ratford looks.
var int Ratford_PissedOff; // For example if player started a talk with Ratford without knowing Drax, since he finds Jorik
var int Ratford_GentlyPissedOff; // Since player helped Drax, or after finding Jorik
var int Ratford_LastPissedOff; // After asking all question after finding Jorik's sketch
var int Ratford_TalkNyrasNearJorik; // If Ratford talked Nyras near Jorik corpse
var int Ratford_HeroGoesToHimAsFoundJorik; // If player goes to Ratford after found Jorik
var int Ratford_HeroHasToGoesToHimAsFoundJorikNote; // If player has to goes to Ratford after found a note
var int Ratford_CommentedFoundNote; // If `DIA_ORG_818_Ratford_About_Found_Sketch_After_Searching__Choices_Common` function was executed
var int Ratford_LogEntriesAfterCommentingNoteAdded; // Whether the log entries were added after commenting a log
var int Kirgo_IntroducedHimself; // Kirgo introduced himself
var int Kirgo_HeroNoWeapon; // If player hasn't weapon for the duel
var int Kirgo_PlayerIsReady; // If player already said is ready and is ready
var int Kirgo_FirstDuelHeroWon; // Whether hero won the first duel
var int Kirgo_SecondDuelHeroWon; // Whether hero won the second duel
var int Kirgo_FirstDuelFinished; // Whether a first duel was finished
var int Kirgo_SecondDuelFinished; // Whether a second duel was finished
var int Kirgo_FirstDuelTalked; // Whether hero talked with Kirgo after the first duel
var int Kirgo_SecondDuelTalked; // Whether hero talked with Kirgo after the second duel
var int Kirgo_PlayerChoseSecondFight; // Whether player chose to start the second duel
var int Kirgo_SaidEverything; // Whether Kirgo said everything
var int Kirgo_ImmediatelyCommentFakeDuel; // Kirgo has to comment a result of a fight, which player started without challenging him
var int Kirgo_HeroUnconsciousAfterADuel; // If hero has to be unconscious after a duel
var int Kirgo_Killed; // Whether Kirgo was killed by player

var int Jorik_CorpseReached; // Whether player came near to Jorik's corpse

var int Drax_HuntingYes; // If the player agrees to the hunt.
var int Drax_MaybeLater; // If player doesn't want to hunt just now
var int Drax_HeroWeaponCheck; // If the player has a melee or ranged weapon.
var int Drax_HeroNoWeapon; // If player hasn't weapon for the hunt
var int Drax_HeroNoWeaponLogAdded; // Whether a log entry was added after Drax said about no weapon
var int Drax_HeroEnteredHuntAreaTooFast; // Whether player entered Drax's hunt area too fast
var int Drax_HeroStartedFightAlone; // Whether player attacked the scavengers without warning
var int Drax_FailedMissionKilledAloneAfterJorik; // If player killed the scavengers alone, after said is ready for hunting, and already found Jorik.
var int Drax_RefusedCamp; // If Drax refused Nyras
var int Drax_StartGoingToTheCamp; // If Drax started going to the camp
var int Drax_GoToTheCamp; // If Drax goes to the camp
var int Drax_IsInTheCamp; // If Drax is in the camp
var int Ratford_StartGoingToTheCamp; // If Ratford started going to the camp
var int Ratford_GoToTheCamp; // If Ratford goes to the camp
var int Ratford_IsInTheCamp; // If Ratford is in the camp

var int Ratford_HeroHasToCheckJorik; // Whether Ratford asked for checking the corpse
var int Ratford_StartCH0_JorikAfterDialogue; // If CH0_FindJorik has to be started after a dialogue
var int Ratford_WhatTheHellNotInSVM; // Whether Ratford has not to say `Ratford-CH0-None-Ratford-64245-1` by SVM
var int Ratford_WhatTheHellSaidInSVM; // Whether Ratford said `Ratford-CH0-None-Ratford-64245-1` by SVM

var int HuntersCamp_Busy; // If any of the hunters returned
var int HuntersCamp_AllCameBack; // If all hunters come back

var int Hero_TookJorikSketch; // Whether hero already took Jorik's sketch
var int Hero_IsDiving; // If hero is diving now

// The items in the player's inventory before the diving
var int Hero_ItemsBeforeDiving_ItMi_Stuff_Mug_01; // A mug
var int Hero_ItemsBeforeDiving_AltesSchwert; // An old sword
var int Hero_ItemsBeforeDiving_ItFoBeer; // A beer

/*
 *  Diego-Whistler smalltalk
 *
 *
 *   - SVMs order:
 *     Diego_CH0_None_Diego_67078			1D
 *	   Diego_CH0_None_Whistler_93885		1W
 *	   Diego_CH0_None_Whistler_25347		2W
 *	   Diego_CH0_None_Diego_78525			2D
 *	   Diego_CH0_None_Whistler_46374		3W
 *	   Diego_CH0_None_Diego_82774			3D
 *	   Diego_CH0_None_Diego_71218			4D
 *	   Diego_CH0_None_Whistler_58295		4W
 *	   Diego_CH0_None_Diego_18638			5D
 *	   Diego_CH0_None_Diego_23669			6D
 *	   Diego_CH0_None_Diego_5000			7D
 *	   Diego_CH0_None_Whistler_36003		5W
 *	   Diego_CH0_None_Whistler_46247		6W
 *	   Diego_CH0_None_Diego_38791			8D
 *	   Diego_CH0_None_Whistler_2972			7W
 */
// var int Smalltalk_DiegoHasGoToWhistlerAfterWP; // If Diego wasn't on the lower part of the Exchange Area, then he has to go to a WP first, then to Whistler // DAMIANUT-OPT-TODO: Diego ma iść ścieżką...
var string Smalltalk_Diego_WP; // Near which WP Diego has to stay while the smalltalk with Whistler
var int Smalltalk_HasToBeFinished; // Whether the smalltalk has to be finished
var int Smalltalk_Finished; // Whether the smalltalk was finished
var int Diego_Smalltalk_HasSVMToSay; // Whether Diego has SVM to say now
var int Whistler_Smalltalk_HasSVMToSay; // Whether Whistler has SVM to say now
var int Diego_Smalltalk_IsSaying; // Whether Diego is saying SVM now
var int Whistler_Smalltalk_IsSaying; // Whether Whistler is saying SVM now
var int Diego_Smalltalk_SVMSaid; // Last said SVM by Diego
var int Whistler_Smalltalk_SVMSaid; // Last said SVM by Whistler

/*
 * Trialog
 *
 *
 *   - Speeches order:
 *     Drax-CH0-None-Drax-54567				1D
 *	   Ratford-CH0-None-Ratford-71939		1R
 *	   Drax-CH0-None-Drax-85556				2D
 *	   Drax-CH0-None-Ratford-33049			2R
 *	   Drax-CH0-None-Drax-88422				3D
 *	   Drax-CH0-None-Drax-95327 			4D
 *	   Drax-CH0-None-Hero-68340				3R (Hero, but said in Ratford's ZS_*)
 *	   Drax-CH0-None-Ratford-90529			4R
 *	   Drax-CH0-None-Drax-44226				5D
 *	   Drax-CH0-None-Drax-54188				6D
 *	   Drax-CH0-None-Drax-73206				7D
 *	   Drax-CH0-None-Ratford-52326			5R
 *	   Drax-CH0-None-Ratford-68439			6R
 *	   Drax-CH0-None-Drax-15941				8D
 *	   Drax-CH0-None-Ratford-70406			7R
 *	   Drax-CH0-None-Ratford-94638			8R
 *	   Drax-CH0-None-Ratford-61772			9R
 */
var int Trialog_Sequence_Started; // Whether the ending sequence was started
var int Trialog_HeroForcedToAPosition; // Whether hero was forced to the position, where has to talk
var int Trialog_During_Talking; // Whether they are during talking
var int Trialog_HeroReachedFP; // Whether hero reached `FP_HERO_000`
var int Trialog_HeroStartedUsingBench; // If hero started to sit
var int Trialog_HeroIsSitting; // If hero is sittings
var int Trialog_EndCameraStarted; // If the end camera started

var int Ratford_Smalltalk_HasSVMToSay; // Whether Ratford has SVM to say now
var int Drax_Smalltalk_HasSVMToSay; // Whether Drax has SVM to say now
var int Ratford_Smalltalk_IsSaying; // Whether Ratford is saying SVM now
var int Drax_Smalltalk_IsSaying; // Whether Drax is saying SVM now
var int Ratford_Smalltalk_SVMSaid; // Last said SVM by Ratford
var int Drax_Smalltalk_SVMSaid; // Last said SVM by Drax

// MISSIONS
var int MIS_CH0_APlaceToSleep; // "Miejsce do spania"
var int MIS_CH0_DraxHunt; // "Polowanie na ścierwojady"
var int MIS_CH0_FindJorik; // "Poszukiwania Jorika"
var int MIS_CH0_KirgoFight; // "Sparing"
var int MIS_CH0_OrryBeer; // "Spragniony strażnik"

// The Shadowbeast
var int Shadowbeast_Inserted; // Whether the shadowbeast was inserted
var int Shadowbeast_VisualFXPlayed; // Whether VFX was played at inserting
var int Shadowbeast_AI_DidntSeePlayerRecently; // To avoid hitting him behind a wall. Used in `ZS_MM_Attack`
