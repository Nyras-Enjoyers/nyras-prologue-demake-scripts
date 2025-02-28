func void Camera_EndGame_Run()
{
	// Camera run
	Trialog_EndCameraStarted = true;
	
	// Trigger camera
	Wld_SendTrigger("EVT_CAM_ENDGAME");
};
