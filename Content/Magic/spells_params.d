
// **************************************************
// Zaubersprüche
// Hier stehen die Definitionen der
// logischen Sprüche
// Autor: Carsten Edenfeld
// **************************************************

// SpellCat
CONST INT SPELL_GOOD		= 	0;
CONST INT SPELL_NEUTRAL		= 	1;
CONST INT SPELL_BAD			= 	2;


CONST INT SPL_DONTINVEST 	= 	0;		// Es können keine weiteren Manapunkte investiert werden. Erst durch CTRL loslassen geht der Spell ab
CONST INT SPL_RECEIVEINVEST	= 	1;		// Wirkung durchgeführt, es können weitere Invest kommen, zB.bei Heal nach jedem Pöppel
CONST INT SPL_SENDCAST		= 	2;		// Starte den Zauber-Effekt (wie CTRL loslassen), automatischer Abbruch
CONST INT SPL_SENDSTOP		= 	3;		// Beende Zauber ohne Effekt
CONST INT SPL_NEXTLEVEL		=	4;		// setze den Spruch auf den nächsten Level
