func void ZS_Trialog_Drax ()
{
	PrintDebugNpc			(PD_TA_FRAME,	"ZS_Trialog_Drax");
	
	// If the last trialog didn't start
	if (Trialog_Sequence_Started == false)
	{
		B_SmalltalkPerception();
	} else
	{
		Perception_Overdialog();			
		self.aivar[AIV_SPECIALPERCSET] = true;
	};
	
	if (!C_BodyStateContains(self, BS_SIT))
	{
		AI_SetWalkmode 	(self, NPC_WALK);		
	
		if (Hlp_StrCmp (Npc_GetNearestWP(self), self.wp) == FALSE)
    	{
			AI_GotoWP	(self, self.wp);
		};
	};	
	
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_Trialog_Drax_Loop ()
{
	PrintDebugNpc			(PD_TA_LOOP,"ZS_Trialog_Drax_Loop");
	
	if (Drax_Smalltalk_HasSVMToSay == true)
	{
		if (Drax_Smalltalk_IsSaying == false)
		{
			if (0 == Drax_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_GO");
				Wld_SendTrigger("EVT_CAM_TRIA_DRAX_1");
				AI_StopLookAt(hero);
				AI_LookAtNpc(hero, self);
				AI_LookAtNpc(self, RatfordNpc);
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Drax_54567");
			} else if (1 == Drax_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_RATFORD_1");
				Wld_SendTrigger("EVT_CAM_TRIA_DRAX_2");
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Drax_85556");
			} else if (2 == Drax_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_RATFORD_2");
				Wld_SendTrigger("EVT_CAM_TRIA_DRAX_3");
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Drax_88422");
			} else if (3 == Drax_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_DRAX_3");
				Wld_SendTrigger("EVT_CAM_TRIA_DRAX_ADD_1");
				AI_StopLookAt(self);
				AI_LookAtNpc(self, hero);
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Drax_95327");
			} else if (4 == Drax_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_RATFORD_3");
				Wld_SendTrigger("EVT_CAM_TRIA_DRAX_4");
				AI_StopLookAt(self);
				AI_LookAtNpc(self, RatfordNpc);
				AI_StopLookAt(RatfordNpc);
				AI_LookAtNpc(RatfordNpc, self);
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Drax_44226");
			} else if (5 == Drax_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_DRAX_4");
				Wld_SendTrigger("EVT_CAM_TRIA_DRAX_ADD_2");
				AI_StopLookAt(self);
				AI_LookAtNpc(self, hero);
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Drax_54188");
			} else if (6 == Drax_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_DRAX_ADD_2");
				Wld_SendTrigger("EVT_CAM_TRIA_DRAX_ADD_3");
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Drax_73206");
			} else if (7 == Drax_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_RATFORD_ADD_1");
				Wld_SendTrigger("EVT_CAM_TRIA_DRAX_5");
				AI_StopLookAt(self);
				AI_LookAtNpc(self, RatfordNpc);
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Drax_15941");
			};
			
			Drax_Smalltalk_IsSaying = true;
		} else
		{
			// Drax stop saying
			Drax_Smalltalk_IsSaying = false;
			
			Drax_Smalltalk_SVMSaid += 1;
			
			if (1 == Drax_Smalltalk_SVMSaid)
			|| (2 == Drax_Smalltalk_SVMSaid)
			|| (4 == Drax_Smalltalk_SVMSaid)
			|| (7 == Drax_Smalltalk_SVMSaid)
			|| (8 == Drax_Smalltalk_SVMSaid)
			{
				// Ratford now
				Drax_Smalltalk_HasSVMToSay = false;
				Ratford_Smalltalk_HasSVMToSay = true;
			};
		};
	};
	
	// Change perception during the trialog
	if (Trialog_Sequence_Started == false)
	{
		if (self.aivar[AIV_SPECIALPERCSET] == false)
		{
			Perception_Overdialog();
			
			self.aivar[AIV_SPECIALPERCSET] = true;
		};
	};
	
	//-------- Sitzgelegenheit suchen ! --------
	if (!C_BodyStateContains(self, BS_SIT))
	&& (Wld_IsMobAvailable(self, "CRATE"))
	{
		_ = AI_UseMob		(self,"CRATE",1);					// Benutze den Mob einmal bis zum angegebenen State
		self.aivar[AIV_TAPOSITION] = ISINPOS;
		return 	LOOP_CONTINUE;
	}

	//-------- Zufalls-Animationen spielen ! --------
	else if (Trialog_Sequence_Started == false)
	{
		var int sitreaktion;
		sitreaktion = Hlp_Random (100);
		PrintDebugInt	(PD_TA_DETAIL, "...Zufallsani-Wurf: ", sitreaktion);
		
		if (sitreaktion >= 90)
		{
			AI_PlayAniBS (self, "R_BENCH_RANDOM_1",BS_SIT);
		}
		else if (sitreaktion >= 85)	
		{
			AI_PlayAniBS (self, "R_BENCH_RANDOM_2",BS_SIT);
		}
		else if (sitreaktion >= 80)	
		{
			AI_PlayAniBS (self, "R_BENCH_RANDOM_3",BS_SIT);
		}
		else if (sitreaktion >= 75)	
		{
			AI_PlayAniBS (self, "R_BENCH_RANDOM_4",BS_SIT);
		};
	};
	
	AI_Wait			(self,	1);
	return 			LOOP_CONTINUE;
};

func void ZS_Trialog_Drax_End ()
{
	PrintDebugNpc (PD_TA_FRAME,"ZS_Trialog_Drax_End");
    _ = AI_UseMob (self,"CRATE",-1);
};

