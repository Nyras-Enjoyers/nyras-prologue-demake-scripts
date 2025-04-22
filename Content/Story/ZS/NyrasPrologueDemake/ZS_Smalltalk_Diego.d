func void ZS_Smalltalk_Diego () 
{
	B_SmalltalkPerception();

	AI_StopLookAt(self);

	// Check, whether is near a place to inspect
	if (Npc_GetDistToWP(self, self.wp) < HAI_DIST_WP)
	{
		if (Npc_IsOnFP(self,"INSPECT"))
		{
			AI_AlignToFP(self);
		} else if (Wld_IsFPAvailable(self, "INSPECT"))
		{
			AI_GotoFP(self,"INSPECT");
			AI_AlignToFP(self);
		} else
		{
			AI_AlignToWP(self);
		};
		
		self.aivar[AIV_ITEMFREQ] = (Hlp_Random (5) + 5);
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	} else
	{
		self.aivar[AIV_TAPOSITION] = NOTINPOS;
		AI_GotoNpc(self, WhistlerNpc);
		AI_TurnToNpc(self, WhistlerNpc);
	};
	
	// Check, whether Diego is on the lower level of the Exchange Area
	// If not, then first go to a waypoint below, to not jump from a height or do stupid things
	// INFO: A distance measured experimentally
	/*
	if (Npc_GetDistToWP(self, "WP_INTRO__007") < 1000)
	{
		AI_GotoWP(self, "WP_INTRO__004");
		
		Smalltalk_DiegoHasGoToWhistlerAfterWP = true;
	};
	*/
	
	// Start a SVM again, if has to say
	if (Diego_Smalltalk_IsSaying == true)
	{
		Diego_Smalltalk_IsSaying = false;
	};
};
func int ZS_Smalltalk_Diego_Loop()
{
	// Make sure, that Diego is enough close to Whistler
	

	if (Diego_Smalltalk_HasSVMToSay == true)
	{
		if (Diego_Smalltalk_IsSaying == false)
		{
			if (0 == Diego_Smalltalk_SVMSaid)
			{
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Diego_67078");
				
				// Start looking on Diego
				AI_LookAtNpc(WhistlerNpc, DiegoNpc);
				
				// Look, if they are face to face
				if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
				{
					AI_LookAtNpc(self, WhistlerNpc);
				};
			} else if (1 == Diego_Smalltalk_SVMSaid)
			{
				// Diego stop looking, if they are not face to face
				if (self.aivar[AIV_TAPOSITION] == ISINPOS)
				{
					AI_StopLookAt(self);
				};
				
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Diego_78525");
			} else if (2 == Diego_Smalltalk_SVMSaid)
			{
				// If they are not face to face
				if (self.aivar[AIV_TAPOSITION] == ISINPOS)
				{
					// Diego looks
					AI_LookAtNpc(self, WhistlerNpc);
					
					// Whistler as well
					AI_LookAtNpc(WhistlerNpc, DiegoNpc);
				};
			
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Diego_82774");
			} else if (3 == Diego_Smalltalk_SVMSaid)
			{
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Diego_71218");
			} else if (4 == Diego_Smalltalk_SVMSaid)
			{
				// Diego stop looking, if they are not face to face
				if (self.aivar[AIV_TAPOSITION] == ISINPOS)
				{
					AI_StopLookAt(self);
				};
			
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Diego_18638");
			} else if (5 == Diego_Smalltalk_SVMSaid)
			{
				// If they are not face to face
				if (self.aivar[AIV_TAPOSITION] == ISINPOS)
				{
					// Diego looks
					AI_LookAtNpc(self, WhistlerNpc);
				};
					
				// Whistler looks in any case
				AI_LookAtNpc(WhistlerNpc, self);
				
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Diego_23669");
			} else if (6 == Diego_Smalltalk_SVMSaid)
			{
				// If they are not face to face
				if (self.aivar[AIV_TAPOSITION] == ISINPOS)
				{
					// Diego looks
					AI_LookAtNpc(self, WhistlerNpc);
				// If they are
				} else
				{
					// Whistler stop looking
					AI_StopLookAt(WhistlerNpc);
				};
			
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Diego_5000");
			} else if (7 == Diego_Smalltalk_SVMSaid)
			{
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Diego_38791");
			};
			
			Diego_Smalltalk_IsSaying = true;
		} else
		{
			// Diego stop saying
			Diego_Smalltalk_IsSaying = false;
			
			Diego_Smalltalk_SVMSaid += 1;
			
			if (1 == Diego_Smalltalk_SVMSaid)
			|| (2 == Diego_Smalltalk_SVMSaid)
			|| (4 == Diego_Smalltalk_SVMSaid)
			|| (7 == Diego_Smalltalk_SVMSaid)
			|| (8 == Diego_Smalltalk_SVMSaid)
			{
				// Whistler now
				Diego_Smalltalk_HasSVMToSay = false;
				Whistler_Smalltalk_HasSVMToSay = true;
			};
		};
	};
	
	// If is near `FP_INSPECT`
	if (self.aivar[AIV_TAPOSITION] == ISINPOS)
	{
		// Then play the animation from time to time
		if (Npc_GetStateTime(self) >= self.aivar[AIV_ITEMFREQ])
		{
			AI_PlayAni(self,"T_PLUNDER");
			self.aivar[AIV_ITEMFREQ] = (Hlp_Random (5) + 5);
			Npc_SetStateTime(self, 0);
		};
	};
	
	// The smalltalk finished
	if (Smalltalk_Finished == true)
	{
		B_ExchangeRoutine_C_NPC(self, "AfterSmalltalk");
	};
	
	AI_Wait(self, 0.5);
	
	return LOOP_CONTINUE;
};
func void ZS_Smalltalk_Diego_End()
{
	AI_StopLookAt(self);
};
