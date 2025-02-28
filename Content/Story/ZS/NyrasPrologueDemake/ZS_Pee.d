func void ZS_Pee ()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Pee");
	
	GuardPerception ();
	Npc_PercEnable  (self,	PERC_ASSESSPLAYER, 	B_AssessSC);	
	
	AI_SetWalkmode (self,NPC_WALK);		// Walkmode für den Zustand
	if !(Npc_IsOnFP(self,"PEE"))
	{
		AI_GotoWP(self, self.wp);               // Gehe zum Tagesablaufstart
	} else
	{
		AI_AlignToFP(self);
	};
};
func int ZS_Pee_Loop ()
{
	PrintDebugNpc(PD_TA_LOOP,"ZS_Pee_Loop");
	
	if !(Npc_IsOnFP(self,"PEE"))
	{
		if (Wld_IsFPAvailable(self, "PEE"))
		{
			AI_GotoFP(self,"PEE");
			AI_AlignToFP(self);
		};
	};
	
	if (Npc_GetStateTime(self) > 5)
	{
		AI_PlayAni(self, "T_PEE");
		AI_ContinueRoutine(self);
		Npc_SetStateTime(self, 0);
	};
	
	AI_Wait(self, 1);
	
	return LOOP_CONTINUE;
};
func void ZS_Pee_End ()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Pee_End");
};
