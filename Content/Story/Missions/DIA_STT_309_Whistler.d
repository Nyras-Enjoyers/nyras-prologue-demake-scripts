//========================================
//-----------------> HELLO
//========================================

instance DIA_STT_309_Whistler_Hello (C_INFO)
{
	npc				= STT_309_Whistler;
	nr				= 1;
	condition		= DIA_STT_309_Whistler_Condition;
	information		= DIA_STT_309_Whistler_Info;
	important		= true;
};

func int DIA_STT_309_Whistler_Condition()
{
	if (Npc_IsInState (self, ZS_Talk)) && (Npc_KnowsInfo (other, DIA_PC_Thief_Hello))
	{
		return true;
	} else
	{
		return false;
	};
};

func void DIA_STT_309_Whistler_Info()
{
	AI_Output	(self, hero, "Whistler-CH0-None-Whistler-68409-0"); //Zarobiony jestem, œwie¿ak. Diego ju¿ ci wyjaœni³, co i jak, nie?
	AI_Output	(hero, self, "Whistler-CH0-None-Hero-92965");  		//Mam tylko parê pyta...
	AI_Output	(self, hero, "Whistler-CH0-None-Whistler-53621"); 	//Spieprzaj.
	
	AI_StopProcessInfos	(self);
};