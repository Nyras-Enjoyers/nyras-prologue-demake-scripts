//////////////////////////////////////////////////////////////////////////
//	B_FillQuiver
//	============
//	Füllt den Köcher des NSCs 'slf' auf 20 auf. Diese Funktion geht davon
//	aus, daß der NSC die entsprechende Fernkampfwaffe in der Hand hält.
//////////////////////////////////////////////////////////////////////////
func void B_FillQuiver(var C_NPC slf)
{
	PrintDebugNpc		(PD_ZS_DETAIL,	"B_FillQuiver");
	
	var int		addedAmmo;
	var C_ITEM	readiedWeapon;	

	readiedWeapon = Npc_GetReadiedWeapon(slf);
	if (readiedWeapon.munition == ItAmArrow)
	{
		PrintDebugNpc	(PD_ZS_DETAIL,	"...aktive Waffe benutzt Pfeile!");
		addedAmmo = 20 - C_NpcHasAmmo(slf, ItAmArrow);
		CreateInvItems(slf, ItAmArrow, addedAmmo);
		PrintDebugInt	(PD_ZS_DETAIL,	"...hinzugefügte Pfeile: ", addedAmmo);
	}
	else if (readiedWeapon.munition == ItAmBolt)
	{
		PrintDebugNpc	(PD_ZS_DETAIL,	"...aktive Waffe benutzt Bolzen!");
		addedAmmo = 20 - C_NpcHasAmmo(slf, ItAmBolt);
		CreateInvItems(slf, ItAmBolt, addedAmmo);
		PrintDebugInt	(PD_ZS_DETAIL,	"...hinzugefügte Bolzen: ", addedAmmo);
	}
	else
	{
		PrintDebugNpc	(PD_ZS_DETAIL,	"...ERROR: aktive Waffe hat KEINE gültige Munitionsart!!!");
	};
};

//////////////////////////////////////////////////////////////////////////
//	B_EquipAndDrawBestMeleeWeapon
//	=============================
//	Legt die beste Nahkampfwaffe an, die sich im Inventory befindet
//	und zieht sie auch gleich.
//	-> gibt TRUE zurück, wenn Waffe angelegt werden konnte, sonst FALSE
//////////////////////////////////////////////////////////////////////////
func int B_EquipAndDrawBestMeleeWeapon(var C_NPC slf)
{
	PrintDebugNpc		(PD_ZS_FRAME,	"B_EquipAndDrawBestMeleeWeapon");

	// ---- Zauber noch aktiv ? ---- 
	if (Npc_IsInFightMode(slf, FMODE_MAGIC))
	{
		PrintDebugNpc	(PD_ZS_CHECK,	"...vorher Zauber wegstecken!");
		AI_UnreadySpell	(slf);										// ... dann weg damit
	};

	// ---- Nahkampfwaffe dabei ? ---- 
	if (Npc_HasEquippedMeleeWeapon(slf))
	{
		if (!Npc_HasReadiedMeleeWeapon(slf))
		{
			PrintDebugNpc			(PD_ZS_CHECK,	"...noch keine Nahkampfwaffe gezogen!");
			AI_StopAim				(slf);
			B_FullStop 				(slf);
			AI_RemoveWeapon			(slf);
			_ = AI_EquipBestMeleeWeapon	(slf);	
			AI_ReadyMeleeWeapon		(slf);
		};

		return TRUE;
	};

	return FALSE;
};

//////////////////////////////////////////////////////////////////////////
//	B_EquipAndDrawBestRangedWeapon
//	==============================
//	Legt die beste Fernkampfwaffe an, die sich im Inventory befindet
//	und zieht sie auch gleich.
//	-> gibt TRUE zurück, wenn Waffe angelegt werden konnte, sonst FALSE
//////////////////////////////////////////////////////////////////////////
func int B_EquipAndDrawBestRangedWeapon(var C_NPC slf)
{
	PrintDebugNpc		(PD_ZS_FRAME,	"B_EquipAndDrawBestRangedWeapon");

	// ---- Zauber noch aktiv ? ---- 
	if (Npc_IsInFightMode(slf, FMODE_MAGIC))
	{
		PrintDebugNpc	(PD_ZS_CHECK,	"...vorher Zauber wegstecken!");
		AI_UnreadySpell	(slf);										// ... dann weg damit
	};

	// ---- Fernkampfwaffe dabei ? ---- 
	if (Npc_HasRangedWeaponWithAmmo(slf))
	{
		PrintDebugNpc				(PD_ZS_CHECK,	"...Fernkampfwaffe mit Ammo vorhanden!");
		if (!Npc_HasReadiedRangedWeapon(slf))
		{
			PrintDebugNpc			(PD_ZS_CHECK,	"...noch keine Fernkampfwaffe gezogen!");
			B_FullStop 				(slf);
			AI_RemoveWeapon			(slf);
			_ = AI_EquipBestRangedWeapon(slf);	
			AI_ReadyRangedWeapon	(slf);
		}
		else
		{
			if (slf.fight_tactic == FAI_HUMAN_RANGED)
			{
				B_FillQuiver(slf);
			};
		};
		return TRUE;
	}
	else
	{
		PrintDebugNpc				(PD_ZS_CHECK,	"...KEINE Fernkampfwaffe mit Ammo vorhanden!");
	};
	return FALSE;
};

//////////////////////////////////////////////////////////////////////////
//	B_DrawSpell
//	===========
//	Zieht den angegebenen Spruch unter Berücksichtigung, daß eventuell
//	vorher ein AI_UnreadySpell durchgeführt werden muß.
//////////////////////////////////////////////////////////////////////////
func void B_DrawSpell(var C_NPC slf, var int spell, var int mana)
{
	PrintDebugNpc				(PD_ZS_FRAME,	"B_DrawSpell");

	if (Npc_IsInFightMode(slf, FMODE_MAGIC))
	{
		PrintDebugNpc			(PD_ZS_CHECK,	"...bereits im Magiemodus!");
		if (Npc_GetActiveSpell(slf) != spell)
		{
			PrintDebugNpc		(PD_ZS_CHECK,	"...dieser Zauber liegt noch nicht auf der Hand!");
			AI_UnreadySpell		(slf);
// Das folgende AI_ReadySpell() verursacht den Kollisionsbug
// "only one moving vob without collision..." wenn die Funktion
// zweimal hintereinander aufgerufen wird, ohne ein
// AI_UnreadySpell dawzischen. Genau das ist aber nötig
// wenn der NSC die Stärke des Zaubers ändern will ohne
// den Zauber wegzustecken und wieder hervorzuholen!
		};
		AI_ReadySpell			(slf, spell, mana);
	}
	else
	{
		if (Npc_IsInFightMode(slf, FMODE_MELEE)||Npc_IsInFightMode(slf, FMODE_FIST))
		{
			AI_RemoveWeapon		(slf);
		};
		if (Npc_IsInFightMode(slf, FMODE_FAR))
		{
			AI_StopAim			(slf);
			AI_RemoveWeapon		(slf);
		};
			
		PrintDebugNpc			(PD_ZS_CHECK,	"...noch nicht im Magiemodus!");
		AI_ReadySpell			(slf, spell, mana);
	};

	//-------- "echte" Magier bekommen Mana dazugeschummelt --------
	if (slf.fight_tactic == FAI_HUMAN_MAGE)
	{
		PrintDebugNpc			(PD_ZS_CHECK,	"...Magier-Kampftaktik!");

		var int manaLeft;	manaLeft = slf.attribute[ATR_MANA];
		var int manaMax;	manaMax	 = slf.attribute[ATR_MANA_MAX];
		var int manaRefill;
		if ( manaLeft < (manaMax/2) )
		{
			PrintDebugInt		(PD_ZS_CHECK,	"...Mana übrig: ", manaLeft);
			manaRefill =		(manaMax/2) - manaLeft;		
			Npc_ChangeAttribute	(slf,	ATR_MANA,	manaRefill);
			PrintDebugInt		(PD_ZS_CHECK,	"...Mana hinzugefügt: ", manaRefill);
		};
	};
	
	return;
};

//////////////////////////////////////////////////////////////////////////
//	B_SelectWeapon
//	==============
//	Wählt für den NSC 'slf' unter Berücksichtigung der Kampfsitution
//	die jeweils passende Waffe aus.
//	Diese Funktion wird während der ZS_Attack alle 3 Sekunden
//	aufgerufen und interpretiert den NSC 'oth' als das anzugreifende
//	Ziel. 
//////////////////////////////////////////////////////////////////////////
func void B_SelectWeapon(var C_NPC slf, var C_NPC oth)
{
	PrintDebugNpc		(PD_ZS_FRAME,	"B_SelectWeapon");
	
	if (Npc_IsPlayer(oth) == true)
	{
		if (Npc_IsInFightMode(oth, FMODE_FIST) == true)
		{
			if (Npc_IsInFightMode(slf, FMODE_FIST) == false)
			{
				AI_UnequipWeapons(slf);
				// DAMIANUT-OPT-TODO: Zak³adanie broni po walce.
				AI_ReadyMeleeWeapon(slf);
			};
			return;
		} else if (Npc_IsInFightMode(oth, FMODE_MELEE) == true)
		{
			if (Npc_IsInFightMode(slf, FMODE_MELEE) == true)
			{
				return;
			} else
			{
				if (B_EquipAndDrawBestMeleeWeapon(slf))
				{
					return;
				} else 
				{
					_ = B_EquipAndDrawBestRangedWeapon(slf);
					
					return;
				};
			};
			
		} else if (Npc_IsInFightMode(oth, FMODE_FAR) == true)
		{
			if (Npc_IsInFightMode(slf, FMODE_FAR) == true)
			{
				return;
			} else
			{
				_ = B_EquipAndDrawBestRangedWeapon(slf);
				
				return;
			};
		};
	};

	//######## Waffenbasierte Kampftaktik ?  ########
	PrintDebugNpc		(PD_ZS_CHECK,	"...Waffenbasierte Kampftaktik!");
	//-------- Gegner in Nahkampfdistanz ? --------
	if ( (Npc_GetDistToNpc(slf,oth)<HAI_DIST_MELEE) && (slf.fight_tactic!=FAI_HUMAN_RANGED) )
	{
		PrintDebugNpc			(PD_ZS_CHECK,	"...Gegner in Nahkampfreichweite & kein purer Fernkämpfer!");

		// ---- Erst Nahkampfwaffe probieren... ---- 
		if (B_EquipAndDrawBestMeleeWeapon(slf))
		{
			return;
		};

		// ---- ...sonst mit den Fäusten kämpfen ---- 								
		PrintDebugNpc			(PD_ZS_CHECK, "...keine Nahkampfwaffe im Inv -> Faustkampf!");
		AI_ReadyMeleeWeapon		(slf);	// VORSICHT: in v0.96c werden hier nicht die Fäuste, sondern die letzte Waffe gezogen !!! -> wird in v0.97 behoben sein (Kommentar dann löschen)
		return;		
	}
	else
	{
		PrintDebugNpc			(PD_ZS_CHECK,	"...Gegner in Fernkampfreichweite oder NSC ist ein purer Fernkämpfer!");
		
		// ---- Erst Fernkampfwaffe probieren... ---- 
		if (B_EquipAndDrawBestRangedWeapon(slf))
		{
			return;
		};		

		// ---- ...sonst Nahkampfwaffe versuchen... ---- 
		if (B_EquipAndDrawBestMeleeWeapon(slf))
		{
			return;
		};

		// ---- ...herumliegende Waffe suchen, sonst mit den Fäusten kämpfen ---- 								
		if (!B_FetchWeapon())
		{
			PrintDebugNpc		(PD_ZS_CHECK, "...keine Waffe gefunden -> Faustkampf!");
			AI_ReadyMeleeWeapon	(slf);
			return;		
		};
	};			

	return;			
};
//--------------------------------------------------------------------------

