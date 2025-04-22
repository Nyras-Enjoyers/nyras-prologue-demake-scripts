func void ZS_Smalltalk_Whistler () 
{
	B_SmalltalkPerception();
	
	AI_StopLookAt(self);

	// Adjust a position
	if (Npc_GetDistToWP(self, self.wp) > 70)
	{
		AI_StandUp		(self);				
		AI_SetWalkmode 	(self,NPC_WALK);
		AI_GotoWP		(self, self.wp);
		
		AI_AlignToWP(self);
	} else
	{
		if (Npc_IsOnFP(self, "STAND"))
		{
			AI_AlignToFP(self);
		} else
		{
			AI_AlignToWP(self);
		};
	};

	AI_PlayAni (self,"T_STAND_2_LGUARD");
	
	// If player interrupted the smalltalk
	if (Whistler_Smalltalk_HasSVMToSay == true)
	|| (Diego_Smalltalk_HasSVMToSay == true)
	|| (Whistler_Smalltalk_IsSaying == true)
	|| (Diego_Smalltalk_IsSaying == true)
	{
		// Look at Diego
		AI_LookAtNpc(self, DiegoNpc);
	};
		
	// Start a SVM again, if has to say
	if (Whistler_Smalltalk_IsSaying == true)
	{
		Whistler_Smalltalk_IsSaying = false;
	};
};

func int ZS_Smalltalk_Whistler_Loop()
{
	if (Whistler_Smalltalk_HasSVMToSay == true)
	{
		if (Whistler_Smalltalk_IsSaying == false)
		{
			if (0 == Whistler_Smalltalk_SVMSaid)
			{
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Whistler_93885");
				// Diego looks, if they are not face to face
				if (DiegoNpc.aivar[AIV_TAPOSITION] == ISINPOS)
				{
					AI_LookAtNpc(DiegoNpc, WhistlerNpc);
				};
			} else if (1 == Whistler_Smalltalk_SVMSaid)
			{
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Whistler_25347");
			} else if (2 == Whistler_Smalltalk_SVMSaid)
			{
				// Whistler stop looking, if they are not face to face
				if (DiegoNpc.aivar[AIV_TAPOSITION] == ISINPOS)
				{
					AI_StopLookAt(self);
				};
			
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Whistler_46374");
			} else if (3 == Whistler_Smalltalk_SVMSaid)
			{
				// Whistler stop looking
				AI_StopLookAt(self);
			
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Whistler_58295");
			} else if (4 == Whistler_Smalltalk_SVMSaid)
			{
				// If they are not face to face
				if (DiegoNpc.aivar[AIV_TAPOSITION] == ISINPOS)
				{
					// Diego stop looking
					AI_StopLookAt(DiegoNpc);
				// If they are
				} else
				{
					// Whistler looks
					AI_LookAtNpc(self, DiegoNpc);
				};
			
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Whistler_36003");
			} else if (5 == Whistler_Smalltalk_SVMSaid)
			{
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Whistler_46247");
			} else if (6 == Whistler_Smalltalk_SVMSaid)
			{
				// If they are not face to face
				if (DiegoNpc.aivar[AIV_TAPOSITION] == NOTINPOS)
				{
					// Whistler looks
					AI_LookAtNpc(self, DiegoNpc);
				};
				
				AI_OutputSVM(self, NULL, "$Diego_CH0_None_Whistler_2972");
			};
			
			Whistler_Smalltalk_IsSaying = true;
		} else
		{
			// Whistler stop saying
			Whistler_Smalltalk_IsSaying = false;
			
			Whistler_Smalltalk_SVMSaid += 1;
			
			if (2 == Whistler_Smalltalk_SVMSaid)
			|| (3 == Whistler_Smalltalk_SVMSaid)
			|| (4 == Whistler_Smalltalk_SVMSaid)
			|| (6 == Whistler_Smalltalk_SVMSaid)
			{
				// Diego now
				Whistler_Smalltalk_HasSVMToSay = false;
				Diego_Smalltalk_HasSVMToSay = true;
			// If the smalltalk finished
			} else if (Whistler_Smalltalk_SVMSaid == 7)
			{
				Smalltalk_HasToBeFinished = false;
				Smalltalk_Finished = true;
				
				B_ExchangeRoutine_C_NPC(self, "AfterSmalltalk");
			};
		};
	};
	
	AI_Wait(self, 0.5);
	
	return LOOP_CONTINUE;
};

func void ZS_Smalltalk_Whistler_End()
{
	AI_StopLookAt(self);
	
	AI_PlayAni (self,"T_LGUARD_2_STAND");
};
