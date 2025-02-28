/*
 *  Cooking.d
 *  - cooking on a pan 
 *
 *  NyrasPrologueDemake
 */
 
/*
 *  B_ENDPRODUCTIONDIALOG
 */
func void B_ENDPRODUCTIONDIALOG()
{
	self.aivar[AIV_INVINCIBLE] = FALSE;
	PLAYER_MOBSI_PRODUCTION = MOBSI_None;
	AI_StopProcessInfos(self);
};

/*
 *  PC_Cooking_AssignDescAllMeat
 *   - a description of the dialogue with frying the all meats
 */
func string PC_Cooking_AssignDescAllMeat(var int amount)
{
	var string desc2; desc2 = ConcatStrings(ItFo_Mutton_01_name, " (x");
	desc2 = ConcatStrings(desc2, IntToString(amount));
	desc2 = ConcatStrings(desc2, ")");
	
	return desc2;
};

/*
 *  PC_Cooking_End
 */
INSTANCE PC_Cooking_End(C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_Cooking_End_Condition;
	information		= PC_Cooking_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};
FUNC INT PC_Cooking_End_Condition()
{
	return (PLAYER_MOBSI_PRODUCTION	== MOBSI_Cooking);
};
FUNC VOID PC_Cooking_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  PC_MuttonAll_Start
 */
INSTANCE PC_MuttonAll_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 20;
	condition		= PC_MuttonAll_Start_Condition;
	information		= PC_MuttonAll_Start_Info;
	permanent		= TRUE;
};
FUNC INT PC_MuttonAll_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_Cooking)
	&& (Npc_HasItems(self, ItFoMuttonRaw) > 1)
	{
		return true;
	};
};
FUNC VOID PC_MuttonAll_Start_Info()
{
	// Fry
	var int amount; amount = Npc_HasItems(self, ItFoMuttonRaw); 
	Npc_RemoveInvItems(self, ItFoMuttonRaw, amount);
	CreateInvItems(self, ItFoMutton, amount);

	// Leave the dialogue
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  PC_Mutton_Start
 */
INSTANCE PC_Mutton_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 20;
	condition		= PC_Mutton_Start_Condition;
	information		= PC_Mutton_Start_Info;
	permanent		= TRUE;
};
FUNC INT PC_Mutton_Start_Condition ()
{
	return (PLAYER_MOBSI_PRODUCTION	== MOBSI_Cooking);
};
FUNC VOID PC_Mutton_Start_Info()
{
	Npc_RemoveInvItem(self, ItFoMuttonRaw);
	CreateInvItem(self, ItFoMutton);
	
	var int amount; amount = Npc_HasItems(self, ItFoMuttonRaw);
	if (amount == 0)
	{
		B_ENDPRODUCTIONDIALOG();
	} else if (amount > 0)
	{
		PC_MuttonAll_Start.description = PC_Cooking_AssignDescAllMeat(amount);
	};
};

/*
 *  Cooking_S1
 */
FUNC VOID Cooking_S1()
{
	if (Hlp_GetInstanceID(self) == PC_HERO)
	{	
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_Cooking;
		
		// Restore a raw meat
		CreateInvItem(self, ItFoMuttonRaw);
		
		// Add dialogues description
		PC_Mutton_Start.description = ItFo_Mutton_01_name;
		var int amount; amount = Npc_HasItems(self, ItFoMuttonRaw);
		if (amount > 1)
		{
			PC_MuttonAll_Start.description = PC_Cooking_AssignDescAllMeat(amount);
		};
		
		AI_ProcessInfos(self);
	};
}; 
