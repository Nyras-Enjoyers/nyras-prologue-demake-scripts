// wird pro investiertem Mana aufgerufen // wieviele Mana bisher investiert wurden kann über Parameter manaInvested abgefragt werden
// diese Methode wird immer vom Caster aufgerufen
// SELF 	= Der Caster
// OTHER 	= Das Opfer // kann auch leer sein
func INT Spell_ProcessMana(VAR INT manaInvested)
{
	PrintDebugNpc(PD_MAGIC,"Spell_ProcessMana called");

	PrintDebugInt(PD_MAGIC, "### MAGIC ###-> invested Mana: ", 	manaInvested);
	PrintDebugInt(PD_MAGIC, "### MAGIC ###-> Spell-Level: ", 	Npc_GetActiveSpellLevel(self));
	return false;
};