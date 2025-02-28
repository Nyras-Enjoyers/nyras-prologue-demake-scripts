//////////////////////////////////////////////////////////////////////////
//	ZS_WaitHuntersCamp_Ratford
//	=======
//	Ratford wait as hero came
//////////////////////////////////////////////////////////////////////////
func void ZS_WaitHuntersCamp_Ratford ()
{
	PrintDebugNpc			(PD_TA_FRAME,	"ZS_WaitHuntersCamp_Ratford");
	
	//-------- Wahrnehmungen --------
	B_SetPerception			(self);
	self.senses = 			SENSE_SEE|SENSE_HEAR|SENSE_SMELL;

	//-------- Vorbereitungen --------
	AI_SetWalkmode			(self,	NPC_RUN);
	
	//-------- Grobpositionierung --------
	AI_GotoWP				(self,	self.wp);						// Gehe zum Tagesablaufstart
	AI_AlignToWP			(self);
};

func void ZS_WaitHuntersCamp_Ratford_Loop ()
{
	PrintDebugNpc			(PD_TA_LOOP,	"ZS_WaitHuntersCamp_Ratford_Loop");
	
	AI_Wait					(self,	1);
};

func void ZS_WaitHuntersCamp_Ratford_End ()
{
	PrintDebugNpc			(PD_TA_FRAME,	"ZS_WaitHuntersCamp_Ratford_End");
	self.senses	=			hero.senses;
	
	C_StopLookAt			(self);
};
