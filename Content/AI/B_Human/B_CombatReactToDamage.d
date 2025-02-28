func void B_CombatReactToDamage_FixMinimalDamage()
{
	// Fix for player as the attacker only
	if (Npc_IsPlayer(other) == false) { return; };
	
	// If immortal, then return
	if (NPC_FLAG_IMMORTAL == self.flags) { return; };
	
	// If immune for giving damage type, then return
	if (Npc_IsInFightMode(other, FMODE_FIST) == true)
	{
		if (IMMUNE <= self.protection[PROT_BLUNT])
		{
			return;
		};
	} else if (Npc_IsInFightMode(other, FMODE_MELEE) == true)
	{
		var C_Item melee; melee = Npc_GetReadiedWeapon(other);
		
		if (DAM_BLUNT == melee.damagetype)
		{
			if (IMMUNE <= self.protection[PROT_BLUNT])
			{
				return;
			};
		} else if (DAM_EDGE == melee.damagetype)
		{
		
			if (IMMUNE <= self.protection[PROT_EDGE])
			{
				return;
			};
		};
	} else if (Npc_IsInFightMode(other, FMODE_FAR) == true)
	{
		if (IMMUNE <= self.protection[PROT_POINT])
		{
			return;
		};
	};
	
	var int dmg;
	var int dmgDeadly;
	
	/*
	 *  Should damage be deadly
	 */
	// For monsters always
	if (self.guild > GIL_SEPERATOR_HUM)
	{
		dmgDeadly = true;
	// For humans not always
	} else
	{
		// Not, if is in melee mode
		if (C_NpcHasWeapon(self, ITEM_KAT_NF) == true)
		{
			if (Npc_HasReadiedMeleeWeapon(self) == false)
			{
				dmgDeadly = false;
			} else
			{
				dmgDeadly = true;
			};
		} else
		{
			dmgDeadly = true;
		};
	};

	// If not defined
	if (0 == self.aivar[AIV_LASTHITHP])
	{
		// If is alive
		if (0 < self.attribute[ATR_HITPOINTS])
		{
			// Make a hit, if has full HP
			if (self.attribute[ATR_HITPOINTS] >= self.attribute[ATR_HITPOINTS_MAX])
			{
				Npc_ChangeAttribute(self, ATR_HITPOINTS, -NPC_MINIMAL_DAMAGE);
			};
			
			// Save new value
			self.aivar[AIV_LASTHITHP] = self.attribute[ATR_HITPOINTS];
		};
	// If defined
	} else
	{
		// Decrease HP if not decreased
		if (self.attribute[ATR_HITPOINTS] == self.aivar[AIV_LASTHITHP])
		{
			Npc_ChangeAttribute(self, ATR_HITPOINTS, -NPC_MINIMAL_DAMAGE);
		};
		
		// Save new value
		self.aivar[AIV_LASTHITHP] = self.attribute[ATR_HITPOINTS];
	};
	
	// DAMIANUT-OPT-TODO: Handle last hit
};

func void B_CombatReactToDamage ()
{
	PrintDebugNpc		(PD_ZS_FRAME, "B_CombatReactToDamage" );	
	
	PrintGlobals 		(PD_ZS_CHECK);
	
	// Minimal damage fix
	B_CombatReactToDamage_FixMinimalDamage();
	
	//-------- friendly NSC wird von Spieler attackiert --------
	if (Npc_IsPlayer(other) && ((self.npctype == NPCTYPE_FRIEND)||(Npc_GetPermAttitude(self,other)==ATT_FRIENDLY)))
	{
		return;
	};

	//-------- Merken ob Schaden durch Fernkampfwaffe/Magie verursacht wurde --------
	if (Npc_IsInFightMode(other,FMODE_FAR) || Npc_IsInFightMode(other,FMODE_MAGIC))
	{
		self.aivar[AIV_LASTHITBYRANGEDWEAPON] = TRUE;
	}
	else
	{
		self.aivar[AIV_LASTHITBYRANGEDWEAPON] = FALSE;
	};

	//-------- ! --------
	if ( Npc_IsPlayer( other ) )
	{
		Npc_SetTempAttitude	(self,	ATT_HOSTILE);

		if ( (Npc_GetAttitude( self, other ) == ATT_HOSTILE) || (Npc_GetAttitude( self, other ) == ATT_ANGRY) )
		{
			Npc_SetTarget	(self,	other);
		/*
		}
		// JP: Ich mach das mal raus, weil der Nsc sich nur aus zwei Gründen im Kampf befinden kann, erstens wenn er Hostile ist oder den Kampf sonst wie beginnt und somit nicht 
		// angefangen hat, oder wenn er Angegriffen wurde und über ZS_ReactToDamage  (NewsEintrag) im ZS_Attack ist
		// JP: Außerdem kommen Attack_News raus
		else
		{
			B_AssessAndMemorize( NEWS_ATTACK, NEWS_SOURCE_WITNESS, self, other, self );
		*/	
		};
	};

	//-------- spezielle Reaktionen im Kampf --------
	if (self.aivar[AIV_SPECIALCOMBATDAMAGEREACTION])
	{
		B_SpecialCombatDamageReaction();
	};
};
