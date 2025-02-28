// wird aufgerufen, NACHDEM die Action Taste losgelassen wurde, und in Spell_ProcessMana der Spruch NOCH NICHT GECASTED und NOCH NICHT GESTOPPT wurde
// wieviele Mana bereits investiert wurden wird mit manaInvested übergeben.
// voher wurde pro investiertem Punkt die Skript Funktion Spell_ProcessMana aufgerufen
// es macht keinen Sinn, diese Funktion was anderes als SPL_SENDSTOP oder SPL_SENDCAST zurückliefern zu lassen

// SELF 	= Der Caster
// OTHER 	= Das Opfer // kann auch leer sein


func int Spell_ProcessMana_Release(var int manainvested)
{
	//PrintDebugNpc(PD_MAGIC,"Spell_ProcessMana_Release called");

	//PrintDebugInt(PD_MAGIC, "### MAGIC ###-> invested Mana: ", 	manaInvested);
	//PrintDebugInt(PD_MAGIC, "### MAGIC ###-> Spell-Level: ", 	Npc_GetActiveSpellLevel(self));

////////////////////////////////////////////////////////////////////////////////////////////
// Spells, die beim loslassen der Taste auch dann gecastet werden wenn noch nicht max. Mana investiert
	//PrintDebugInt		(PD_MAGIC, "...manaInvested: ", manaInvested);
	return false;
};