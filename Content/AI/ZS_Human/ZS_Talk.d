	
FUNC VOID B_RefuseTalk()
{
	PrintDebugNpc	(PD_ZS_FRAME,"B_RefuseTalk");
	B_SmartTurnToNpc(self,other);
	// B_Say			(self,other,"$NOTNOW");
	_ = C_StopLookAt	(self);
};

// **********************************************************

FUNC void ZS_Talk ()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Talk");
	
	//-------- Verhindern von Mehrfachansprechen der NSCs --------
	if (other.aivar[AIV_INVINCIBLE]==TRUE)
	{
		PrintDebugNpc		(PD_ZS_CHECK,	"...SC spricht schon!");
		AI_ContinueRoutine	(self);
		return;				
	};
	
	C_ZSInit();	
	B_SetFaceExpression(self, other); //Attitüde bestimmt Gesichtsausdruck

	self.aivar[AIV_INVINCIBLE]=TRUE;
	other.aivar[AIV_INVINCIBLE]=TRUE;

	//Npc_PercEnable  (self, PERC_ASSESSDAMAGE 		,ZS_ReactToDamage	);
	//Npc_PercEnable  (self, PERC_ASSESSMAGIC		,B_AssessMagic		);
	//Npc_PercEnable  (self, PERC_ASSESSSURPRISE	,ZS_AssessSurprise	);
	//Npc_PercEnable  (self, PERC_ASSESSENEMY		,B_AssessEnemy		);
	//Npc_PercEnable  (self, PERC_ASSESSFIGHTER		,B_AssessFighter	);
	//Npc_PercEnable  (self, PERC_ASSESSTHREAT		,B_AssessFighter	);
	//Npc_PercEnable  (self, PERC_ASSESSWARN		,B_AssessWarn 		);
	//Npc_PercEnable  (self, PERC_ASSESSMURDER		,ZS_AssessMurder	);
	//Npc_PercEnable  (self, PERC_ASSESSDEFEAT		,ZS_AssessDefeat	);
	//Npc_PercEnable  (self, PERC_ASSESSFIGHTSOUND	,B_AssessFightSound	);
	//Npc_PercEnable  (self, PERC_CATCHTHIEF		,ZS_CatchThief 		);
	//Npc_PercEnable  (self, PERC_ASSESSTHEFT		,B_AssessTheft 		);

	// NyrasPrologueDemake: not during the trialogue
	if (Trialog_During_Talking == false)
	{
		// SC zu nah dran
		if (Npc_GetDistToNpc(other,self) < 80) 
		{
			AI_Dodge 		(other);
		};
	
		// KEIN DIALOG: NSC ist feindlich
		if	(Npc_GetTempAttitude(self,other) == ATT_HOSTILE)
		&&	(self.aivar[AIV_TALKBEFOREATTACK] == FALSE)
		{
			Npc_SetTarget 	(self,	other);
			B_AssessEnemy	();		
		};
	};
	
	// AMBIENT-INFOS werden nur Ambient-NSCs (Nicht-Main-NSCs) zugeordnet, 
	// die KEINE anderen Infos/Aufträge haben
	//if ( (self.npctype != npctype_main) && (self.npctype != npctype_friend) && (!NPC_CheckInfo(self,0)) && (!Npc_CheckInfo(self,1)) )
	//{
	//	B_AssignAmbientInfos (self);
	//};
	
	// SC labert NSC an
	/*
	if ( C_BodystateContains(self,BS_WALK) || C_BodystateContains(self,BS_RUN) )
	{
		B_Say (other,self,"$SC_HEYWAITASECOND");
	}
	else if (!Npc_CanSeeNpc(self, hero))
	{
		B_Say (other,self,"$SC_HEYTURNAROUND");
	}
	else
	{
		// nix sagen
	};
	*/
	
	// NyrasPrologueDemake: not during the trialogue
	if (Trialog_During_Talking == false)
	{
		// DIALOG geht los, NSC dreht sich zu dir
		if ( (!C_BodystateContains(self, BS_SIT)) || (!Npc_CanSeeNpc(self, hero)) )
		{
			AI_StandUp		(self);
			AI_TurnToNpc	(self,	hero);
		};
		
		if (Drax_HeroEnteredHuntAreaTooFast == false)
		|| (Npc_KnowsInfo(hero, DIA_ORG_819_Drax_Hello) == true)
		{
			B_FullStop			(hero);
		};
		AI_TurnToNpc		(hero,	self); // SC dreht sich zum Npc
		
					
		// NSC begrüßt dich, wenn der Spieler ihn angesprochen hat
		if (!hero.aivar[AIV_IMPORTANT])
		{
			B_GuildGreetings ();
		};
		
		// Equipment gestohlen?
		B_CheckStolenEquipment ();
	};
	
	
	
	// KenneSC-Flag auf TRUE setzen, wenn Main-NSC. (SC-Verkleidung dabei EGAL)
	if ( (self.npctype == npctype_main) || (self.npctype == npctype_friend) )
	{
		Npc_SetKnowsPlayer(self,other);
	};
	
	// NEWS checken, wenn der Spieler ihn angesprochen hat
	if (!hero.aivar[AIV_IMPORTANT])
	{
		// B_ReactToMemory ();
	};
		
	//AMBIENT INFOS
	// Nyras Prolog: not-needed
	// B_AssignAmbientInfos(self);
	
	// Kenne SC (wird für FindNSC-Infos gebraucht)
	self.aivar[AIV_FINDABLE] = TRUE;
	
	// Handle bothering from the back
	self.aivar[AIV_NpcStartedTalk] = false;
	
	// START Multiple Choice Dialog
	AI_ProcessInfos(self);
};

FUNC INT ZS_Talk_Loop ()
{
    PrintDebugNpc(PD_ZS_LOOP,"ZS_Talk_Loop");
    
   	if (C_BodyStateContains(self,BS_SIT))
	{
   		if (self.aivar[AIV_HANGAROUNDSTATUS] <= 1) //sitzt auf Boden, NICHT auf Bank, etc.
   		{
   			AI_LookAtNpc		(self, other);
   		};
   	};
   	
   	if ( InfoManager_HasFinished() )
   	{
		PrintDebugNpc(PD_ZS_CHECK,"...InfoManager beendet!");
		self.aivar[AIV_INVINCIBLE] = FALSE;
		other.aivar[AIV_INVINCIBLE] = FALSE;
		//AI_StopLookAt(self); // sitzende NSCs glotzen dem SC nach dem Dialog nach.
		B_ResetFaceExpression(self);
		return LOOP_END;
   	};

   	return LOOP_CONTINUE;
};

FUNC VOID ZS_Talk_End ()
{
	// To avoid a noise while adding the log entries
	B_LogEntry_AlreadyAdded = false;

	// Diego
	if (PC_Thief == Hlp_GetInstanceID(self))
	{
		// Whether `DIA_PC_Thief_Hello` is finished
		var int PC_Thief_Hello;
		if (PC_Thief_Hello == false)
		{
			if (Npc_KnowsInfo(hero, DIA_PC_Thief_Hello) == true)
			{
				// Start CH0_APlaceToSleep
				Log_CreateTopic(CH0_APlaceToSleep, LOG_MISSION);
				Log_SetTopicStatus(CH0_APlaceToSleep, LOG_RUNNING);
				B_LogEntry(CH0_APlaceToSleep, CH0_APlaceToSleep_0);
				MIS_CH0_APlaceToSleep = LOG_RUNNING;
	
				// To not be blocked on hero
				AI_TurnAway(self, hero);
				
				PC_Thief_Hello = true;
			};
		};
	// Kirgo
	} else if (GRD_251_Kirgo == Hlp_GetInstanceID(self))
	{
		// To call `DIA_GRD_251_Kirgo_After_Fight` dialogue
		if (Kirgo_ImmediatelyCommentFakeDuel == true)
		{
			Kirgo_ImmediatelyCommentFakeDuel = false;

			AI_StartState(self, ZS_Talk, 1, "");
		} else if (Kirgo_PlayerIsReady == true)
		{
			AI_OutputSVM(self, hero, "$Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_65948_6");
			Npc_SetTarget(self, hero);
			AI_WaitTillEnd(hero, self);
			AI_WaitTillEnd(self, hero);
			if (Npc_IsInFightMode(hero, FMODE_NONE) == true)
			{
				AI_DrawWeapon(hero);
			};
			AI_WaitTillEnd(self, hero);
			AI_WaitTillEnd(self, hero);
			AI_StartState(self, ZS_ATTACK, 1, "");
		};
		
		// Whether `DIA_GRD_251_Kirgo_Hello` finished
		var int GRD_251_Kirgo_Hello;
		if (GRD_251_Kirgo_Hello == false)
		{
			if (Npc_KnowsInfo(hero, DIA_GRD_251_Kirgo_Hello) == true)
			{
				GRD_251_Kirgo_Hello = true;
				
				// If player wants to fight just after hearing about a possibility to fight
				if (Kirgo_WantsFightNow == true)
				{
					// Start a mission
					KirgoFight_MissionStart();
				};
			};
		};
		
		// Whether `DIA_GRD_251_Kirgo_After_Fight` finished
		var int GRD_251_Kirgo_After_Fight;
		if (GRD_251_Kirgo_After_Fight == false)
		{
			if (Npc_KnowsInfo(hero, DIA_GRD_251_Kirgo_After_Fight) == true)
			{
				// Finish `CH0_KirgoFight mission`
				Log_SetTopicStatus	(CH0_KirgoFight, LOG_SUCCESS);
				MIS_CH0_KirgoFight = LOG_SUCCESS;
				B_LogEntry_Fake();
				
				// Give exp
				B_GiveXP(50);

				// Give talent
				Npc_SetTalentSkill(hero, NPC_TALENT_1H, 1);
				Npc_SetTalentValue(hero, NPC_TALENT_1H, Npc_GetTalentValue(hero, NPC_TALENT_1H)+5);
				
				// Print a message about giving a talent
				var string txt; txt = ConcatStrings(UI_Notification_SkillIncreasedFormat, Skill_Melee_OneHanded);
				txt = ConcatStrings(txt, " II");
				_ = PrintScreen(txt, -1,-1,"FONT_OLD_20_WHITE.TGA", _TIME_MESSAGE_GIVEN);

				GRD_251_Kirgo_After_Fight = true;
			};
		};
		
		// Whether `DIA_GRD_251_Kirgo_Ready_To_Fight_I_Am_Ready` was chosen, but player hasn't a weapon
		var int GRD_251_Kirgo_Ready_To_Fight_I_Am_Ready_No_Weapon;
		if (GRD_251_Kirgo_Ready_To_Fight_I_Am_Ready_No_Weapon == false)
		{
			if (Kirgo_HeroNoWeapon == true)
			{
				// If `CH0_KirgoFight` mission wasn't started
				if (MIS_CH0_KirgoFight == LOG_NONE)
				{
					// Start `CH0_KirgoFight` mission
					KirgoFight_MissionStart();
					
					// An entry about call to the duel when ready
					// INFO: The log entries are displayed in this order in Nyras Prologue.
					B_LogEntry(CH0_KirgoFight, CH0_KirgoFight_1);
				};
				
				// An entry about searching for a weapon
				// INFO: Even, if the mission was started. Because player could say, that "maybe later", and then won't have a weapon.
				// INFO 2: The condition to avoid noise while the log entries adding
				if (MIS_CH0_KirgoFight == LOG_NONE)
				{
					B_LogEntry_Silent(CH0_KirgoFight, CH0_KirgoFight_2);
				} else
				{
					B_LogEntry(CH0_KirgoFight, CH0_KirgoFight_2);
				};
				
				GRD_251_Kirgo_Ready_To_Fight_I_Am_Ready_No_Weapon = true;
			};
		};
		
		// Whether `DIA_GRD_251_Kirgo_Ready_To_Fight_Maybe_Later` was chosen, so player wants to fight later
		var int GRD_251_Kirgo_Ready_To_Fight_Maybe_Later;
		if (GRD_251_Kirgo_Ready_To_Fight_Maybe_Later == false)
		{
			if (Kirgo_WantsFightWaitAsReady == true)
			{
				// Start `CH0_KirgoFight mission`
				KirgoFight_MissionStart();
			
				// An entry about call to the duel when ready
				B_LogEntry_Silent(CH0_KirgoFight, CH0_KirgoFight_1);
				
				GRD_251_Kirgo_Ready_To_Fight_Maybe_Later = true;
			};
		};
	// Ratford
	} else if (ORG_818_Ratford == Hlp_GetInstanceID(self))
	{
		// If Ratford told to check the corpse
		if (Ratford_StartCH0_JorikAfterDialogue == true)
		{
			Log_CreateTopic		(CH0_FindJorik, LOG_MISSION);
			Log_SetTopicStatus	(CH0_FindJorik, LOG_RUNNING);
			B_LogEntry			(CH0_FindJorik, CH0_FindJorik_0);
			MIS_CH0_FindJorik = LOG_RUNNING;
			
			// If all scavengers were killed in Drax's hunt, and hero didn't start too fast, then Drax doesn't want to talk since checking Jorik's corpse, when already Ratford told to check it.
			if (MIS_CH0_DraxHunt == LOG_RUNNING)
			&& (Drax_AllScavengersKilled == true)
			&& (Drax_HeroStartedFightAlone == false)
			{
				Drax_IHaveNoTimeForThat = true;
			};
	
			Ratford_StartCH0_JorikAfterDialogue = false;
		// If Nyras talked with Ratford about the sketch from the corpse
		} else if (Ratford_CommentedFoundNote == true)
		&& (Ratford_LogEntriesAfterCommentingNoteAdded == false)
		{
			// Finished quest CH0_FindJorik
			Log_SetTopicStatus(CH0_FindJorik, LOG_SUCCESS);
			MIS_CH0_FindJorik = LOG_SUCCESS;
			
			// Give exp
			B_GiveXP(50);
			
			// Update quest CH0_APlaceToSleep
			if (MIS_CH0_DraxHunt == LOG_NONE)
			{
				// Help Drax to join to the hunters camp
				B_LogEntry(CH0_APlaceToSleep, CH0_APlaceToSleep_2);
			} else
			{
				// Go to the camp
				B_LogEntry(CH0_APlaceToSleep, CH0_APlaceToSleep_5);
			};
			
			// Start CH0_DraxHunt if not started
			if (MIS_CH0_DraxHunt == LOG_NONE)
			{
				Log_CreateTopic(CH0_DraxHunt, LOG_MISSION);
				Log_SetTopicStatus(CH0_DraxHunt, LOG_RUNNING);
				B_LogEntry_Silent(CH0_DraxHunt, CH0_DraxHunt_0);
				MIS_CH0_DraxHunt = LOG_RUNNING;
			} else 
			{
				// If Drax didn't refuse, then he goes to the camp
				if (Drax_RefusedCamp == false)
				{
					Drax_GoesCamp();
				};
			};
			
			// Ratford goes to the camp
			Ratford_GoesCamp();
			
			Ratford_LogEntriesAfterCommentingNoteAdded = true;
		};
		
	// Drax
	} else if (ORG_819_Drax == Hlp_GetInstanceID(self))
	{
		// NOT PERMANTENT DIALOGUES
		
		// If `DIA_ORG_819_Drax_Hello` was chosen
		var int ORG_819_Drax_Hello;
		if (ORG_819_Drax_Hello == false)
		{
			if (Npc_KnowsInfo(hero, DIA_ORG_819_Drax_Hello) == true)
			{
				// If player wants hunt
				if (Drax_HuntingYes == true)
				{
					Log_CreateTopic		(CH0_DraxHunt, LOG_MISSION);
					Log_SetTopicStatus	(CH0_DraxHunt, LOG_RUNNING);
					B_LogEntry			(CH0_DraxHunt, CH0_DraxHunt_0);
					MIS_CH0_DraxHunt = LOG_RUNNING;
					
					// Update quest CH0_APlaceToSleep - help Drax, if player didn't find Jorik yet. Otherwise `CH0_APlaceToSleep_2` was already added.
					if (MIS_CH0_FindJorik == LOG_SUCCESS)
					{
						B_LogEntry_Silent(CH0_APlaceToSleep, CH0_APlaceToSleep_3);
					};
				};
			
				ORG_819_Drax_Hello = true;
			};
		};
		
		// If `DIA_ORG_819_Drax_After_Hunting` was chosen
		var int ORG_819_Drax_After_Hunting;
		if (ORG_819_Drax_After_Hunting == false)
		{
			if (Npc_KnowsInfo(hero, DIA_ORG_819_Drax_After_Hunting) == true)
			{
				// CH0_DraxHunt failed
				if (Drax_FailedMissionKilledAloneAfterJorik == true)
				{
					Log_SetTopicStatus(CH0_DraxHunt, LOG_FAILED);
					MIS_CH0_DraxHunt = LOG_FAILED;
					B_GiveXP(0);
				// CH0_DraxHunt succeed
				} else
				{
					Log_SetTopicStatus(CH0_DraxHunt, LOG_SUCCESS);
					MIS_CH0_DraxHunt = LOG_SUCCESS;
					B_GiveXP(50);
				};
				
				// Play the entry sound, if won't be played later
				if (MIS_CH0_FindJorik == LOG_NONE)
				{
					B_LogEntry_Fake();
				};
				
				// Drax goes the camp, if didn't refuse Nyras
				if (Drax_RefusedCamp == false)
				{
					Drax_GoesCamp();
				};

				// CH0_FindJorik start, if not started
				// And update a quest CH0_APlaceToSleep
				if (MIS_CH0_FindJorik == LOG_NONE)
				{
					Log_CreateTopic		(CH0_FindJorik, LOG_MISSION);
					Log_SetTopicStatus	(CH0_FindJorik, LOG_RUNNING);
					B_LogEntry			(CH0_FindJorik, CH0_FindJorik_1);
					MIS_CH0_FindJorik = LOG_RUNNING;
					
					// Update quest CH0_APlaceToSleep - find Jorik
					B_LogEntry_Silent(CH0_APlaceToSleep, CH0_APlaceToSleep_4);
					
					// Update quest CH0_APlaceToSleep - talk Ratford
					B_LogEntry_Silent(CH0_APlaceToSleep, CH0_APlaceToSleep_6);
				};
			
				ORG_819_Drax_After_Hunting = true;
			};
		};
	
		// PERMANENT DIALOGUES
		
		// If `DIA_ORG_819_Drax_Hunting_Maybe_Later` was chosen
		var int ORG_819_Drax_Hunting_Maybe_Later;
		if (ORG_819_Drax_Hunting_Maybe_Later == false)
		{
			if (Drax_MaybeLater == true)
			{
				// An entry about talk Drax when ready
				if (B_LogEntry_AlreadyAdded == false)
				{
					B_LogEntry(CH0_DraxHunt, CH0_DraxHunt_1);
				} else
				{
					B_LogEntry_Silent(CH0_DraxHunt, CH0_DraxHunt_1);
				};
			
				ORG_819_Drax_Hunting_Maybe_Later = true;
			};
		};
		
		// If `DIA_ORG_819_Drax_Lets_Hunt` was chosen
		var int ORG_819_Drax_Lets_Hunt;
		if (ORG_819_Drax_Lets_Hunt == false)
		{
			if (Drax_HeroNoWeapon == true)
			&& (Drax_HeroNoWeaponLogAdded == false)
			{
				// An entry about talk Drax when has a weapon
				if (B_LogEntry_AlreadyAdded == false)
				{
					B_LogEntry(CH0_DraxHunt, CH0_DraxHunt_2);
				} else
				{
					B_LogEntry_Silent(CH0_DraxHunt, CH0_DraxHunt_2);
				};
			
				Drax_HeroNoWeaponLogAdded = true;
				
			} else if (Drax_HeroWeaponCheck == true)
			{
				// A log entry about a danger
				if (B_LogEntry_AlreadyAdded == false)
				{
					B_LogEntry(CH0_DraxHunt, CH0_DraxHunt_3);
				} else
				{
					B_LogEntry_Silent(CH0_DraxHunt, CH0_DraxHunt_3);
				};
				
				// Start a hunting
				DraxStartsHunt();
			
				ORG_819_Drax_Lets_Hunt = true;
			};
		};
	// Orry
	} else if (GRD_254_Orry == Hlp_GetInstanceID(self))
	{
		// If `DIA_GRD_254_Orry_Your_Beer` was chosen.
		var int GRD_254_Orry_Your_Beer;
		if (GRD_254_Orry_Your_Beer == false)
		{
			if (Npc_KnowsInfo(hero, DIA_GRD_254_Orry_Your_Beer) == true)
			{
				// CH0_OrryBeer finished
				Log_SetTopicStatus(CH0_OrryBeer, LOG_SUCCESS);
				MIS_CH0_OrryBeer = LOG_SUCCESS;
				B_LogEntry_Fake();
				
				GRD_254_Orry_Your_Beer = true;
			};
		};
		
		// If `DIA_GRD_254_Orry_Let_Me_Ask_You_Something` was chosen
		var int GRD_254_Orry_Let_Me_Ask_You_Something;
		if (GRD_254_Orry_Let_Me_Ask_You_Something == false)
		{
			if (Npc_KnowsInfo(hero, DIA_GRD_254_Orry_Let_Me_Ask_You_Something) == true)
			{
				// If player agreed to give a beer
				if (Orry_IWillDoThat == true)
				{
					Log_CreateTopic(CH0_OrryBeer, LOG_MISSION);
					Log_SetTopicStatus(CH0_OrryBeer, LOG_RUNNING);
					
					// To avoid doubling a new log entry sound
					if (Npc_HasItems(hero, ItFoBeer) <= 0)
					{
						B_LogEntry(CH0_OrryBeer, CH0_OrryBeer_0);
					} else
					{
						B_LogEntry_Silent(CH0_OrryBeer, CH0_OrryBeer_0);
					};
					B_LogEntry_Silent(CH0_OrryBeer, CH0_OrryBeer_1);
					MIS_CH0_OrryBeer = LOG_RUNNING;
				};
			
				GRD_254_Orry_Let_Me_Ask_You_Something = true;
			};
		};
	};

    PrintDebugNpc(PD_ZS_FRAME,"ZS_Talk_End");
};


