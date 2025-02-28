func void ZS_Drax_Hunt()
{
	DraxHuntPerception();
	
	AI_StandUp(self);				
	AI_SetWalkmode(self, NPC_RUN);
	AI_GotoWP(self, self.wp);
	AI_AlignToWP(self);
};
func int ZS_Drax_Hunt_loop()
{
	AI_Wait(self, 1);
	
	return LOOP_CONTINUE;
};
func void ZS_Drax_Hunt_end()
{
};
