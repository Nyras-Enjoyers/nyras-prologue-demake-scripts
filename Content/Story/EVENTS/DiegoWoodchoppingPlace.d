// Not for player
func int DIEGO_WOODCHOPPING_PLACE_COND()
{
	if (Hlp_IsValidNpc(self) == false) { return false; };
	
	return (Npc_IsPlayer(self) == false);
};
