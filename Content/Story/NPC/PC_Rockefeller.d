INSTANCE PC_Rockefeller(NPC_DEFAULT)
// PlayerInstanz
{
	//-------- primary data --------
	name 			= "Rockefeller";
	Npctype			= Npctype_Main;
	guild			= GIL_NONE;
	level			= 30;
	voice			= 15;
	id				= 0;
	
	//--------- abilities --------
	attribute[ATR_STRENGTH] =		100;
	attribute[ATR_DEXTERITY] =		100;
	attribute[ATR_MANA_MAX] =		100;
	attribute[ATR_MANA] =			100;
	attribute[ATR_HITPOINTS_MAX] =	400;
	attribute[ATR_HITPOINTS] =		400;

	//-------- visuals --------
	// 						animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	//						Body-Mesh			Body-Tex	Skin-Color	Head-MMS    		Head-Tex	Teeth-Tex 	Armor-Tex
	Mdl_SetVisualBody (self,"hum_body_Naked0",	4,			1,			"Hum_Head_Pony",	9, 			0,			EBR_ARMOR_H2);

	Npc_SetTalentSkill		( self, NPC_TALENT_PICKPOCKET,1);Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60); 
	Npc_SetTalentSkill		( self, NPC_TALENT_SNEAK,	1);	
	Npc_SetTalentSkill		( self, NPC_TALENT_PICKLOCK,	1);Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60); 
	Npc_SetTalentSkill		( self, NPC_TALENT_MAGE,		6);
	
	Npc_SetTalentSkill    (self, NPC_TALENT_1H,2);
	Npc_SetTalentSkill	(self, NPC_TALENT_2H,2);
	Npc_SetTalentSkill	(self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill	(self, NPC_TALENT_CROSSBOW,1);
	
	//-------- inventory --------

//----------------------------------------
//Armor.d
//----------------------------------------

	CreateInvItem(self,ORE_ARMOR_H);
	CreateInvItem(self,ORE_ARMOR_M);
	CreateInvItem(self,CRW_ARMOR_H);
	CreateInvItem(self,DMB_ARMOR_M);
	CreateInvItem(self,EBR_ARMOR_M);
	CreateInvItem(self,EBR_ARMOR_H);
	CreateInvItem(self,EBR_ARMOR_H2);
	CreateInvItem(self,GRD_ARMOR_L);
	CreateInvItem(self,GRD_ARMOR_M);
	CreateInvItem(self,GRD_ARMOR_H);
	CreateInvItem(self,GUR_ARMOR_H);
	CreateInvItem(self,GUR_ARMOR_M);
	CreateInvItem(self,KDF_ARMOR_L);
	CreateInvItem(self,KDF_ARMOR_H);
	CreateInvItem(self,KDW_ARMOR_L);
	CreateInvItem(self,KDW_ARMOR_H);
	CreateInvItem(self,NOV_ARMOR_L);
	CreateInvItem(self,NOV_ARMOR_M);
	CreateInvItem(self,NOV_ARMOR_H);
	CreateInvItem(self,ORG_ARMOR_L);
	CreateInvItem(self,ORG_ARMOR_M);
	CreateInvItem(self,ORG_ARMOR_H);
	CreateInvItem(self,SFB_ARMOR_L);
	CreateInvItem(self,SLD_ARMOR_L);
	CreateInvItem(self,SLD_ARMOR_M);
	CreateInvItem(self,SLD_ARMOR_H);
	CreateInvItem(self,STT_ARMOR_M);
	CreateInvItem(self,STT_ARMOR_H);
	CreateInvItem(self,TPL_ARMOR_L);
	CreateInvItem(self,TPL_ARMOR_M);
	CreateInvItem(self,TPL_ARMOR_H);
	CreateInvItem(self,VLK_ARMOR_M);
	CreateInvItem(self,VLK_ARMOR_L);

//----------------------------------------
//Artifacts.d
//----------------------------------------
	//CreateInvItem(self,ItArRunesword);
//	////CreateInvItems(self,ItArSpeedPotion,5);



// Equipen
	//EquipItem	 (self,ItArRuneFireball);
	//EquipItem	 (self,ItArRuneLightning);

	//EquipItem	 (self,ItArRuneWindfist);
	//EquipItem	 (self,ItArRuneControl);
	//EquipItem	 (self,ItArRuneSleep);

//----------------------------------------
//Food.d
//----------------------------------------
	CreateInvItems(self,ItFo_mutton_01,20);	
	CreateInvItems(self,ItFoApple,5);
	CreateInvItems(self,ItFoLoaf,5);
	CreateInvItems(self,ItFoMutton,10);
	CreateInvItems(self,ItFoMuttonRaw,20);
	CreateInvItems(self,ItFoCheese,5);
	CreateInvItems(self,ItFoRice,5);
	CreateInvItems(self,ItFoSoup,5);
	CreateInvItems(self,ItFoMeatbugragout,5);
	CreateInvItems(self,ItFoCrawlersoup,5);
	CreateInvItems(self,ItFoBooze,10);
	CreateInvItems(self,ItFoWine,5);
	CreateInvItems(self,ItFo_wineberrys_01,5);
	CreateInvItems(self,ItFoBeer,5);
	
//PFLANZEN
	CreateInvItems(self,ItFo_Plants_Trollberrys_01,5);
	CreateInvItems(self,ItFo_Plants_Flameberry_01,5);
	CreateInvItems(self,ItFo_Plants_Nightshadow_01,5);
	CreateInvItems(self,ItFo_Plants_Nightshadow_02,5);
	CreateInvItems(self,ItFo_Plants_OrcHerb_01,5);
	CreateInvItems(self,ItFo_Plants_OrcHerb_02,5);
	CreateInvItems(self,ItFo_Plants_mushroom_01,5);
	CreateInvItems(self,ItFo_Plants_mushroom_02,5);
	CreateInvItems(self,ItFo_Plants_Stoneroot_01,5);
	CreateInvItems(self,ItFo_Plants_Stoneroot_02,5);
	CreateInvItems(self,ItFo_Plants_RavenHerb_01,5);
	CreateInvItems(self,ItFo_Plants_RavenHerb_02,5);
	CreateInvItems(self,ItFo_Plants_mountainmoos_01,5);
	CreateInvItems(self,ItFo_Plants_mountainmoos_02,5);
	CreateInvItems(self,ItFo_Plants_Berrys_01,5);
	CreateInvItems(self,ItFo_Plants_Bloodwood_01,5);
	CreateInvItems(self,ItFo_Plants_Towerwood_01,5);
	CreateInvItems(self,ItFo_Plants_Seraphis_01,5);
	CreateInvItems(self,ItFo_Plants_Velayis_01,5);
	CreateInvItems(self,ItFo_Plants_Herb_03,5);
	CreateInvItems(self,ItFo_Plants_Herb_02,5);
	CreateInvItems(self,ItFo_Plants_Herb_01,5);
	CreateInvItems(self,ItMi_Plants_Swampherb_01,5);

	
//----------------------------------------
//MISC //Schlüssel
//----------------------------------------
	CreateInvItem(self,ItKeKey1);
	CreateInvItem(self,ItKeKey2);
	CreateInvItem(self,ItKeKey3);
	CreateInvItem(self,ItKeKey4);
	CreateInvItems(self,ItKeLockpick,100);
//----------------------------------------
//MISC /Light_sources
//----------------------------------------
	CreateInvItems(self,ItLsTorch,50);

//----------------------------------------
//misc.d
//----------------------------------------
	CreateInvItems(self,ItMiHammer,5);
	CreateInvItems(self,ItMiScoop,5);
	//CreateInvItems(self,ItMiTeleportstone,5);
	CreateInvItems(self,ItMiNugget,1000);
	
	//CreateInvItem(self,ItMiDrumstick);
	// CreateInvItem(self,ItMiAlarmhorn);
	//CreateInvItem(self,ItMiSleepersword );
	CreateInvItems(self,ItMiSwordraw,5);
	CreateInvItem(self,ItMiLute);
	CreateInvItems(self,ItMiStomper,5);
	CreateInvItems(self,ItMiFlask,5);
//---------------------------------------------------
//MISC STUFF
//-------------------------------------------------
	CreateInvItem(self,ItMi_Stuff_Pipe_01);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItMi_Stuff_OldCoin_01);
	CreateInvItem(self,ItMi_Stuff_Plate_01);
	CreateInvItem(self,ItMi_Stuff_Candel_01);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	CreateInvItem(self,ItMi_Stuff_Cup_02);
	CreateInvItem(self,ItMi_Stuff_Silverware_01);
	CreateInvItem(self,ItMi_Stuff_Pan_01);
	CreateInvItem(self,ItMi_Stuff_Mug_01);
	CreateInvItem(self,ItMi_Stuff_Amphore_01);
	// CreateInvItem(self,ItMi_Stuff_Idol_Sleeper_01);
	// CreateInvItem(self,ItMi_Stuff_Idol_Ogront_01);
	CreateInvItems(self,ItMiJoint_1,5);
	CreateInvItems(self,ItMiJoint_2,5);
	CreateInvItems(self,ItMiJoint_3,5);
//----------------------------------------
//Ranged_weapons.d
//----------------------------------------
	//Kurzbogen
	CreateInvItem(self,ItRw_Bow_Small_01);
	CreateInvItem(self,ItRw_Bow_Small_02 );
	CreateInvItem(self,ItRw_Bow_Small_03 );
	CreateInvItem(self,ItRw_Bow_Small_04 );
	CreateInvItem(self,ItRw_Bow_Small_05);
	//Langbogen
	CreateInvItem(self,ItRw_Bow_Long_01);
	CreateInvItem(self,ItRw_Bow_Long_02);
	CreateInvItem(self,ItRw_Bow_Long_03);
	CreateInvItem(self,ItRw_Bow_Long_04);
	CreateInvItem(self,ItRw_Bow_Long_05);
	CreateInvItem(self,ItRw_Bow_Long_06);
	CreateInvItem(self,ItRw_Bow_Long_07);
	CreateInvItem(self,ItRw_Bow_Long_08);
	CreateInvItem(self,ItRw_Bow_Long_09);
	//Kriegsbogen
	CreateInvItem(self,ItRw_Bow_War_01);
	CreateInvItem(self,ItRw_Bow_War_02);
	CreateInvItem(self,ItRw_Bow_War_03);
	CreateInvItem(self,ItRw_Bow_War_04);
	CreateInvItem(self,ItRw_Bow_War_05);
	//Armbrust
	CreateInvItem(self,ItRw_Crossbow_01);
	CreateInvItem(self,ItRw_Crossbow_02);
	CreateInvItem(self,ItRw_Crossbow_03);
	CreateInvItem(self,ItRw_Crossbow_04);

	//Orc
//	CreateInvItem(self,ItRwOrcstaff ); 
	
	
	
//----------------------------------------
//Ammunition.d
//----------------------------------------
	CreateInvItems(self,ItAmArrow,50);
	CreateInvItems(self,ItAmBolt,50);
	

//----------------------------------------
//Melee_weapons.d
//----------------------------------------
	CreateInvItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItMw_1H_Poker_01);	
	CreateInvItem(self,ItMw_1H_Sickle_01);
	CreateInvItem(self,ItMw_1H_Mace_Light_01);
	CreateInvItem(self,ItMw_1H_Sledgehammer_01);
	EquipItem	 (self,ItMw_1H_Warhammer_01 );
	CreateInvItem(self,ItMw_1H_Warhammer_02);
	CreateInvItem(self,ItMw_1H_Warhammer_03);
	CreateInvItem(self,ItMw_1H_Hatchet_01);
	CreateInvItem(self,ItMw_1H_Sword_Old_01);
	CreateInvItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMw_1H_Sword_Short_01);
	CreateInvItem(self,ItMw_1H_Sword_Short_02);
	CreateInvItem(self,ItMw_1H_Sword_Short_03);
	CreateInvItem(self,ItMw_1H_Sword_Short_04);
	CreateInvItem(self,ItMw_1H_Sword_Short_05);
	CreateInvItem(self,ItMw_1H_Axe_Old_01);
	CreateInvItem(self,ItMw_1H_Scythe_01);
	CreateInvItem(self,ItMw_2H_Staff_01);
	CreateInvItem(self,ItMw_2H_Staff_02);
	CreateInvItem(self,ItMw_2H_Staff_03);
	CreateInvItem(self,ItMw_1H_Mace_01);
	CreateInvItem(self,ItMw_1H_Mace_02);
	CreateInvItem(self,ItMw_1H_Mace_03);
	CreateInvItem(self,ItMw_1H_Mace_04);
	CreateInvItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItMw_1H_Sword_02);
	CreateInvItem(self,ItMw_1H_Sword_03);
	CreateInvItem(self,ItMw_1H_Sword_04);
	CreateInvItem(self,ItMw_1H_Sword_05);
	CreateInvItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItMw_1H_Mace_War_01);
	CreateInvItem(self,ItMw_1H_Mace_War_02);
	CreateInvItem(self,ItMw_1H_Mace_War_03);
	CreateInvItem(self,ItMw_1H_Mace_War_04);
	CreateInvItem(self,ItMw_1H_Sword_Long_01);
	CreateInvItem(self,ItMw_1H_Sword_Long_02);
	CreateInvItem(self,ItMw_1H_Sword_Long_03);
	CreateInvItem(self,ItMw_1H_Sword_Long_04);
	CreateInvItem(self,ItMw_1H_Sword_Long_05);
	CreateInvItem(self,ItMw_1H_Axe_01);
	CreateInvItem(self,ItMw_1H_Axe_02);
	CreateInvItem(self,ItMw_1H_Axe_03);
	CreateInvItem(self,ItMw_1H_Sword_Broad_01);
	CreateInvItem(self,ItMw_1H_Sword_Broad_02);
	CreateInvItem(self,ItMw_1H_Sword_Broad_03);
	CreateInvItem(self,ItMw_1H_Sword_Broad_04);
	CreateInvItem(self,ItMw_2H_Sword_Old_01);
	CreateInvItem(self,ItMw_1H_Sword_Bastard_01);
	CreateInvItem(self,ItMw_1H_Sword_Bastard_02);
	CreateInvItem(self,ItMw_1H_Sword_Bastard_03);
	CreateInvItem(self,ItMw_1H_Sword_Bastard_04);
	CreateInvItem(self,ItMw_2H_Axe_Old_01);
	CreateInvItem(self,ItMw_2H_Axe_Old_02);
	CreateInvItem(self,ItMw_2H_Axe_Old_03);
	CreateInvItem(self,ItMw_2H_Sword_Light_01);
	CreateInvItem(self,ItMw_2H_Sword_Light_02);
	CreateInvItem(self,ItMw_2H_Sword_Light_03);
	CreateInvItem(self,ItMw_2H_Sword_Light_04);
	CreateInvItem(self,ItMw_2H_Sword_Light_05);
	CreateInvItem(self,ItMw_2H_Axe_light_01);
	CreateInvItem(self,ItMw_2H_Axe_light_02);
	CreateInvItem(self,ItMw_2H_Axe_light_03);
	CreateInvItem(self,ItMw_2H_Sword_01);
	CreateInvItem(self,ItMw_2H_Sword_02);
	CreateInvItem(self,ItMw_2H_Sword_03);
	CreateInvItem(self,ItMw_2H_Sword_Heavy_01);
	CreateInvItem(self,ItMw_2H_Sword_Heavy_02);
	CreateInvItem(self,ItMw_2H_Sword_Heavy_03);
	CreateInvItem(self,ItMw_2H_Sword_Heavy_04);
	CreateInvItem(self,ItMw_2H_Axe_Heavy_01);
	CreateInvItem(self,ItMw_2H_Axe_Heavy_02);
	CreateInvItem(self,ItMw_2H_Axe_Heavy_03);
	CreateInvItem(self,ItMw_2H_Axe_Heavy_04);

	CreateInvItem(self,ItMw2hOrcSword01);
	CreateInvItem(self,ItMw2hOrcAxe01);
	CreateInvItem(self,ItMw2hOrcAxe02);
	CreateInvItem(self,ItMw2hOrcAxe03);
	CreateInvItem(self,ItMw2hOrcAxe04);
	CreateInvItem(self,ItMw2hOrcMace01);


//---------------------------------------------------------------------
//Potions
//---------------------------------------------------------------------
	CreateInvItem(self,ItFo_Potion_Mana_01);
	CreateInvItem(self,ItFo_Potion_Mana_02);
	CreateInvItem(self,ItFo_Potion_Mana_03);
	CreateInvItem(self,ItFo_Potion_Health_01);
	CreateInvItem(self,ItFo_Potion_Health_02);
	CreateInvItem(self,ItFo_Potion_Health_03);
	CreateInvItem(self,ItFo_Potion_Elixier);
	CreateInvItem(self,ItFo_Potion_Elixier_Egg);
	CreateInvItem(self,ItFo_Potion_Strength_01);
	CreateInvItem(self,ItFo_Potion_Strength_02);
	CreateInvItem(self,ItFo_Potion_Strength_03);
	CreateInvItem(self,ItFo_Potion_Dex_01);
	CreateInvItem(self,ItFo_Potion_Dex_02);
	CreateInvItem(self,ItFo_Potion_Dex_03);
	CreateInvItem(self,ItFo_Potion_Health_Perma_01);
	CreateInvItem(self,ItFo_Potion_Health_Perma_02);
	CreateInvItem(self,ItFo_Potion_Health_Perma_03);
	CreateInvItem(self,ItFo_Potion_Mana_Perma_01);
	CreateInvItem(self,ItFo_Potion_Mana_Perma_02);
	CreateInvItem(self,ItFo_Potion_Mana_Perma_03);
	CreateInvItem(self,ItFo_Potion_Master_01);
	CreateInvItem(self,ItFo_Potion_Master_02);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItem(self,ItFo_Potion_Haste_01);
	
};

















