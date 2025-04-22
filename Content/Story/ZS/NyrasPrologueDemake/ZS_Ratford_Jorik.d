func void ZS_Ratford_Jorik()
{
	GuardPerception ();
	Npc_PercEnable  (self,	PERC_ASSESSPLAYER, 	B_AssessSC);
	
	AI_StandUp		(self);				
	AI_SetWalkmode 	(self,NPC_RUN);
	AI_GotoWP		(self, "RATFORD_JORIK_FOUND_STAY");
	
	if (Wld_IsFPAvailable(self,"FP_STAND"))
	{																	
		AI_GotoFP (self, "FP_STAND");
		AI_AlignToFP (self);
	};
	
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_Ratford_Jorik_loop()
{
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		if (Npc_IsOnFP(self, "FP_STAND") == false)
		{
			if (Wld_IsFPAvailable(self,"FP_STAND"))
			{																	
				AI_GotoFP (self, "FP_STAND");
				AI_AlignToFP (self);
			};
		} else
		{
			AI_AlignToFP (self);
		};
		
		AI_PlayAni (self,"T_STAND_2_LGUARD");
		
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
	
	var int zufall;
	zufall = Hlp_Random(100);
	
	if (zufall >= 95)
	{
		//AI_PlayAni (self,"T_LGUARD_2_STAND");
		//AI_PlayAni (self,"T_STAND_2_LGUARD");
	}
	else if (zufall >= 90)
	{
		AI_PlayAni (self,"T_LGUARD_SCRATCH");
	}
	else if (zufall >= 80)
	{
		AI_PlayAni (self,"T_LGUARD_STRETCH");
	}
	else if (zufall >= 70)
	{
		AI_PlayAni (self,"T_LGUARD_CHANGELEG");
	};
	
	AI_Wait		(self, 1);
	
	return LOOP_CONTINUE;
};

func void ZS_Ratford_Jorik_end()
{
	AI_PlayAni (self,"T_LGUARD_2_STAND");	
};
