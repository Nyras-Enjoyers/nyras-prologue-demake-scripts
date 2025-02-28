/*
 *  TRIGGER_JORIK_CORPSE_FUNC
 *   - Ratford comes, if Nyras found a corpse
 */
func void TRIGGER_JORIK_CORPSE_FUNC()
{
	// SAFETY CHECK
	if (Hlp_IsValidNpc(self) == false) { return; };
	
	// Is player
	if (Npc_IsPlayer(self) == false) { return; };
	
	// Ratford's comes
	if (Jorik_CorpseReached == false)
	{
		// Ratford wants talk
		Ratford_PissedOff = false;
		Ratford_GentlyPissedOff = false;
		
		// Set to WP near player and set to the routine of staying near the corpse
		AI_Teleport(RatfordNpc, "RATFORD_JORIK_FOUND_START");
		Npc_ExchangeRoutine(RatfordNpc, "Jorik");

		// The corpse reached
		Jorik_CorpseReached = true;
	};
};

/*
 *  JORIK_CORPSE_COND
 *   - to not open, as a sketch was taken
 */
func int JORIK_CORPSE_COND()
{
	if (Hlp_IsValidNpc(self) == false) { return false; };
	
	return (Hero_TookJorikSketch == false);
};
