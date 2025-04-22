/*
 *  ZS_Start_Diego
 *   - NyrasPrologueDemake: Diego's start routine
 */
func void ZS_Start_Diego()
{
	GuardPerception();
	Npc_PercEnable(self, PERC_ASSESSPLAYER, B_AssessSC);
	
	AI_StandUp(self);				
	AI_SetWalkmode(self,NPC_WALK);
	
	if (Wld_IsFPAvailable(self, "FP_STAND"))
	{																	
		AI_GotoFP(self, "FP_STAND");
		AI_AlignToFP(self);
	};
};
func int ZS_Start_Diego_loop()
{
	AI_Wait(self, 1);
	
	return LOOP_CONTINUE;
};
func void ZS_Start_Diego_end()
{
};
