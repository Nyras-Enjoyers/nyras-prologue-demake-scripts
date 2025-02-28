/*
 *  DraxCrate.d
 *   - only Drax can use it
 */

func int DraxCrate()
{
	return (Npc_IsPlayer(self) == false);
};
