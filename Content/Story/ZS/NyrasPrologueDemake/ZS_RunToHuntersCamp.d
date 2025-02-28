//////////////////////////////////////////////////////////////////////////
//	ZS_RunToHuntersCamp
//	=======
//	NPC goes to the hunters camp
//////////////////////////////////////////////////////////////////////////
const int CONST_ZS_RunToHuntersCamp_ChangeRtn_Dist = 300; // A distance to WP in which NPC has to change a routine
func void ZS_RunToHuntersCamp ()
{
	PrintDebugNpc			(PD_TA_FRAME,	"ZS_RunToHuntersCamp");
	
	//-------- Wahrnehmungen --------
	B_SetPerception			(self);
	self.senses = 			SENSE_SEE|SENSE_HEAR|SENSE_SMELL;

	//-------- Vorbereitungen --------
	AI_SetWalkmode			(self,	NPC_RUN);
	
	//-------- Grobpositionierung --------
	AI_GotoWP				(self,	self.wp);						// Gehe zum Tagesablaufstart
	AI_AlignToWP			(self);
};

func void ZS_RunToHuntersCamp_Loop ()
{
	PrintDebugNpc			(PD_TA_LOOP,	"ZS_RunToHuntersCamp_Loop");
	
	AI_Wait					(self,	1);
	
	// Change a routine, if the camp reached
	if (Npc_GetDistToWP(self, self.wp) < CONST_ZS_RunToHuntersCamp_ChangeRtn_Dist)
	{
		if (Hlp_GetInstanceID(self) == ORG_818_Ratford)
		{
			Ratford_GoToTheCamp = false;
			Ratford_IsInTheCamp = true;
			HuntersWentToTheCamp();
			
			// Doesn't want to talk
			Ratford_LastPissedOff = true;
			
			B_ExchangeRoutine(self, "WaitHuntersCamp_Ratford");
		} else if (Hlp_GetInstanceID(self) == ORG_819_Drax)
		{
			Drax_GoToTheCamp = false;
			Drax_IsInTheCamp = true;
			HuntersWentToTheCamp();
			
			// Ratford stop waiting for Drax
			if (Ratford_IsInTheCamp == true)
			{
				B_ExchangeRoutine(self, "WaitHuntersCamp_Ratford");
			};
			
			B_ExchangeRoutine(self, "WaitHuntersCamp_Drax");
		};
		return;
	};
	
	// Restore running if interrupted by bothering him by player
	if (Npc_GetDistToWP(self, self.wp) > 300)
	{
		if (C_BodyStateContains(self, BS_RUN) == false)
		{
			AI_SetWalkMode(self, NPC_RUN);
			AI_GotoWP(self,	self.wp);
			AI_AlignToWP(self);
		};
	};
};

func void ZS_RunToHuntersCamp_End ()
{
	PrintDebugNpc			(PD_TA_FRAME,	"ZS_RunToHuntersCamp_End");
	self.senses	=			hero.senses;
	
	C_StopLookAt			(self);
};
