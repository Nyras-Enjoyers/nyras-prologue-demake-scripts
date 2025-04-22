func void ZS_WoodChoppin_Diego()
{
    PrintDebugNpc (PD_TA_FRAME,"ZS_WoodChoppin_Diego");
    
	B_SetPerception (self); 

	// Create a hatchet, if hasn't
	if (Npc_HasItems(self, ItMw_1h_Misc_Axe) == 0)
	{
		CreateInvItem(self, ItMw_1h_Misc_Axe);
	};

	if !(C_BodyStateContains(self, BS_MOBINTERACT_INTERRUPT))
	{
		AI_SetWalkmode (self,NPC_WALK);	

		if ((Hlp_StrCmp(Npc_GetNearestWp (self), self.wp)== 0))
		{
			AI_GotoWP	(self, self.wp);
		};

		_ = AI_UseMob (self, "WOODCHOPPIN", 1);			
	};

	
};

func int ZS_WoodChoppin_Diego_Loop()
{
    PrintDebugNpc (PD_TA_LOOP, "ZS_WoodChoppin_Diego_Loop");
        
    var int randomizer;
 	randomizer = Hlp_Random	(20);
	
    if (Npc_GetStateTime (self) >= 100 + randomizer)
    {
    	B_InterruptMob ("WOODCHOPPIN");
    };

	AI_Wait(self, 1);
	
	return LOOP_CONTINUE;
};

func void ZS_WoodChoppin_Diego_End ()
{
	_ = AI_UseMob (self, "WOODCHOPPIN", -1);			
	
	PrintDebugNpc (PD_TA_FRAME, "ZS_WoodChoppin_Diego_End");
};