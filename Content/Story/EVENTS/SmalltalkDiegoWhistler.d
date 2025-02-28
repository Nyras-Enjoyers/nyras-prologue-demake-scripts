func void SmalltalkDiegoWhistler_PrepareNPCs()
{
	// The smalltalk has to be finished
	Smalltalk_HasToBeFinished = true;

	// Diego has to say SVM
	Diego_Smalltalk_HasSVMToSay = true;

	// Change Diego's routine to start saying SVMs
	Npc_ClearAIQueue(DiegoNpc);
	B_ExchangeRoutine_C_NPC(DiegoNpc, "SmallTalkDiegoWhistler");

	// Change Whistler's routine to start saying SVM
	Npc_ClearAIQueue(WhistlerNpc);
	B_ExchangeRoutine_C_NPC(WhistlerNpc, "SmallTalkDiegoWhistler");
};

var int Trigger_Smalltalk_Diego_Whistler;
func void TRIGGER_SMALLTALK_DIEGO_WHISTLER_FUNC()
{
	// SAFETY CHECK
	if (Hlp_IsValidNpc(self) == false) { return; };
	
	// Is player
	if (Npc_IsPlayer(self) == false) { return; };
	
	// If had a first dialogue with Diego
	if (Npc_KnowsInfo(self, DIA_PC_Thief_Hello) == false) { return; };
	
	// If not triggered before
	if (Trigger_Smalltalk_Diego_Whistler == false)
	{
		// Change ZS_* states
		SmalltalkDiegoWhistler_PrepareNPCs();

		// Triggered
		Trigger_Smalltalk_Diego_Whistler = true;
	};
};
