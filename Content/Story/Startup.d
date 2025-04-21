//*******************************************************************************
//*								Surface											*
//*******************************************************************************
func void STARTUP_SUB_SURFACE ()
{
};

func void INIT_SUB_SURFACE ()
{
};

func void STARTUP_SURFACE ()
{
    STARTUP_SUB_SURFACE ();
};

func void INIT_SURFACE ()
{
    INIT_SUB_SURFACE ();
};

//-------- eigentliche Startup des Spiels --------
func void INIT_WORLD_DEMAKE ()
{
	INIT_Sub_Surface 		();

    B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals();
	
	Wld_SetMobRoutine(00,00, "FIREPLACE", 1);
};

func void STARTUP_WORLD_DEMAKE ()
{
	Startup_Sub_Surface			();
	INIT_WORLD_DEMAKE					();
	
	// NPC's
	Wld_InsertNpc	(PC_Thief, "DIEGO_START"); 
	Wld_InsertNpc	(STT_309_Whistler, "WHISTLER_START");
	Wld_InsertNpc	(GRD_251_Kirgo, "KIRGO_START");
	Wld_InsertNpc	(GRD_254_Orry, "ORRY_START");
	Wld_InsertNpc	(ORG_818_Ratford, "RATFORD_START");
	Wld_InsertNpc	(ORG_819_Drax, "DRAX_START");

	// Meatbugs
	Wld_InsertNpc 	(Meatbug, "MEATBUG_GATE_01");
	Wld_InsertNpc 	(Meatbug, "MEATBUG_GATE_02");

	// Molerats
	Wld_InsertNpc 	(Molerat, "MOLERAT_MINE_01");
	Wld_InsertNpc 	(Molerat, "MOLERAT_MINE_02");

	Wld_InsertNpc 	(Molerat, "MOLERAT_HILL_01");
	Wld_InsertNpc 	(Molerat, "MOLERAT_HILL_02");

	// Scavengers
	Wld_InsertNpc	(Scavenger, "SCAVENGER_HILL_01");
	Wld_InsertNpc	(Scavenger, "SCAVENGER_HILL_02");
	Wld_InsertNpc	(Scavenger, "SCAVENGER_HILL_03");
	Wld_InsertNpc	(Scavenger, "SCAVENGER_HILL_04");

	// Scavengers from "DraxHunt" quest
	Wld_InsertNpc	(DraxHuntScavenger_01, "DRAX_HUNT_SCAVENGER_01");
	Wld_InsertNpc	(DraxHuntScavenger_02, "DRAX_HUNT_SCAVENGER_02");
	Wld_InsertNpc	(DraxHuntScavenger_03, "DRAX_HUNT_SCAVENGER_03");

	// Green Gobbo
	Wld_InsertNpc 	(GreenGobboClub, "GOBBO_HILL_01");
	
	// TICKTOCK
	Wld_SendTrigger("TICKTOCK");
};
