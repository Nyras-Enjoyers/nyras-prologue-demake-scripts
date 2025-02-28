// B_AssessMagic. Wird auf dem Opfer einmalig aufgerufen, wenn die Perception MAGIC (ASSESSMAGIC) aktiviert wird

// FIXME: 	hier müssen für jeden Spruch noch Fallunterscheidungen für MAIN / IMMORTAL Characters
//			berücksichtigt werden, die evtl. nicht von den Sprüchen beeinflußt werden sollen!






/*******************************************************************************************/
func void B_AssessMagic ()
{
	PrintGlobals		(PD_MAGIC);

	PrintDebugNpc		( PD_MAGIC, "B_AssessMagic" );
	
};


// Anmeldung der AssessMagic-Wahrnehmung, wenn der Player NICHT zustandsgesteuert ist
const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic; 			