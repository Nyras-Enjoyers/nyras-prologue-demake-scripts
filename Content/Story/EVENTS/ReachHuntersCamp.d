/*
 *  ReachHuntersCamp.d
 *   - handle entering to a hunters's camp
 */
var int Trigger_ReachHuntersCamp_Alone; // When hero reach the camp, and nobody is here
func void TRIGGER_REACH_HUNTERS_CAMP_FUNC()
{
	// SAFETY CHECK
	if (Hlp_IsValidNpc(self) == false) { return; };
	
	// Is player
	if (Npc_IsPlayer(self) == false) { return; };
	
	// If not triggered before, when hero is alone
	if (Trigger_ReachHuntersCamp_Alone == false)
	&& (HuntersCamp_Busy == false)
	{
		// Say SVM
		AI_OutputSVM_Overlay(self, NULL, "$Hero_CH0_None_Hero_62833");

		// Triggered
		Trigger_ReachHuntersCamp_Alone = true;
	};
};
