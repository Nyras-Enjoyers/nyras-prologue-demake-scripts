/************************************************************************************
*	B_HeyYou																		*
*	=======																			*
*																					* 
*************************************************************************************/ 
func void B_HeyYou(var C_NPC slf, var C_NPC oth)
{
	// ------ Spieler labert NSC an ------
	if (slf.aivar[AIV_NpcStartedTalk] == false)
	{
		AI_OutputSVM(oth, slf, "$Hero_CH0_None_Hero_17013");

		if ( (!C_BodystateContains(slf, BS_SIT)) || (!Npc_CanSeeNpc(slf, oth)) )
		{
			AI_Wait(slf, 0.5);
			AI_StandUp(slf);
			// Will be turned in `B_AssessTalk`
			if (!C_BodystateContains(slf, BS_SNEAK))
			{
				AI_TurnToNpc(slf, oth);
			};
		} else
		{
			AI_Wait(slf, 1.1);
		};
		
		// Twisted head fix
		AI_StopLookAt(oth);
	};
};
				