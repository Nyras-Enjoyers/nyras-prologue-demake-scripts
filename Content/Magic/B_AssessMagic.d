// B_AssessMagic. Wird auf dem Opfer einmalig aufgerufen, wenn die Perception MAGIC (ASSESSMAGIC) aktiviert wird

// FIXME: 	hier m�ssen f�r jeden Spruch noch Fallunterscheidungen f�r MAIN / IMMORTAL Characters
//			ber�cksichtigt werden, die evtl. nicht von den Spr�chen beeinflu�t werden sollen!






/*******************************************************************************************/
func void B_AssessMagic ()
{
	PrintGlobals		(PD_MAGIC);

	PrintDebugNpc		( PD_MAGIC, "B_AssessMagic" );
	
};


// Anmeldung der AssessMagic-Wahrnehmung, wenn der Player NICHT zustandsgesteuert ist
const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic; 			