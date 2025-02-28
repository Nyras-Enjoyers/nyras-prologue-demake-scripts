//KirgoFight_MissionStart
func void KirgoFight_MissionStart()
{
	Log_CreateTopic		(CH0_KirgoFight, LOG_MISSION);
	Log_SetTopicStatus	(CH0_KirgoFight, LOG_RUNNING);
	B_LogEntry			(CH0_KirgoFight, CH0_KirgoFight_0);
	MIS_CH0_KirgoFight = LOG_RUNNING;
};
