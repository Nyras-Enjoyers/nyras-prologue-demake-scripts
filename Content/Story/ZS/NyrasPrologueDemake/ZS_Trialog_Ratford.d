func void ZS_Trialog_Ratford ()
{
    PrintDebugNpc(PD_TA_FRAME,"ZS_Trialog_Ratford");
    
	B_SmalltalkPerception();
	
	if (!C_BodyStateContains(self, BS_MOBINTERACT))
	{
		AI_SetWalkmode (self,NPC_WALK);		// Walkmode für den Zustand
		if ((Hlp_StrCmp(Npc_GetNearestWp (self),self.wp)== 0))
		{
			AI_GotoWP	(self, self.wp);
		};
		_ = AI_UseMob (self,"PAN",1);			// Benutze den Mob einmal bis zum angegebenen State
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
};

func int ZS_Trialog_Ratford_Loop ()
{
    PrintDebugNpc(PD_TA_LOOP,"ZS_Trialog_Ratford_Loop");
	
	if (Ratford_Smalltalk_HasSVMToSay == true)
	{
		if (Ratford_Smalltalk_IsSaying == false)
		{
			if (0 == Ratford_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_DRAX_1");
				Wld_SendTrigger("EVT_CAM_TRIA_RATFORD_1");
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Ratford_71939");
			} 

			else if (1 == Ratford_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_DRAX_2");
				Wld_SendTrigger("EVT_CAM_TRIA_RATFORD_2");
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Ratford_33049");
			} 

			else if (2 == Ratford_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_DRAX_ADD_1");
				Wld_SendTrigger("EVT_CAM_TRIA_HERO");
				Npc_ClearAIQueue(hero);
				AI_RemoveWeapon(hero);
				AI_OutputSVM(hero, NULL, "$Drax_CH0_None_Hero_68340");
				AI_Wait(self, 3);
			} 

			else if (3 == Ratford_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_HERO");
				Wld_SendTrigger("EVT_CAM_TRIA_RATFORD_3");
				AI_StopLookAt(hero);
				AI_StopLookAt(self);
				AI_LookAtNpc(self, hero);
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Ratford_90529");
			} 

			else if (4 == Ratford_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_DRAX_ADD_3");
				Wld_SendTrigger("EVT_CAM_TRIA_RATFORD_4");
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Ratford_52326");
			} 

			else if (5 == Ratford_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_RATFORD_4");
				Wld_SendTrigger("EVT_CAM_TRIA_RATFORD_ADD_1");
				AI_StopLookAt(self);
				AI_LookAtNpc(self, hero);
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Ratford_68439");
			} 

			else if (6 == Ratford_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_DRAX_5");
				Wld_SendTrigger("EVT_CAM_TRIA_RATFORD_5");
				AI_StopLookAt(DraxNpc);
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Ratford_70406");
			} 

			else if (7 == Ratford_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_RATFORD_5");
				Wld_SendTrigger("EVT_CAM_TRIA_RATFORD_ADD_2");
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Ratford_94638");
			} 

			else if (8 == Ratford_Smalltalk_SVMSaid)
			{
				Wld_SendUnTrigger("EVT_CAM_TRIA_RATFORD_ADD_2");
				Camera_EndGame_Run();
				AI_OutputSVM(self, NULL, "$Drax_CH0_None_Ratford_61772");
			};
			
			Ratford_Smalltalk_IsSaying = true;
		} 

		else
		{
			// Ratford stop saying
			Ratford_Smalltalk_IsSaying = false;
			
			Ratford_Smalltalk_SVMSaid += 1;
			
			if (1 == Ratford_Smalltalk_SVMSaid)
			|| (2 == Ratford_Smalltalk_SVMSaid)
			|| (4 == Ratford_Smalltalk_SVMSaid)
			|| (6 == Ratford_Smalltalk_SVMSaid)
			{
				// Drax now
				Ratford_Smalltalk_HasSVMToSay = false;
				Drax_Smalltalk_HasSVMToSay = true;
			} 
			
			else if (9 == Ratford_Smalltalk_SVMSaid)
			{
				// Camera_EndGame_Run();
			};
		};
	};

	// Change perception during the trialog
	if (Trialog_Sequence_Started == true)
	{
		if (self.aivar[AIV_SPECIALPERCSET] == false)
		{
			Perception_Overdialog();
			
			self.aivar[AIV_SPECIALPERCSET] = true;
		};
	};
	
	if (C_BodyStateContains(self, BS_MOBINTERACT) == false)
	{
		_ = AI_UseMob(self,"PAN",1);
		self.aivar[AIV_TAPOSITION] = NOTINPOS;
	};

	AI_Wait(self,1);
	
	// To not interrupt while walking to the bench
	if (Drax_Smalltalk_HasSVMToSay == true)
	|| (Ratford_Smalltalk_HasSVMToSay == true)
	{
		if (Ratford_Smalltalk_SVMSaid != 2)
		|| (Ratford_Smalltalk_IsSaying == false)
		{
			Npc_ClearAIQueue(hero);
		} else
		{
			AI_RemoveWeapon(hero);
		};
		AI_Wait(hero,10);
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Trialog_Ratford_End ()
{
	PrintDebugNpc(PD_TA_FRAME,"ZS_Trialog_Ratford_End");
    
	_ = AI_UseMob (self,"PAN",-1);			// Stell die Pfanne weg
	AI_UseItem (self,ItFoMutton);
};

