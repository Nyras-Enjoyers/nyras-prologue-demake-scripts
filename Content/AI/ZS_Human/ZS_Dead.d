func void ZS_Dead ()
{	
	PrintDebugNpc	(PD_ZS_FRAME, "ZS_Dead" );		
	PrintGlobals	(PD_ZS_CHECK);

	C_ZSInit();

	self.aivar[AIV_PLUNDERED] = FALSE;
	
	var int selfID; selfID = Hlp_GetInstanceID(self);
	
	// The hunt with Drax
	if (self.aivar[AIV_KILLED] == false)
	{
		if (DraxHuntScavenger_01 == selfID)
		|| (DraxHuntScavenger_02 == selfID)
		|| (DraxHuntScavenger_03 == selfID)
		{
			Drax_KilledScavengersCounter += 1;
			
			// In both cases: if player said "maybe later" and if wanted to start, but hadn't an equipped weapon before.
			// INFO: It is for safety. It is called in `ZS_MM_Attack` as well.
			if (Drax_HeroWeaponCheck == false)
			&& (Drax_HuntingYes == true)
			{
				Drax_HeroStartedFightAlone = true;
			};
			
			// If all killed, Drax changes a routine
			if (Drax_KilledScavengersCounter == DRAX_HUNTSCAVENGERSTOKILL)
			{
				Drax_AllScavengersKilled = true;
				
				Drax_IHaveNoTimeForThat = false;
				
				Drax_IsHunting = false;
			
				Npc_ExchangeRoutine(DraxNpc, "AfterHuntWait");
			};
		};
		
		
	};
	
	// To check killed C_NPCs
	self.aivar[AIV_KILLED] = true;
	
	//-------- Erfahrungspunkte für den Spieler ? --------
	//SN: VORSICHT, auch in B_MagicHurtNpc() vorhanden!
	if	Npc_IsPlayer   (other)
	||	(C_NpcIsHuman  (other) && other.aivar[AIV_PARTYMEMBER])
	||	(C_NpcIsMonster(other) && other.aivar[AIV_MM_PARTYMEMBER])
	{
		B_DeathXP();	// vergibt XP an SC
	};
	
	if	C_NpcIsMonster(self)
	{
		B_GiveDeathInv (); 	// für Monster
	};
	// B_CheckDeadMissionNPCs ();
	B_Respawn (self); 	
};
