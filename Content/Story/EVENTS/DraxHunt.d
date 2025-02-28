/*
 *  DraxHunt.d
 *   - when player enters Drax's hunt area before talking him
 */

func void TRIGGER_DRAX_FUNC()
{
	if (Hlp_IsValidNpc(self) == false) { return; };
	
	if (Npc_IsPlayer(self) == false) { return; };

	// If not triggered before
	if (Drax_HeroEnteredHuntAreaTooFast == false)
	&& (Npc_KnowsInfo(hero, DIA_ORG_819_Drax_Hello) == false)
	{
		// Hero goes to Drax
		Npc_ClearAIQueue(hero);
		AI_SetWalkMode(hero, NPC_WALK);
		AI_GotoNpc(hero, DraxNpc);
		AI_WaitTillEnd(hero, DraxNpc);
		AI_WaitTillEnd(hero, DraxNpc);
	
		// Say SVM
		AI_OutputSVM(DraxNpc, NULL, "$Drax_CH0_G1RDemo_DraxHunt_Drax_83832");
		AI_PlayAniBS(DraxNpc, "T_SNEAK_2_RUN", BS_STAND);
		
		// Start ZS_Talk
		Npc_SetPercTime	(DraxNpc, 1);
		DraxNpc.aivar[AIV_INVINCIBLE] = FALSE;
		hero.aivar[AIV_INVINCIBLE] = FALSE;
		hero.aivar[AIV_IMPORTANT]  = FALSE;		// Dialog kommt NICHT aufgrund einer Important-Info zustande
		DraxNpc.aivar[AIV_NpcStartedTalk] = true;
		AI_StartState(DraxNpc, ZS_Talk, 0, ""); //sitzen UND sehen --> sitzenbleiben
		AI_WaitTillEnd(DraxNpc, hero);

		// Triggered
		Drax_HeroEnteredHuntAreaTooFast = true;
	};
};


