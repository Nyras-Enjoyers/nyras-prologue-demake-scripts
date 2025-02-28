func void ZS_Sneak_Observe()
{
	GuardPerception ();
	Npc_PercEnable  (self,	PERC_ASSESSPLAYER, 	B_AssessSC);
	
	AI_StandUp		(self);				
	AI_SetWalkmode 	(self,NPC_WALK);
	AI_GotoWP		(self, self.wp);
	
	if (Wld_IsFPAvailable(self,"FP_SNEAK"))
	{																	
		AI_GotoFP (self, "FP_SNEAK");
		AI_AlignToFP (self);
	} else if (Npc_IsOnFP(self, "SNEAK"))
	{
		AI_AlignToFP (self);
	} else
	{
		AI_AlignToWP	(self);
	};
	
    AI_PlayAniBS(self, "T_RUN_2_SNEAK", BS_SNEAK);
};

func int ZS_Sneak_Observe_loop()
{
	return LOOP_CONTINUE;
};

func void ZS_Sneak_Observe_end()
{
	// If is sneaking
	if (C_BodyStateContains(self, BS_SNEAK) == true)
	{
		AI_PlayAniBS(self, "T_SNEAK_2_RUN", BS_STAND);
	};
};
