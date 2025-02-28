//#####################################################################
//##
//##
//##							Instanz
//##
//##
//#####################################################################
INSTANCE CH(NPC_DEFAULT)
// PlayerInstanz
{
	//-------- primary data --------
	name 			= "CharacterHelper";
	Npctype			= Npctype_Main;
	guild			= GIL_NONE;
	level			= 10;
	voice			= 15;
	id				= 0;
	

	//-------- visuals --------
	// 						animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	//						Body-Mesh			Body-Tex	Skin-Color	Head-MMS    		Head-Tex	Teeth-Tex 	Armor-Tex
	Mdl_SetVisualBody	(self,"hum_body_Naked0",	4,			1,			"Hum_Head_Pony",	9, 			0,			-1);
	
	//-------- ai ----------
	start_aistate = ZS_CH_Hangaround;
};

func void ZS_CH_Hangaround ()
{
	PrintDebugNpc	(PD_ZS_FRAME,	"ZS_CH_Hangaround");

	Npc_PercEnable  	(self,	PERC_ASSESSPLAYER		,	B_AssessSC			);
	Npc_PercEnable  	(self,	PERC_ASSESSTALK			,	B_AssessTalk		);
};

func void ZS_CH_Hangaround_Loop ()
{
	PrintDebugNpc	(PD_ZS_LOOP,	"ZS_CH_Hangaround_Loop");
};

func void ZS_CH_Hangaround_End ()
{
	PrintDebugNpc	(PD_ZS_FRAME,	"ZS_CH_Hangaround_End");
};

func void B_SetHeroExp()
{
    var string Attributes;

    hero.exp = (250*((hero.level+1))*(hero.level));
    hero.exp_next = (250*((hero.level+2))*(hero.level+1));
    hero.LP = (hero.level * LP_PER_LEVEL);
    
    Attributes = "Level Up: Lernpunkte:";
    Attributes = ConcatStrings(Attributes, IntToString(hero.LP));
    Attributes = ConcatStrings(Attributes, "Hitpoints:");
    Attributes = ConcatStrings(Attributes, IntToString(hero.attribute[ATR_HITPOINTS_MAX]));
    
    PrintScreen	(Attributes, -1,-1,"font_old_20_white.tga",3);
    Snd_Play ("LEVELUP");    
};

func void B_SetHeroEquipment()
{
	PrintDebugNpc	(PD_ZS_CHECK, "B_SetHeroEquipment");	
    CreateInvItems(hero,ItAmArrow,100);
    CreateInvItems(hero,ItAmBolt,100);
    CreateInvItems(hero,ItLsTorch,30);
    CreateInvItems(hero,ItMiNugget,1000);
    CreateInvItems(hero,ItFo_Potion_Health_03,10);
    CreateInvItems(hero,ItFo_Potion_Mana_03,10);
    CreateInvItems(hero,ItKeLockpick,30);
    // CreateInvItems(hero,ItWrWorldMap,1);
};

func void B_SetHeroAttributes(VAR INT selection, var int increase, var int LP_cost)
{
    var string Attributes;
    
    if (hero.lp >= LP_cost)
	{
		hero.lp = hero.lp - LP_cost;
		
		Npc_ChangeAttribute (hero, selection, increase);
		
		Attributes = "Lernpunkte:";
        Attributes = ConcatStrings(Attributes, IntToString(hero.LP));
        Attributes = ConcatStrings(Attributes, "Str:");
        Attributes = ConcatStrings(Attributes, IntToString(hero.attribute[ATR_STRENGTH]));
        Attributes = ConcatStrings(Attributes, "Dex:");
        Attributes = ConcatStrings(Attributes, IntToString(hero.attribute[ATR_DEXTERITY]));
        Attributes = ConcatStrings(Attributes, "Mana:");
        Attributes = ConcatStrings(Attributes, IntToString(hero.attribute[ATR_MANA_MAX]));
		
		PrintScreen	(Attributes, -1,-1,"font_old_20_white.tga",3);
	}
	else 
	{
		PrintScreen	("Zu wenig Lernpunkte!", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};	
};

func void B_SetHeroWeapon()
{
    if hero.level <= 5
    {
        CreateInvItem(hero,ItMw_1H_Mace_02);
        CreateInvItem(hero,ItRw_Bow_Small_04);
 	    
	        
        PrintScreen	("nötig STR 11  DEX 16", -1,-1,"font_old_20_white.tga",10);
    }   
    else if hero.level <= 10
    {
        CreateInvItem(hero,ItMw_1H_Sword_Long_01);
        CreateInvItem(hero,ItRw_Bow_Long_02);
 	    
        PrintScreen	("nötig STR 17  DEX 22", -1,-1,"font_old_20_white.tga",10);
    }
    else if hero.level <= 15
    {
        CreateInvItem(hero,ItMw_1H_Sword_Broad_01);
        CreateInvItem(hero,ItRw_Bow_Long_05);
   	    
        PrintScreen	("nötig: STR 26  DEX 28", -1,-1,"font_old_20_white.tga",10);
    }
    else if hero.level <= 20
    {
        CreateInvItem(hero,ItMw_2H_Sword_Light_01);
		CreateInvItem(hero,ItMw_1H_Sword_Broad_04);
        CreateInvItem(hero,ItRw_Bow_Long_08);
 	    
        PrintScreen	("nötig STR 52  DEX 34", -1,-1,"font_old_20_white.tga",10);
    }
    else if hero.level <= 25
    {
        CreateInvItem(hero,ItMw_2H_Sword_03);
		CreateInvItem(hero,ItMw_1H_Sword_Broad_04);
        CreateInvItem(hero,ItRw_Bow_War_02);
  	    
        PrintScreen	("nötig STR 62  DEX 40", -1,-1,"font_old_20_white.tga",10);
    }
    else if hero.level <= 30
    {
        CreateInvItem(hero,ItMw_2H_Axe_Heavy_04);
		CreateInvItem(hero,ItMw_1H_Sword_Broad_04);
        CreateInvItem(hero,ItRw_Bow_War_05);
        
        PrintScreen	("nötig STR 78  DEX 50", -1,-1,"font_old_20_white.tga",10);
    };
    AI_EquipBestMeleeWeapon(hero);
    AI_EquipBestRangedWeapon(hero);
    
    B_SetHeroEquipment();
};

//***************************************************************************
//	Rahmen-Infos
//***************************************************************************
instance  CH_Exit (C_INFO)
{
	npc			=  CH;
	nr			=  999;
	condition	=  CH_Exit_Condition;
	information	=  CH_Exit_Info;
	important	=  0;	
	permanent	=  1;
	description = "KONIEC";
};                       

FUNC int  CH_Exit_Condition()
{
	return 1;
};

FUNC VOID  CH_Exit_Info()
{
	AI_StopProcessInfos	(self);
};

//***************************************************************************
//	Levelwahl
//***************************************************************************

func void CH_Level_BACK()
{
	Info_ClearChoices	(CH_Level);
};

INSTANCE CH_Level (C_INFO)
{
	npc				= CH;
	condition		= CH_Level_Condition;
	information		= CH_Level_Info;
	important		= 0;
	permanent		= 1;
	description		= "Daj mi Poziom!"; 
};

FUNC INT CH_Level_Condition()
{		
	if (hero.level == 0)
	{
		return TRUE;
	};
};

func VOID CH_Level_Info()
{

	Info_ClearChoices	(CH_Level);
	
	Info_AddChoice		(CH_Level, "BACK"			 , CH_Level_BACK);
	Info_AddChoice		(CH_Level, "Level  1 -  5" , CH_Level1);
	Info_AddChoice		(CH_Level, "Level  6 - 10" , CH_Level6);
	Info_AddChoice		(CH_Level, "Level 11 - 15" , CH_Level11);
	Info_AddChoice		(CH_Level, "Level 16 - 20" , CH_Level16);
	Info_AddChoice		(CH_Level, "Level 21 - 25" , CH_Level21);
	Info_AddChoice		(CH_Level, "Level 26 - 30" , CH_Level26);
};

func void CH_Level26()
{
	Info_ClearChoices	(CH_Level);
	
	Info_AddChoice		(CH_Level, "BACK"		, CH_Level_BACK);
	Info_AddChoice		(CH_Level, "Level 26" , CH_Level_26);
	Info_AddChoice		(CH_Level, "Level 27" , CH_Level_27);
	Info_AddChoice		(CH_Level, "Level 28" , CH_Level_28);
	Info_AddChoice		(CH_Level, "Level 29" , CH_Level_29);
	Info_AddChoice		(CH_Level, "Level 30" , CH_Level_30);
};  

func void CH_Level21()
{
	Info_ClearChoices	(CH_Level);
	
	Info_AddChoice		(CH_Level, "BACK"		, CH_Level_BACK);
	Info_AddChoice		(CH_Level, "Level 21" , CH_Level_21);
	Info_AddChoice		(CH_Level, "Level 22" , CH_Level_22);
	Info_AddChoice		(CH_Level, "Level 23" , CH_Level_23);
	Info_AddChoice		(CH_Level, "Level 24" , CH_Level_24);
	Info_AddChoice		(CH_Level, "Level 25" , CH_Level_25);
};  

func void CH_Level16()
{
	Info_ClearChoices	(CH_Level);
	
	Info_AddChoice		(CH_Level, "BACK"		, CH_Level_BACK);
	Info_AddChoice		(CH_Level, "Level 16" , CH_Level_16);
	Info_AddChoice		(CH_Level, "Level 17" , CH_Level_17);
	Info_AddChoice		(CH_Level, "Level 18" , CH_Level_18);
	Info_AddChoice		(CH_Level, "Level 19" , CH_Level_19);
	Info_AddChoice		(CH_Level, "Level 20" , CH_Level_20);
};

func void CH_Level11()
{
	Info_ClearChoices	(CH_Level);

	Info_AddChoice		(CH_Level, "BACK"		, CH_Level_BACK);
	Info_AddChoice		(CH_Level, "Level 11" , CH_Level_11);
	Info_AddChoice		(CH_Level, "Level 12" , CH_Level_12);
	Info_AddChoice		(CH_Level, "Level 13" , CH_Level_13);
	Info_AddChoice		(CH_Level, "Level 14" , CH_Level_14);
	Info_AddChoice		(CH_Level, "Level 15" , CH_Level_15);	
};

func void CH_Level6()
{
	Info_ClearChoices	(CH_Level);

	Info_AddChoice		(CH_Level, "BACK"	    , CH_Level_BACK);
	Info_AddChoice		(CH_Level, "Level  6" , CH_Level_6);
	Info_AddChoice		(CH_Level, "Level  7" , CH_Level_7);
	Info_AddChoice		(CH_Level, "Level  8" , CH_Level_8);
	Info_AddChoice		(CH_Level, "Level  9" , CH_Level_9);
	Info_AddChoice		(CH_Level, "Level 10" , CH_Level_10);	
};

func void CH_Level1()
{
	Info_ClearChoices	(CH_Level);

	Info_AddChoice		(CH_Level, "BACK"		, CH_Level_BACK);
	Info_AddChoice		(CH_Level, "Level 1" 	, CH_Level_1);
	Info_AddChoice		(CH_Level, "Level 2" 	, CH_Level_2);
	Info_AddChoice		(CH_Level, "Level 3" 	, CH_Level_3);
	Info_AddChoice		(CH_Level, "Level 4" 	, CH_Level_4);
	Info_AddChoice		(CH_Level, "Level 5" 	, CH_Level_5);	
};

func void CH_Level_1()
{ 
	Info_ClearChoices	(CH_Level);

    hero.level = 1;
    hero.attribute[ATR_HITPOINTS_MAX] = 52;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_2()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 2;
    hero.attribute[ATR_HITPOINTS_MAX] = 64;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_3()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 3;
    hero.attribute[ATR_HITPOINTS_MAX] = 76;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_4()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 4;
    hero.attribute[ATR_HITPOINTS_MAX] = 88;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_5()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 5;
    hero.attribute[ATR_HITPOINTS_MAX] = 100;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_6()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 6;
    hero.attribute[ATR_HITPOINTS_MAX] = 112;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_7()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 7;
    hero.attribute[ATR_HITPOINTS_MAX] = 124;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_8()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 8;
    hero.attribute[ATR_HITPOINTS_MAX] = 136;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_9()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 9;
    hero.attribute[ATR_HITPOINTS_MAX] = 148;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_10()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 10;
    hero.attribute[ATR_HITPOINTS_MAX] = 160;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_11()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 11;
    hero.attribute[ATR_HITPOINTS_MAX] = 172;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_12()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 12;
    hero.attribute[ATR_HITPOINTS_MAX] = 184;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_13()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 13;
    hero.attribute[ATR_HITPOINTS_MAX] = 196;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_14()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 14;
    hero.attribute[ATR_HITPOINTS_MAX] = 208;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_15()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 15;
    hero.attribute[ATR_HITPOINTS_MAX] = 220;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_16()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 16;
    hero.attribute[ATR_HITPOINTS_MAX] = 232;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_17()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 17;
    hero.attribute[ATR_HITPOINTS_MAX] = 244;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_18()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 18;
    hero.attribute[ATR_HITPOINTS_MAX] = 256;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_19()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 19;
    hero.attribute[ATR_HITPOINTS_MAX] = 268;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_20()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 20;
    hero.attribute[ATR_HITPOINTS_MAX] = 280;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_21()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 21;
    hero.attribute[ATR_HITPOINTS_MAX] = 292;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_22()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 22;
    hero.attribute[ATR_HITPOINTS_MAX] = 304;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_23()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 23;
    hero.attribute[ATR_HITPOINTS_MAX] = 316;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_24()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 24;
    hero.attribute[ATR_HITPOINTS_MAX] = 328;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_25()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 25;
    hero.attribute[ATR_HITPOINTS_MAX] = 340;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_26()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 26;
    hero.attribute[ATR_HITPOINTS_MAX] = 352;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_27()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 27;
    hero.attribute[ATR_HITPOINTS_MAX] = 364;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_28()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 28;
    hero.attribute[ATR_HITPOINTS_MAX] = 376;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_29()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 29;
    hero.attribute[ATR_HITPOINTS_MAX] = 388;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

func void CH_Level_30()
{
	Info_ClearChoices	(CH_Level);

    hero.level = 30;
    hero.attribute[ATR_HITPOINTS_MAX] = 400;
    hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
    
    B_SetHeroExp();
	B_SetHeroWeapon();
};

//***************************************************************************
//	Gildenwahl
//***************************************************************************

func void CH_Guild_BACK()
{
	Info_ClearChoices	(CH_Guild);
};

INSTANCE CH_Guild (C_INFO)
{
	npc				= CH;
	condition		= CH_Guild_Condition;
	information		= CH_Guild_Info;
	important		= 0;
	permanent		= 1;
	description		= "Chcê Gildiê!"; 
};

FUNC INT CH_Guild_Condition()
{		
	if	(hero.level > 5)
	&&	(Npc_GetTrueGuild(hero) == GIL_NONE)
	{
		return TRUE;
	};
};

func VOID CH_Guild_Info()
{
    Info_ClearChoices	(CH_Guild);
	
	Info_AddChoice		(CH_Guild, "BACK"			 , CH_Guild_BACK);
	if ((hero.level >= 6) && (hero.level <= 10))
	{
	    Info_AddChoice		(CH_Guild, "Schatten"      , CH_Shadow);
    };
    if ((hero.level >= 10) && (hero.level <= 15))
	{	    
	    Info_AddChoice		(CH_Guild, "Gardist"       , CH_Guard);
	};
	if ((hero.level >= 10) && (hero.level <= 15))
	{    
	    Info_AddChoice		(CH_Guild, "Feuermagier"   , CH_Firemage);
	};
	if ((hero.level >= 6) && (hero.level <= 10))
	{
	    Info_AddChoice		(CH_Guild, "Bandit"        , CH_Bandit);
	};
	if ((hero.level >= 10))
	{    
	    Info_AddChoice		(CH_Guild, "Söldner"       , CH_Mercenary);
	};
	if ((hero.level >= 16))
	{    
	    Info_AddChoice		(CH_Guild, "Wassermagier"  , CH_Watermage);
	};
	if ((hero.level >= 6) && (hero.level <= 10))
	{    
	    Info_AddChoice		(CH_Guild, "Novize"        , CH_Novice);
	};
	if ((hero.level >= 10))
	{    
	    Info_AddChoice		(CH_Guild, "Templer"       , CH_Templar);
	};    
};

func void CH_Templar()
{
	Info_ClearChoices	(CH_Guild);
	
	hero.guild = GIL_TPL;
	Npc_SetTrueGuild(hero, GIL_TPL);
	
	if hero.level <= 15
	{
	    CreateInvItem(hero,TPL_ARMOR_M);
	    AI_EquipArmor(hero,TPL_ARMOR_M);
	}
	else
	{
	    CreateInvItem(hero,TPL_ARMOR_H);
	    AI_EquipArmor(hero,TPL_ARMOR_H);
	};        
};  

func void CH_Novice()
{
	Info_ClearChoices	(CH_Guild);
	
	hero.guild = GIL_NOV;
	Npc_SetTrueGuild(hero, GIL_NOV);
	
	if hero.level <= 5
	{
	    CreateInvItem(hero,NOV_ARMOR_L);
	    AI_EquipArmor(hero,NOV_ARMOR_L);
	}
	else 
	{
	    CreateInvItem(hero,NOV_ARMOR_H);
	    AI_EquipArmor(hero,NOV_ARMOR_H);
	};
};  

func void CH_Watermage()
{
	Info_ClearChoices	(CH_Guild);
	
	hero.guild = GIL_KDW;
	Npc_SetTrueGuild(hero, GIL_KDW);
	
	if hero.level <= 20
	{
	    CreateInvItem(hero,KDW_ARMOR_L);
	    AI_EquipArmor(hero,KDW_ARMOR_L);
	}
	else 
	{
	    CreateInvItem(hero,KDW_ARMOR_H);
	    AI_EquipArmor(hero,KDW_ARMOR_H);
	};
};

func void CH_Mercenary()
{
	Info_ClearChoices	(CH_Guild);
	
	hero.guild = GIL_SLD;
	Npc_SetTrueGuild(hero, GIL_SLD);
	
	if hero.level <= 15
	{
	    CreateInvItem(hero,SLD_ARMOR_M);
	    AI_EquipArmor(hero,SLD_ARMOR_M);
	}
	else
	{
	    CreateInvItem(hero,SLD_ARMOR_H);
	    AI_EquipArmor(hero,SLD_ARMOR_H);
	};        
};

func void CH_Bandit()
{
	Info_ClearChoices	(CH_Guild);
	
	hero.guild = GIL_ORG;
	Npc_SetTrueGuild(hero, GIL_ORG);
	
    CreateInvItem(hero,ORG_ARMOR_H);
    AI_EquipArmor(hero,ORG_ARMOR_H);
};

func void CH_Firemage()
{
	Info_ClearChoices	(CH_Guild);
	
	hero.guild = GIL_KDF;
	Npc_SetTrueGuild(hero, GIL_KDF);
	
	CreateInvItem(hero,KDF_ARMOR_H);
	AI_EquipArmor(hero,KDF_ARMOR_H);
};

func void CH_Guard()
{
	Info_ClearChoices	(CH_Guild);
	
	hero.guild = GIL_GRD;
	Npc_SetTrueGuild(hero, GIL_GRD);
	
	if hero.level <= 15
	{
	    CreateInvItem(hero,GRD_ARMOR_M);
	    AI_EquipArmor(hero,GRD_ARMOR_M);
	}
	else 
	{
	    CreateInvItem(hero,ORG_ARMOR_H);
	    AI_EquipArmor(hero,ORG_ARMOR_H);
	};
};

func void CH_Shadow()
{
	Info_ClearChoices	(CH_Guild);
	
	hero.guild = GIL_STT;
	Npc_SetTrueGuild(hero, GIL_STT);
	
	CreateInvItem(hero,STT_ARMOR_H);
	AI_EquipArmor(hero,STT_ARMOR_H);
};



