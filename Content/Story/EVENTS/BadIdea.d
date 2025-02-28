/*
 *  BadIdea.d
 *   - Nyras says SVM when comes to the beds in a house in Exchange Area
 */

var int Trigger_BadIdea_Triggered;
func void TRIGGER_BADIDEA_FUNC()
{
	// SAFETY CHECK
	if (Hlp_IsValidNpc(self) == false) { return; };
	
	// Is player
	if (Npc_IsPlayer(self) == false) { return; };
	
	// If not triggered before
	if (Trigger_BadIdea_Triggered == false)
	{
		// Say SVM
		AI_OutputSVM_Overlay(self, NULL, "$Hero_CH0_None_Hero_20445");

		// Triggered
		Trigger_BadIdea_Triggered = true;
	};
};
