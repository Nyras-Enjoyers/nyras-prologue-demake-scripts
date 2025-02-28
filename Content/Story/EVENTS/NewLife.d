/*
 *  NewLife.d
 *   - Nyras says SVM at the entry to Exchange Area
 */

var int Trigger_NewLife_Triggered;
func void TRIGGER_NEWLIFE_FUNC()
{
	// SAFETY CHECK
	if (Hlp_IsValidNpc(self) == false) { return; };
	
	// Is player
	if (Npc_IsPlayer(self) == false) { return; };
	
	// If not triggered before
	if (Trigger_NewLife_Triggered == false)
	{
		// Say SVM
		AI_OutputSVM_Overlay(self, NULL, "$Hero_CH0_None_Hero_12036");

		// Triggered
		Trigger_NewLife_Triggered = true;
	};
};
