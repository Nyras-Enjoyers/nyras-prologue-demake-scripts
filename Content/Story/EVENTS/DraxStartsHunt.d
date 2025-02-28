/*
 *  DraxStartsHunt.d
 *   - when Drax starts hunting
 */

/*
 *  DraxStartsHunt
 */
func void DraxStartsHunt()
{
	Drax_IsHunting = true;

	B_ExchangeRoutine_C_NPC (self, "HUNTING");
};
