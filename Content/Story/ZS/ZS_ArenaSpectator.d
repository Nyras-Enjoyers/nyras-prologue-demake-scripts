func void ZS_ArenaSpectator()
{
	OccupiedPerception();

	AI_GotoWP(self, self.wp);
	AI_GotoFP(self,"STAND");
	AI_AlignToFP( self );				//Richte Dich aus
};

func int ZS_ArenaSpectator_loop()
{
	return LOOP_CONTINUE;
};

func void ZS_ArenaSpectator_end()
{
};