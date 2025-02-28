/*
 *  ZS_Inspect
 *   - NyrasPrologueDemake: NPC insepct a place (used in Exchange Area only)
 */
func void ZS_Inspect () 
{
    PrintDebugNpc(PD_TA_FRAME,"ZS_Inspect");
    
	B_SetPerception(self);
	AI_SetWalkmode(self,NPC_WALK);		// Walkmode für den Zustand
	
	AI_GotoWP(self, self.wp);               // Gehe zum Tagesablaufstart
	
	self.aivar[AIV_ITEMFREQ] = (Hlp_Random (5) + 5);
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func void ZS_Inspect_Loop ()
{
    PrintDebugNpc(PD_TA_LOOP,"ZS_Inspect_Loop");
	
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		if (Npc_GetDistToWP(self, self.wp) < HAI_DIST_WP)
		{
			if (Npc_IsOnFP(self,"INSPECT"))
			{
				AI_AlignToFP(self);
			} else if (Wld_IsFPAvailable (self, "INSPECT"))
			{
				AI_GotoFP(self,"INSPECT");
				AI_AlignToFP(self);
			} else
			{
				AI_AlignToWP(self);
			};
			
			self.aivar[AIV_TAPOSITION] = ISINPOS;
		};
	} else if (Npc_GetStateTime(self) >= self.aivar[AIV_ITEMFREQ])
	{
		AI_PlayAni(self,"T_PLUNDER");
		self.aivar[AIV_ITEMFREQ] = (Hlp_Random (5) + 5);
		Npc_SetStateTime(self,0);
	};

	AI_Wait(self,1);
};

func void ZS_Inspect_End ()
{
    PrintDebugNpc(PD_TA_FRAME,"ZS_Inspect_End");
};


	