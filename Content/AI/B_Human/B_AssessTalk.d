/******************************************************************************************** 
*	B_AssessTalk																			*
*	============																			*
*	Wird dem ZS_AssessTalk vorgeschaltet, wenn ein NSC aktiv angesprochen wird				*
*	und löscht die INVINCIBLE-Flags															* 
********************************************************************************************/ 
func void B_AssessTalk ()
{
	// Ignore PERC_ASSESSTALK since `Trialog_Sequence_Started` set to true
	if (Trialog_Sequence_Started == true)
	{
		return;
	};

	PrintDebugNpc	(PD_ZS_FRAME,	"B_AssessTalk");
	
	var int selfID; selfID = Hlp_GetInstanceID(self);
	
	// Whistler pissed off
	if (STT_309_Whistler == selfID)
	{
		if (Npc_KnowsInfo(other, DIA_STT_309_Whistler_Hello) == true)
		{
			Npc_ClearAIQueue(self);
			B_Say(self, other, "$Whistler_CH0_None_Whistler_53621_0");
			return;
		};
	// Orry pissed off
	} else if (GRD_254_Orry == selfID)
	{
		if (Orry_IHaveNoTimeForThat == true)
		{
			Npc_ClearAIQueue(self);
			B_Say(self, other, "$Orry_CH0_None_Orry_21502");
			return;
		};
	// Drax pissed off
	} else if (ORG_819_Drax == selfID)
	{
		if (Drax_HowLooksThisRatford == true)
		{
			Npc_ClearAIQueue(self);
			AI_OutputSVM_Overlay(self, other, "$Drax_CH0_G1RDemo_FindJorik_Drax_96572");
			return;
		} else if (Drax_IHaveNoTimeForThat == true)
		|| (Drax_IsHunting == true)
		{
			Npc_ClearAIQueue(self);
			AI_OutputSVM(self, other, "$Drax_CH0_None_Drax_32109");
			return;
		};
	// Kirgo pissed off
	} else if (GRD_251_Kirgo == selfID)
	{
		if (Kirgo_NotYourBusiness == true)
		|| (Kirgo_SaidEverything == true)
		{
			Npc_ClearAIQueue(self);
			B_Say(self, other, "$Kirgo_CH0_G1RDemo_KirgoFight_Kirgo_97338");
			return;
		};
	// Ratford pissed off
	} else if (ORG_818_Ratford == selfID)
	{
		if (Ratford_LastPissedOff == true)
		{
			Npc_ClearAIQueue(self);
			B_Say(self, other, "$Ratford_CH0_None_Ratford_44688");
		} else if (Ratford_GentlyPissedOff == true)
		{
			Npc_ClearAIQueue(self);
			B_Say(self, other, "Ratford_CH0_None_Ratford_99079_1");
		} else if (Ratford_PissedOff == true)
		{
			Npc_ClearAIQueue(self);
			B_Say(self, other, "$TEXT_WIP_JNJMDGE_20240715_153503");
			return;
		};
	};
	
	// If has drawn weapon, then doesn't talk
	if (Npc_IsInFightMode(self, FMODE_NONE) == false)
	{
		return;
	};
	
	if (Npc_IsInState(self, ZS_Smoke)) //MH: Blubber Mobsi machte Probleme! 
	{
		Npc_ClearAIQueue(self);
		AI_StandUpQuick(self);
		B_HeyYou(self, other);
		self.aivar[AIV_NpcStartedTalk] = true;
		AI_StartState	(self, ZS_Talk, 0, "");
	}
	else if (C_BodystateContains(self,BS_MOBINTERACT)) 
	{
		return;
	};
		
	//-------- Verhindern von Ansprechen durch übernommene NSCs --------
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	var C_NPC rock; rock = Hlp_GetNpc(PC_Rockefeller);
	
	if ( (Hlp_GetInstanceID(her)!=Hlp_GetInstanceID(Hero))&&(Hlp_GetInstanceID(rock)!=Hlp_GetInstanceID(Hero)) ) 
	{	
		B_Say (self,other,"$NOTNOW");
	}
	else
	{
		// Ratford
		if (ORG_818_Ratford == selfID)
		{
			if (Npc_KnowsInfo(hero, DIA_ORG_818_Ratford_Hello) == false)
			{
				// To not say the first speech by SVM.
				Ratford_WhatTheHellNotInSVM = true;
			};
		};
	
		Npc_SetPercTime	( self, 3);
		self.aivar[AIV_INVINCIBLE] = FALSE;
		hero.aivar[AIV_INVINCIBLE] = FALSE;
		hero.aivar[AIV_IMPORTANT]  = FALSE;		// Dialog kommt NICHT aufgrund einer Important-Info zustande
		
		Npc_ClearAIQueue(self);
						
		Npc_SetPercTime	(self, 1);
		
		B_HeyYou(self, other);
		
		// Stand up if sneaking
		if (C_BodyStateContains(self, BS_SNEAK) == true)
		{
			AI_PlayAniBS(self, "T_SNEAK_2_RUN", BS_STAND);
			AI_TurnToNpc(self, other);
		};
		
		self.aivar[AIV_NpcStartedTalk] = true;
		if ( (!C_BodystateContains(self, BS_SIT)) || (!Npc_CanSeeNpc(self, hero)) )
		{
			AI_StartState	(self, ZS_Talk, 1, ""); //nicht sitzen UND/ODER nicht sehen: sauber aufstehen/zustand beenden
		}
		else
		{
			AI_StartState	(self, ZS_Talk, 0, ""); //sitzen UND sehen --> sitzenbleiben
		};
	};
};
			

				