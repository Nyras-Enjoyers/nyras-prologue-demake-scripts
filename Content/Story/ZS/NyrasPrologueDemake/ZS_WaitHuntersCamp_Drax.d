//////////////////////////////////////////////////////////////////////////
//	ZS_WaitHuntersCamp_Drax
//	=======
//	Drax wait as hero came
//////////////////////////////////////////////////////////////////////////
func void ZS_WaitHuntersCamp_Drax ()
{
	PrintDebugNpc			(PD_TA_FRAME,	"ZS_WaitHuntersCamp_Drax");
	
	//-------- Wahrnehmungen --------
	B_SetPerception			(self);
	self.senses = 			SENSE_SEE|SENSE_HEAR|SENSE_SMELL;

	//-------- Vorbereitungen --------
	AI_SetWalkmode			(self,	NPC_RUN);
	
	//-------- Grobpositionierung --------
	AI_GotoWP				(self,	self.wp);						// Gehe zum Tagesablaufstart
	AI_AlignToWP			(self);
};

func void ZS_WaitHuntersCamp_Drax_Loop ()
{
	PrintDebugNpc			(PD_TA_LOOP,	"ZS_WaitHuntersCamp_Drax_Loop");
	
	AI_Wait					(self,	1);
};

func void ZS_WaitHuntersCamp_Drax_End ()
{
	PrintDebugNpc			(PD_TA_FRAME,	"ZS_WaitHuntersCamp_Drax_End");
	self.senses	=			hero.senses;
	
	C_StopLookAt			(self);
};
