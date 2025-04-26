/*
 *  Drax and Ratford go the camp
 */
 
/*
 *  HuntersWentToTheCamp
 *   - check whether the hunters reached the camp
 */
func void HuntersWentToTheCamp()
{
	if (Ratford_IsInTheCamp == true)
	&& (Drax_IsInTheCamp == true)
	{
		HuntersCamp_AllCameBack = true;
	};
};

/*
 *  Drax_GoesCamp
 */
func void Drax_GoesCamp()
{
	// Goes to the camp
	Drax_StartGoingToTheCamp = true;
	Drax_GoToTheCamp = true;
	B_ExchangeRoutine_C_NPC(DraxNpc, "HuntersCamp");
	
	// Don't want talk
	if (Drax_HowLooksThisRatford == false)
	{
		Drax_IHaveNoTimeForThat = true;
	};
};

/*
 *  Ratford_GoesCamp
 */
func void Ratford_GoesCamp()
{
	// Goes to the camp
	Ratford_StartGoingToTheCamp = true;
	Ratford_GoToTheCamp = true;
	
	B_ExchangeRoutine_C_NPC(RatfordNpc, "HuntersCamp");
};
