func void ZS_Start_Ratford()
{
	B_SmalltalkPerception ();
	Npc_PercEnable  (self,	PERC_ASSESSPLAYER, 	B_AssessSC);
	
	AI_StandUp		(self);				
	AI_SetWalkmode 	(self,NPC_WALK);
	AI_GotoWP		(self, self.wp);
	
	if (Wld_IsFPAvailable(self,"STAND"))
	{																	
		AI_GotoFP (self, "STAND");
		AI_AlignToFP (self);
	} else if (Npc_IsOnFP(self, "STAND"))
	{
		AI_AlignToFP(self);
	}
	else
	{
		AI_AlignToWP	(self);
	};
	
    AI_PlayAni (self,"T_STAND_2_LGUARD");
	
	self.aivar[AIV_SPECIALANILASTPLAYED] = false;
};

func void ZS_Start_Ratford_loop()
{
	var int zufall;
	zufall = Hlp_Random(100);
	
	if (zufall >= 95)
	&& (self.aivar[AIV_SPECIALANILASTPLAYED] == false)
	{
		AI_PlayAni (self,"T_LGUARD_2_STAND");
		AI_PlayAni (self,"T_SEARCH");
		AI_PlayAni (self,"T_STAND_2_LGUARD");
		self.aivar[AIV_SPECIALANILASTPLAYED] = true;
	}
	else if (zufall >= 90)
	{
		AI_PlayAni (self,"T_LGUARD_SCRATCH");
		self.aivar[AIV_SPECIALANILASTPLAYED] = false;
	}
	else if (zufall >= 80)
	{
		AI_PlayAni (self,"T_LGUARD_STRETCH");
		self.aivar[AIV_SPECIALANILASTPLAYED] = false;
	}
	else if (zufall >= 70)
	{
		AI_PlayAni (self,"T_LGUARD_CHANGELEG");
		self.aivar[AIV_SPECIALANILASTPLAYED] = false;
	};
	
	AI_Wait		(self, 1);
};

func void ZS_Start_Ratford_end()
{
	AI_PlayAni (self,"T_LGUARD_2_STAND");	
};
