var int TickTock_Ticks_Trialog; // Measure the ticks to execute code slower during the trialog sequence
var int TickTock_Ticks_ToStartFirstSpeech; // To allow Nyras sitting
var int TickTock_Ticks_EndCamera; // To fade-out and play the end video
const int TICKTOCK_TICKS_INTERVAL = 8; // `TICKTOCK_TICKS_INTERVAL` ticks last 1 [s]
const int TICKTOCK_TICKS_WAITASHEROWILLSIT = 16; // `TICKTOCK_TICKS_WAITASHEROWILLSIT` ticks last 2 [s] // INFO: And wait a bit more, like in Remake.
const int TICKTOCK_TICKS_INTERVALENDSFX = 48; // INFO: Measured by hand
const int TICKTOCK_TICKS_INTERVALENDCAM = 148; // INFO: Measured by hand
// const int TICKTOCK_TICKS_INTERVALENDBIK = 205; // INFO: Measured by hand
const int TICKTOCK_TICKS_INTERVALENDIAMHERE = 229; // INFO: Measured by hand
const int TICKTOCK_TICKS_INTERVALENDHEREALLYEXISTS = 269; // INFO: Measured by hand
const int TICKTOCK_TICKS_INTERVALENDGAME = 293; // INFO: Measured by hand

func void TICKTOCK_FUNC()
{
	// Kirgo's killing
	if (Kirgo_Killed == false)
	{
		if (Hlp_IsValidNpc(KirgoNpc) == true)
		{
			if (Npc_IsDead(KirgoNpc) == true)
			{
				Kirgo_Killed = true;
				
				// During CH0_KirgoFight mission
				if (MIS_CH0_KirgoFight == LOG_RUNNING)
				{
					MIS_CH0_KirgoFight = LOG_FAILED;
					Log_SetTopicStatus(CH0_KirgoFight, LOG_FAILED);
					B_GiveXP(0);
				};
			};
		};
	};
	
	// MIS_CH0_OrryBeer
	if (MIS_CH0_OrryBeer == LOG_RUNNING)
	{
		if (Orry_ABeerFound == false)
		{
			// A beer found
			if (Npc_HasItems(hero, ItFoBeer) > 0)
			{
				Orry_ABeerFound = true;

				// And Orry is not during `ZS_Talk` (to add this entry after a dialogue)
				if (Npc_IsInState(OrryNpc, ZS_Talk) == false)
				{
					B_LogEntry(CH0_OrryBeer, CH0_OrryBeer_2);
				};
			};
		};
	};
	
	// Player reached Jorik's corpse
	if (Jorik_CorpseReached == true)
	{
		// And didn't talk yet about it
		if (Ratford_TalkNyrasNearJorik == false)
		{
			// And player is enough near
			if (Npc_GetDistToNpc(hero, RatfordNpc) < HAI_DIST_RATFORD_AUTOWALK)
			{
				// If didn't start to go already
				if (Ratford_HeroGoesToHimAsFoundJorik == false)
				{
					Ratford_HeroGoesToHimAsFoundJorik = true;

					AI_Wait(hero, 0.1);
					AI_GotoNpc(hero, RatfordNpc);
					AI_Wait(hero, 0.1);
				};
			};
		};
	};

	// Drax's scavengers
	
	// Taking Jorik's sketch
	if (Hero_TookJorikSketch == false)
	{
		if (Npc_HasItems(hero, ItWrJorik) > 0)
		{
			Hero_TookJorikSketch = true;
			
			// If talked with Ratford about the corpse already, then has to goes to him
			if (Ratford_TalkNyrasNearJorik == true)
			{
				Ratford_HeroHasToGoesToHimAsFoundJorikNote = true;
			};
		};
	};
	
	// Hero has to go to Ratford
	if (Ratford_HeroHasToGoesToHimAsFoundJorikNote == true)
	{
		// And player is enough near
		if (Npc_GetDistToNpc(hero, RatfordNpc) < HAI_DIST_RATFORD_AUTOWALK)
		{
			if (C_BodyStateContains(hero, BS_INVENTORY) == false) // And hasn't opened inventory
			&& (Npc_IsInState(RatfordNpc, ZS_Attack) == false) // And if Ratford isn't in ZS_Attack
			{
				Ratford_HeroHasToGoesToHimAsFoundJorikNote = false;

				AI_Wait(hero, 0.1);
				AI_GotoNpc(hero, RatfordNpc);
				AI_Wait(hero, 0.1);
			};
		};
	};
	
	// Hero has to start the end sequence
	if (HuntersCamp_AllCameBack == true)
	{
		if (Trialog_Sequence_Started == false)
		{
			if (Npc_GetDistToWP(hero, "HUNTERSCAMP_001") < 500)
			{
				Trialog_Sequence_Started = true;
				
				// To disable game saving
				Wld_SendTrigger("EVT_CAM_TRIA_GO");

				// Drax and Ratford change behaviour (it is defined in their ZS_*)
			};
		};
	};
	
	// Force hero to a bench
	if (Trialog_Sequence_Started == true)
	{
		if (TickTock_Ticks_Trialog == 0)
		{
			if (Trialog_HeroForcedToAPosition == false)
			{
				if (Npc_GetDistToWP(hero, "HUNTERSCAMP_BENCH") > 150)
				&& (Trialog_HeroStartedUsingBench == false)
				{
					if (C_BodyStateContains(hero, BS_WALK) == false)
					{
						// Disable drawing a weapon, and the dialogue animations
						Mdl_ApplyOverlayMds(hero, "HUMANS_HERO_TRIALOG.MDS");
						Npc_ClearAIQueue(hero);
						AI_RemoveWeapon(hero);
						AI_SetWalkMode(hero, NPC_WALK);
						AI_GotoWP(hero, "HUNTERSCAMP_BENCH");
					};

				} 

				else if (Trialog_HeroReachedFP == false)
				&& (Trialog_HeroStartedUsingBench == false)
				{
					Trialog_HeroReachedFP = true;

					Npc_ClearAIQueue(hero);
					AI_RemoveWeapon(hero);

					if (Wld_IsFPAvailable(hero,"HERO"))
					{																	
						AI_GotoFP (hero, "HERO");
						AI_AlignToFP (hero);
					} 

					else if (Npc_IsOnFP(hero, "HERO"))
					{
						AI_AlignToFP(hero);
					};
				} 

				else if (C_BodyStateContains(hero, BS_SIT) == false)
				&& (Trialog_HeroStartedUsingBench == false)
				{
					if (Wld_IsMobAvailable(hero,"BENCH") == true)
					{
						Trialog_HeroStartedUsingBench = true;

						Npc_ClearAIQueue(hero);
						hero.aivar[AIV_INVINCIBLE] = true;
						AI_RemoveWeapon(hero);
						AI_UseMob(hero,"BENCH",1);
						AI_LookAtNpc(hero, RatfordNpc);
					};

				} 

				else if (Trialog_HeroIsSitting == true)
				{
					Trialog_HeroForcedToAPosition 	= true;
					Trialog_During_Talking 			= true;
					Drax_Smalltalk_HasSVMToSay 		= true;
				};
			};
		};
		
		// Count ticks to execute code slower during the trialog sequence
		TickTock_Ticks_Trialog += 1;
		
		if (TickTock_Ticks_Trialog == TICKTOCK_TICKS_INTERVAL)
		{
			TickTock_Ticks_Trialog = 0;
		};
		
		// Count ticks to determine, when hero will sit
		if (Trialog_HeroStartedUsingBench == true)
		&& (Trialog_HeroIsSitting == false)
		{
			TickTock_Ticks_ToStartFirstSpeech += 1;
			if (TickTock_Ticks_ToStartFirstSpeech == TICKTOCK_TICKS_WAITASHEROWILLSIT)
			{
				Trialog_HeroIsSitting = true;
			};
		};
		
		// End camera started
		if (Trialog_EndCameraStarted == true)
		{
			TickTock_Ticks_EndCamera += 1;

			if (TickTock_Ticks_EndCamera == TICKTOCK_TICKS_INTERVALENDSFX)
			{
				// Play sound
				Snd_Play("NyrasDemoExtro_Music");
			}

			else if (TickTock_Ticks_EndCamera == TICKTOCK_TICKS_INTERVALENDCAM)
			{
				Wld_PlayEffect("BLACKSCREEN", hero, hero, 0, 0, 0, false);
				Wld_SendUnTrigger("EVT_CAM_ENDGAME");
				Wld_SendTrigger("EVT_CAM_ENDGAME");
			} 

			else if (TickTock_Ticks_EndCamera == TICKTOCK_TICKS_INTERVALENDIAMHERE)
			{
				Snd_Play("NyrasDemoExtro_SFX_IAmHere");
			} 

			else if (TickTock_Ticks_EndCamera == TICKTOCK_TICKS_INTERVALENDHEREALLYEXISTS)
			{
				Snd_Play("NyrasDemoExtro_SFX_HeReallyExists");
			} 

			else if (TickTock_Ticks_EndCamera == TICKTOCK_TICKS_INTERVALENDGAME)
			{
				ExitGame();
			};
		};
	};
	
	// Insert the shadowbeast
	if (Shadowbeast_Inserted == false)
	{
		// If the end sequence wasn't started
		if (Trialog_Sequence_Started == false)
		{
			if (Wld_IsTime(22,00,22,10) == true)
			{
				Shadowbeast_Inserted = true;

				Wld_InsertNpc(Shadowbeast, "SHADOWBEAST_START");
				Wld_PlayEffect("spellFX_Teleport", Shadowbeast, Shadowbeast, 0, 0, 0, false);
			};
		};
	};

	Wld_SendTrigger("TICKTOCK");
};
