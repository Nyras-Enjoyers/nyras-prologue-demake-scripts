func void ZS_Unconscious ()
{	
	PrintDebugNpc		(PD_ZS_FRAME, "ZS_Unconscious" );				
	C_ZSInit();
	Npc_PercEnable  	(self , PERC_ASSESSMAGIC,		B_AssessMagic				);
	Mdl_ApplyRandomAni	( self, "S_WOUNDED","T_WOUNDED_TRY");
	Mdl_ApplyRandomAniFreq	( self, "S_WOUNDED", 8);
	
	self.aivar[AIV_PLUNDERED] = FALSE;
	
	//SN 24.09.00: f�r die PublisherDemo auskommentiert, da die Animationen noch nicht toll sind (Absprache mit Alex) -> wenn bessere Animationen da sind, wieder einkommentieren!
	//Mdl_ApplyRandomAni	( self, "S_WOUNDEDB","T_WOUNDEDB_TRY");
	//Mdl_ApplyRandomAniFreq	( self, "S_WOUNDEDB", 8);
	
	if (Npc_CanSeeNpc 	(self, other)  &&  self.guild < GIL_SEPERATOR_ORC )
	{
		PrintDebugNpc	(PD_ZS_CHECK, "...NSC kann T�ter sehen!" );
		if (!Npc_IsPlayer	( self))
		{				
			B_AssessAndMemorize(NEWS_DEFEAT, NEWS_SOURCE_WITNESS, self, other, self);
		};
	};

	C_StopLookAt 		(self);
	AI_StopPointAt 		(self);

	if (C_BodyStateContains(self, BS_SWIM))
	{
		PrintDebugNpc	(PD_ZS_CHECK, "...NSC ertrinkt!" );				
		AI_StartState	(self,	ZS_Dead,	0,	"");
		return;
	};

	//-------- Erfahrungspunkte f�r den Spieler ? --------
	if	Npc_IsPlayer   (other)
	||	(C_NpcIsHuman  (other) && other.aivar[AIV_PARTYMEMBER])
	||	(C_NpcIsMonster(other) && other.aivar[AIV_MM_PARTYMEMBER])
	{
		PrintDebugNpc	(PD_ZS_CHECK, "...von SC oder Partymember besiegt!" );				
		B_UnconciousXP();
		self.aivar[ AIV_WASDEFEATEDBYSC ] = TRUE;
	};

	if ( Npc_IsPlayer	(self ) )
	{
		PrintDebugNpc	(PD_ZS_CHECK, "...SC besiegt!" );				
		other.aivar[ AIV_HASDEFEATEDSC ] = TRUE;
	};
	
	if (GRD_251_Kirgo == Hlp_GetInstanceID(other) && Npc_IsPlayer(self))
	|| (GRD_251_Kirgo == Hlp_GetInstanceID(self) && Npc_IsPlayer(other))
	{
		if (Kirgo_FirstDuelFinished == false)
		{
			if (other.aivar[AIV_HASDEFEATEDSC] == false)
			{
				Kirgo_FirstDuelHeroWon = true;
			};
			
			Kirgo_FirstDuelFinished = true;
			
			// To stand up faster
			if (Npc_IsPlayer(self) == true)
			{	
				Kirgo_HeroUnconsciousAfterADuel = true;
			};
			
			// You can start first duel just by attacking Kirgo
			Kirgo_PlayerIsReady = false;
		} else if (Kirgo_SecondDuelFinished == false)
		{
			if (Kirgo_PlayerIsReady == true)
			{
				if (other.aivar[AIV_HASDEFEATEDSC] == false)
				{
					Kirgo_SecondDuelHeroWon = true;
				};
				
				// To stand up faster
				if (Npc_IsPlayer(self) == true)
				{	
					Kirgo_HeroUnconsciousAfterADuel = true;
				};
				
				Kirgo_SecondDuelFinished = true;
				Kirgo_PlayerIsReady = false;
			};
		};
	};
};
	
func int ZS_Unconscious_Loop ()
{
	PrintDebugNpc( PD_ZS_LOOP, "ZS_Unconscious_Loop" );
	if (Kirgo_HeroUnconsciousAfterADuel == true)
	&& (Npc_IsPlayer(self) == true)
	{
		if (Npc_GetStateTime (self) >= HAI_TIME_UNCONSCIOUS_DUEL_HERO)
		{
			PrintDebugNpc( PD_ZS_CHECK, "...Schleifen-Ende" );				
			Kirgo_HeroUnconsciousAfterADuel = false;
			return 1;
		};
	} else
	{
		if (Npc_GetStateTime (self) > HAI_TIME_UNCONSCIOUS)
		{
			PrintDebugNpc( PD_ZS_CHECK, "...Schleifen-Ende" );				
			return 1;
		};
	};
	
	AI_Wait			(self,	1.0);
};

func void ZS_Unconscious_End ()
{	
	PrintDebugNpc( PD_ZS_FRAME, "ZS_Unconscious_End" );

	//-------- Tempor�re Attit�de werden wieder zur�ckgesetzt --------
	if (!Npc_IsPlayer(self))
	{
		B_ResetTempAttitude(self);
	};

	//-------- Aufstehen & Umsehen ! --------
	AI_StandUp 		(self);
	AI_StopLookAt	(self);

	//-------- den eigenen Besieger anquatschen ! --------
	/*
	if (Npc_HasNews 	(self,	NEWS_DEFEAT, other, self) 	&&
		!Npc_IsInState	(other,	ZS_Unconscious)				&&
		!Npc_IsDead		(other)									)
	{
		PrintDebugNpc( PD_ZS_CHECK, "...NSC kann den Attackierer noch sehen und der ist bei Bewu�tsein!" );				
		AI_Quicklook ( self, other);
		if (C_AmIStronger ( self, other))
		{
			B_Say ( self, other, "$YOULLBESORRYFORTHIS");
		}
		else if (Npc_GetPermAttitude(self,other)!=ATT_HOSTILE)
		{
			B_Say ( self, other,  "$YESYES");
		};
	};
	*/

	//-------- fallgelassene Waffe aufheben... --------
	// B_RegainDroppedWeapon(self);

	//-------- Heilen ! --------
	// AI_StartState			(self,	ZS_HealSelf,	1,	"");
	
	// NyrasPrologueDemake: Heal 20% of HP
	var int hpToHeal;
	hpToHeal = self.attribute[ATR_HITPOINTS_MAX] / 5; // 20%
	hpToHeal -= self.attribute[ATR_HITPOINTS]; // not include current hitpoins (1 HP by default)
	
	// SAFETY CHECK
	if (hpToHeal > 0)
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS, hpToHeal);
	};
};

