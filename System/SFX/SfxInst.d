
// SFXINST.D
// Soundsystem related SFX-instances


//------------------------------------------------------------------------------------------------
// Hier müssen die einzelnen Sounds eingetragen werden
//------------------------------------------------------------------------------------------------
//	 	 Logischer Name					   Dateiname		   Parameter


//////////////////////
//     TEST         //
//////////////////////
// soundtestlevel   //
//////////////////////

/* TestAMB   */	
				instance Test1		    				(C_SFX_DEF) {file= "test1.wav";						vol = 127;			};
		
/* Test3D    */	
				instance Test2		    				(C_SFX_DEF) {file= "test2.wav";						vol = 127;			};

/* Special	 */
				instance LevelUp						(C_SFX_DEF) {file= "levelup.wav";					vol = 55;			};
				instance LogEntry						(C_SFX_DEF) {file= "LogEntry.wav";					vol = 80;			};
				instance FoundRiddlersBook				(C_SFX_DEF) {file= "Info_CorKalom_BringBook_Success_15_01.wav";	vol = 80;		};//Björn
				instance FoundRiddler					(C_SFX_DEF) {file= "theriddle_tot_15_01.wav";					vol = 80;		};//Björn

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// CUTSCENES /////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/* InExtremo */
				instance CS_Inextremo	    			(C_SFX_DEF) {file= "CS_Inextremo.wav";				vol = 127;			};
				instance CS_Inextremo_wave  			(C_SFX_DEF) {file= "CS_Inextremo_wave.wav";			vol = 127;			};
 


/* Final Pr. 
				instance CS_Prayer_FokusAmbient			(C_SFX_DEF) {file= "CS_Prayer_FokusAmbient.wav";	vol = 127;			};
				instance CS_Prayer_FokusPrepare			(C_SFX_DEF) {file= "CS_Prayer_FokusPrepare.wav";	vol = 127;			};
				instance CS_Prayer_FokusFinal			(C_SFX_DEF) {file= "CS_Prayer_FokusFinal.wav";		vol = 127;			};
				instance CS_Prayer_WaveOfInsanity		(C_SFX_DEF) {file= "CS_Prayer_WaveInsanity.wav";	vol = 127;			};
				instance CS_Prayer_EarthQuake			(C_SFX_DEF) {file= "CS_Prayer_EarthQuake.wav";		vol = 127;			};
				instance CS_Prayer_BodyFall				(C_SFX_DEF) {file= "CS_Prayer_BodyFall.wav";		vol = 90;			};
				instance CS_Prayer_BodyKnee				(C_SFX_DEF) {file= "CS_Prayer_BodyKnee.wav";		vol = 90;			};
				instance CS_Prayer_OrcVision			(C_SFX_DEF) {file= "CS_Prayer_OrcVision.wav";		vol = 127;			};
				instance CS_Prayer_MineCollide1			(C_SFX_DEF) {file= "Prayer_MineCollide01.wav";		vol = 127;			};
				instance CS_Prayer_MineCollide2			(C_SFX_DEF) {file= "Prayer_MineCollide02.wav";		vol = 127;			}; */

/* Intro 
				instance INTRO_SPLASH 					(C_SFX_DEF) {file= "CS_Intro_Watersplash.wav"; 		vol = 127;		 	};  */

                                                
                                                
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// MAGIE /////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////


// -----------------------------------
// - BARRIERE: -----------------------
// -----------------------------------

/* Barriere */	instance MFX_Barriere_Ambient			(C_SFX_DEF) {file= "MFX_Barriere_Ambient.wav";		vol = 127;			};

// -----------------------------------
// - SPELLS: -------------------------
// -----------------------------------

/* Berzerk */	instance MFX_Berzerk_Cast				(C_SFX_DEF) {file= "MFX_Berzerk_Cast.wav";			vol = 127;			};

/* Berzerk */	instance MFX_BreathOfDeath_Invest		(C_SFX_DEF) {file= "MFX_BreathOfDeath_Invest.wav";	vol = 127;			};
				instance MFX_BreathOfDeath_Cast			(C_SFX_DEF) {file= "MFX_BreathOfDeath_Cast.wav";	vol = 127;			};
				instance MFX_BreathOfDeath_Target		(C_SFX_DEF) {file= "MFX_BreathOfDeath_Target.wav";	vol = 127;			};

/* Charm */		instance MFX_Charm_Cast					(C_SFX_DEF) {file= "MFX_Charm_Cast.wav";			vol = 127;			};

/* Control */	instance MFX_Control_StartInvest		(C_SFX_DEF) {file= "MFX_Telekinesis_Cast.wav";		vol = 127;			};      
				instance MFX_Control_Invest				(C_SFX_DEF) {file= "MFX_Telekinesis_Bridge.wav";	vol = 127;	loop=1;	};      
				instance MFX_Control_Cast				(C_SFX_DEF) {file= "MFX_Control_Cast.wav";			vol = 127;			};      

/* Destr.UD */	instance MFX_DestroyUndead_Cast			(C_SFX_DEF) {file= "MFX_DestroyUndead_Cast.wav";	vol = 127;			};
				instance MFX_DestroyUndead_Collide		(C_SFX_DEF) {file= "MFX_DestroyUndead_Collide.wav";	vol = 127;			};

/* EarthQuake*/	instance MFX_EarthQuake					(C_SFX_DEF) {file= "EarthQuake.wav";				vol = 127;			};

/* Fear */		instance MFX_Fear_Cast					(C_SFX_DEF) {file= "MFX_Fear_Cast.wav";				vol = 127;			};

/* Fireball */	instance MFX_Fireball_Cast				(C_SFX_DEF) {file= "MFX_Fireball_Cast.wav";			vol = 80;			};  
				instance MFX_Fireball_Collide1	        (C_SFX_DEF) {file= "MFX_Fireball_Collide1.wav";		vol = 90;			};  
				instance MFX_Fireball_Collide2	        (C_SFX_DEF) {file= "MFX_Fireball_Collide2.wav";		vol = 105;			};      
				instance MFX_Fireball_Collide3	        (C_SFX_DEF) {file= "MFX_Fireball_Collide3.wav";		vol = 127;			};      
				instance MFX_Fireball_Collide4			(C_SFX_DEF) {file= "MFX_Fireball_Collide4.wav";		vol = 127;			};		
				instance MFX_Fireball_Invest1	        (C_SFX_DEF) {file= "MFX_Fireball_Invest1.wav";		vol = 60;			};  
				instance MFX_Fireball_Invest2	        (C_SFX_DEF) {file= "MFX_Fireball_Invest2.wav";		vol = 80;			};  
				instance MFX_Fireball_Invest3	        (C_SFX_DEF) {file= "MFX_Fireball_Invest3.wav";		vol = 100;			};      
				instance MFX_Fireball_Invest4	        (C_SFX_DEF) {file= "MFX_Fireball_Invest4.wav";		vol = 120;			};      
                                                                                                                                    
/* Firestorm*/	instance MFX_Firestorm_Invest	        (C_SFX_DEF) {file= "MFX_Pyrokinesis_Target.wav";	vol = 60;	loop=1;	};  
				instance MFX_Firestorm_Cast		        (C_SFX_DEF) {file= "MFX_Firestorm_Cast.wav";		vol = 127;			};      
				instance MFX_Firestorm_Collide	        (C_SFX_DEF) {file= "MFX_Firestorm_Collide.wav";		vol = 127;			};      
                                                                                                                                    
/* Firerain */	instance MFX_Firerain_Invest	        (C_SFX_DEF) {file= "MFX_Firerain_Invest.wav";		vol = 127;			};      
				instance MFX_Firerain_Rain		        (C_SFX_DEF) {file= "MFX_Firerain_Rain.wav";			vol = 127;			};      
				instance MFX_Firespell_Humanburn        (C_SFX_DEF) {file= "MFX_Firespell_Humanburn.wav";	vol = 127;			};      
                                                                                                                                    
/* Heal */		instance MFX_Heal_Cast			        (C_SFX_DEF) {file= "MFX_Heal_Cast.wav";				vol = 127;			};      
                                                                                                                                    
/* Icecube */	instance MFX_Icecube_Cast		        (C_SFX_DEF) {file= "MFX_Icecube_Cast.wav";			vol = 127;			};      
				instance MFX_Icecube_Invest				(C_SFX_DEF) {file= "MFX_Icecube_Invest.wav";		vol = 127; 	loop=1;	};      
				instance MFX_Icecube_Target		        (C_SFX_DEF) {file= "MFX_Icecube_Target.wav";		vol = 127;			};      
				instance MFX_Icecube_Collide		    (C_SFX_DEF) {file= "MFX_Icecube_Release.wav";		vol = 127;			};      
				                                                                                                                    
/* Icewave */	instance MFX_Icewave_Cast		        (C_SFX_DEF) {file= "MFX_Icewave_Cast.wav";			vol = 127;			};      
                                                                                                                                    
/* Light	*/	instance MFX_Light_Cast			        (C_SFX_DEF) {file= "MFX_Light_Cast.wav";			vol = 127;			};      
                                                                                                                                    
/* Lightning */	instance MFX_Lightning_Origin	        (C_SFX_DEF) {file= "MFX_Lightning_Origin.wav";		vol = 50;			};      
				instance MFX_Lightning_Target	        (C_SFX_DEF) {file= "MFX_Lightning_Target.wav";		vol = 127; 	loop=1; };   
                                                                                                                            	        
/* Massdeath */	instance MFX_Massdeath_Cast		        (C_SFX_DEF) {file= "MFX_Massdeath_Cast.wav";		vol = 127;			};      
				instance MFX_Massdeath_Target	        (C_SFX_DEF) {file= "MFX_Massdeath_Target.wav";		vol = 127;			};      
                                                                                                                                    
/* Pyrokinesis*/instance MFX_Pyrokinesis_Target	        (C_SFX_DEF) {file= "MFX_Pyrokinesis_Target.wav";	vol = 127; 	loop=1; };   
                                                                                                                                    
/* Shrink */	instance MFX_Shrink_Invest	        	(C_SFX_DEF) {file= "MFX_Shrink_Invest.wav";			vol = 127;	loop=1;	};      
				instance MFX_Shrink_Cast	        	(C_SFX_DEF) {file= "MFX_Shrink_Cast.wav";			vol = 127;			};      

/* Sleep */		instance MFX_Sleep_Cast			        (C_SFX_DEF) {file= "MFX_Sleep_Cast.wav";			vol = 127;			};      

/* Spawn */		instance MFX_Spawn_Cast			        (C_SFX_DEF) {file= "MFX_Spawn_Cast.wav";			vol = 127;			};      
                                                                                                                                    
/* Stormfist */	instance MFX_Stormfist_Cast		        (C_SFX_DEF) {file= "MFX_Stormfist_Cast.wav";		vol = 127;			};      
                                                                                                                                    
/* Telekinese*/	instance MFX_Telekinesis_StartInvest	(C_SFX_DEF) {file= "MFX_Telekinesis_Cast.wav";		vol = 127;			};      
				instance MFX_Telekinesis_Invest			(C_SFX_DEF) {file= "MFX_Telekinesis_Bridge.wav";	vol = 127;	loop=1;	};      

/* Teleport */	instance MFX_Teleport_Invest	        (C_SFX_DEF) {file= "MFX_Teleport_Invest.wav";		vol = 127;			};      
				instance MFX_Teleport_Cast		        (C_SFX_DEF) {file= "MFX_Teleport_Cast.wav";			vol = 127;			};      
				                                                                                                                    
/* Thunderball*/instance MFX_Thunderball_Cast	        (C_SFX_DEF) {file= "MFX_Thunderball_Cast.wav";		vol = 127;			};      
				instance MFX_Thunderball_Invest1        (C_SFX_DEF) {file= "MFX_Thunderball_Invest.wav";	vol = 60;			};      
				instance MFX_Thunderball_Invest2        (C_SFX_DEF) {file= "MFX_Thunderball_Invest.wav";	vol = 80;			};      
				instance MFX_Thunderball_Invest3        (C_SFX_DEF) {file= "MFX_Thunderball_Invest.wav";	vol = 100;			};      
				instance MFX_Thunderball_Invest4        (C_SFX_DEF) {file= "MFX_Thunderball_Invest.wav";	vol = 127;			};      
				instance MFX_Thunderball_Collide        (C_SFX_DEF) {file= "MFX_Thunderball_Collide.wav";	vol = 60;			};      
				instance MFX_Thunderball_Collide1       (C_SFX_DEF) {file= "MFX_Thunderball_Collide1.wav";	vol = 60;			};      
				instance MFX_Thunderball_Collide2       (C_SFX_DEF) {file= "MFX_Thunderball_Collide2.wav";	vol = 80;			};      
				instance MFX_Thunderball_Collide3       (C_SFX_DEF) {file= "MFX_Thunderball_Collide3.wav";	vol = 100;			};      
				instance MFX_Thunderball_Collide4       (C_SFX_DEF) {file= "MFX_Thunderball_Collide4.wav";	vol = 127;			};      

/* Thunderbolt*/instance MFX_Thunderbolt_Cast	        (C_SFX_DEF) {file= "MFX_Thunderbolt_cast.wav";		vol = 127;			};      
                                                                                                                                    
/* Transform*/	instance MFX_Transform_Invest	        (C_SFX_DEF) {file= "MFX_Transform_Invest.wav";		vol = 127;			};      
				instance MFX_Transform_Cast		        (C_SFX_DEF) {file= "MFX_Transform_Cast.wav";		vol = 127;			};      
                                                                                                                                    
/* Windfist */	instance MFX_Windfist_Cast		        (C_SFX_DEF) {file= "MFX_Windfist_Cast.wav";			vol = 127;			};      
				instance MFX_Windfist_Invest            (C_SFX_DEF) {file= "MFX_Windfist_Loop.wav";			vol = 50;	loop=1;	};
				instance MFX_Windfist_Investblast       (C_SFX_DEF) {file= "MFX_Windfist_Investblast.wav";	vol = 127;			};      


//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// ITEM - INTERAKTION ////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/* Carve */	
				instance Carve 							(C_SFX_DEF) {file= "carve01.wav";					vol = 100;			};
				instance Carve_A1						(C_SFX_DEF) {file= "carve02.wav";					vol = 100;			};
		
/* Drink */
				instance DrinkBottle 					(C_SFX_DEF) {file= "drink_potion.wav";				vol = 15;			};
				instance ReleaseCork					(C_SFX_DEF) {file= "releasecork.wav";				vol = 10;			};
		
/* Eat */		
				instance Eat_Apple						(C_SFX_DEF) {file= "eat_apple.wav";					vol = 5;			};
				instance Eat_Meat						(C_SFX_DEF) {file= "eat_meat.wav";					vol = 5;			};
				instance EAT_BREAD						(C_SFX_DEF) {file= "eat_bread.wav";					vol = 5;			};
				instance EAT_SOUP						(C_SFX_DEF) {file= "eat_soup.wav";					vol = 5;			};
		
/* Instrum. */	
				instance Inst_Conga01					(C_SFX_DEF) {file= "Conga_01.wav";					vol = 65;			};
				instance Inst_Conga02					(C_SFX_DEF) {file= "conga_02.wav";					vol = 65;			};
				instance Inst_Lute						(C_SFX_DEF) {file= "lute_01.wav";					vol = 20;			};
				instance Inst_Lute_A1					(C_SFX_DEF) {file= "lute_02.wav";					vol = 25;			};
				instance Inst_Lute_A2					(C_SFX_DEF) {file= "lute_03.wav";					vol = 30;			};
				instance Inst_Lute_A3					(C_SFX_DEF) {file= "lute_04.wav";					vol = 25;			};
				instance Inst_Lute_A4					(C_SFX_DEF) {file= "lute_05.wav";					vol = 20;			};
				instance Inst_Lute_A5					(C_SFX_DEF) {file= "lute_06.wav";					vol = 25;			};
				instance Inst_Lute_A6					(C_SFX_DEF) {file= "lute_07.wav";					vol = 30;			};
				instance Inst_Alarm						(C_SFX_DEF) {file= "trumpet_01.wav";				vol = 120;			};
		
/* Paper */	
				instance Map_Unfold						(C_SFX_DEF) {file= "Paperhandle.wav";				vol = 60;			};
				instance Scroll_Unfold					(C_SFX_DEF) {file= "ScrollRoll.wav";				vol = 60;			};
		
/* Misc  */
				instance SMOKE_JOINT					(C_SFX_DEF) {file= "smoke_joint.wav";				vol = 20;			};
				instance SPIT_FIRE						(C_SFX_DEF) {file= "spit_fire.wav";					vol = 40;			};
		
 		
		
		

// Obsolete ?!? :
// instance Play_Lute		(C_SFX_DEF) {file= "Lute_1.wav"; 	vol = 127;		};
// instance Play_Lute_A1	(C_SFX_DEF) {file= "Lute_2.wav";	vol = 127;		};
// instance Play_Lute_A2	(C_SFX_DEF) {file= "Lute_3.wav";        vol = 127;		};




//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// MOB - INTERAKTION /////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

		
/* Backpack */	
				instance Backpack_Handle   				(C_SFX_DEF) {file= "Backpack_handle.wav";			vol = 70;			};
				instance BACKPACK_APPLY					(C_SFX_DEF) {file= "backpack_apply.wav";			vol = 90;			};
		
/* Bellows  */	
				instance Bellows_In   					(C_SFX_DEF) {file= "bellows_in.wav";				vol = 100;			};
				instance Bellows_Out   					(C_SFX_DEF) {file= "bellows_out.wav";				vol = 100;			};

/* Book */	
				instance Book_nextpage   				(C_SFX_DEF) {file= "Book_turnpage2.wav";			vol = 50;			};
				instance Book_previouspage   			(C_SFX_DEF) {file= "Book_turnpage1.wav";			vol = 50;			};

/* Chest */
				instance Chest_open						(C_SFX_DEF) {file= "Door_open01.wav";				vol = 50;			};
				instance Chest_close					(C_SFX_DEF) {file= "Door_close01b.wav";				vol = 40;			};
				instance Chest_unlock					(C_SFX_DEF) {file= "Door_unlock.wav";				vol = 50;			};
				instance Chest_try						(C_SFX_DEF) {file= "Door_try.wav";					vol = 50;			};

/* Column */
				instance Pillar_Move					(C_SFX_DEF) {file= "columnmove.wav";				vol = 120;			};
				instance Pillar_Crash					(C_SFX_DEF) {file= "columncrash.wav";				vol = 120;			};

/* Door */
				instance Door_open						(C_SFX_DEF) {file= "Door_open01.wav";				vol = 120;			};
//				instance Door_open_a1					(C_SFX_DEF) {file= "Door_open02.wav";				vol = 127;			};
				instance Door_close						(C_SFX_DEF) {file= "Door_close01b.wav";				vol = 120;			};
//				instance Door_close_a1					(C_SFX_DEF) {file= "Door_close02b.wav";				vol = 127;			};
				instance Door_lock						(C_SFX_DEF) {file= "Door_lock.wav";					vol = 120;			};
				instance Door_unlock					(C_SFX_DEF) {file= "Door_unlock.wav";				vol = 120;			};
				instance Door_try						(C_SFX_DEF) {file= "Door_try.wav";					vol = 120;			};

/* Forge */
				instance Forge_Anvil					(C_SFX_DEF) {file= "anvilhit01.wav";				vol = 70;			};
				instance Forge_Anvil_a1					(C_SFX_DEF) {file= "anvilhit02.wav";				vol = 70;			};
				instance Forge_Fire						(C_SFX_DEF) {file= "firehot.wav";					vol = 70;			};
				instance Forge_Water					(C_SFX_DEF) {file= "coolblade.wav";					vol = 30;			};
				instance Forge_Sharpen					(C_SFX_DEF) {file= "sharpenblade.wav";				vol = 40;			};

/* Grave */
				instance Grave_open 					(C_SFX_DEF) {file= "grave_test3.wav";				vol = 110;			};

/* Hammer */
				instance Hammer							(C_SFX_DEF) {file= "Hammer_01.wav";					vol = 70;			};
				instance Hammer_A1						(C_SFX_DEF) {file= "Hammer_02.wav";					vol = 70;			};
				instance Hammer_A2						(C_SFX_DEF) {file= "Hammer_03.wav";					vol = 70;			};

/* Herbstomp */	
				instance Herb_Stomp						(C_SFX_DEF) {file= "herb_stomp01.wav";				vol = 60;			};
				instance Herb_Stomp_A1					(C_SFX_DEF) {file= "herb_stomp02.wav";				vol = 60;			};
				instance Herb_Stomp_A2					(C_SFX_DEF) {file= "herb_stomp03.wav";				vol = 60;			};

/* Ladder */
				instance Ladder_Step					(C_SFX_DEF) {file= "Step_Wood_01.wav";				vol = 20;			};
				instance Ladder_Step_A1					(C_SFX_DEF) {file= "Step_Wood_02.wav";				vol = 20;			};
				instance Ladder_Step_A2					(C_SFX_DEF) {file= "Step_Wood_03.wav";				vol = 20;			};

/* Lever */	
				instance Lever_up						(C_SFX_DEF) {file= "Lever_02b.wav";					vol = 100;			};
				instance Lever_down						(C_SFX_DEF) {file= "Lever_02.wav";					vol = 100;			};
				instance Lever_locked					(C_SFX_DEF) {file= "Lever_locked.wav";				vol = 100;			};

/* PickOre */
				instance PickOre						(C_SFX_DEF) {file= "pickore_01.wav";				vol = 100;			};
				instance PickOre_A1						(C_SFX_DEF) {file= "pickore_02.wav";				vol = 100;			};
				instance PickOre_A2						(C_SFX_DEF) {file= "pickore_03.wav";				vol = 100;			};

/* Psi-Lab */
				instance PsiLab_DrawLiquid				(C_SFX_DEF) {file= "psilab_drawliquid.wav";			vol = 30;			};
				instance PsiLab_DrawLiquid2				(C_SFX_DEF) {file= "psilab_drawliquid.wav";			vol = 30;			};
				instance PsiLab_PourLiquid				(C_SFX_DEF) {file= "psilab_pourliquid.wav";			vol = 40;			};
				instance PsiLab_Boiling					(C_SFX_DEF) {file= "psilab_boiling.wav";			vol = 30;			};
				instance PsiLab_GetBottle				(C_SFX_DEF) {file= "psilab_getbottle.wav";			vol = 80;			};
				instance PsiLab_PlaceBottle				(C_SFX_DEF) {file= "psilab_placebottle.wav";		vol = 30;			};
				instance PsiLab_GetResult				(C_SFX_DEF) {file= "psilab_getresult.wav";			vol = 60;			};

/* Ropeway */
				instance Ropeway_Start 					(C_SFX_DEF) {file= "Ropeway_Start.wav";				vol = 127;			};
				instance Ropeway_Loop 					(C_SFX_DEF) {file= "Ropeway_Loop.wav";				vol = 127;			};
				instance Ropeway_End 					(C_SFX_DEF) {file= "Ropeway_End.wav";				vol = 127;			};
				instance Ropeway_Barrier 				(C_SFX_DEF) {file= "MFX_Lightning_Target.wav";		vol = 127;			};
	
/* Stomper */
				instance Stomper_Boom 					(C_SFX_DEF) {file= "Stomper_boom.wav";				vol = 127;			};
				instance Stomper_Wheels 				(C_SFX_DEF) {file= "Stomper_wheels.wav";			vol = 127;			};

/* Stonemill */	
				instance Stonemill 						(C_SFX_DEF) {file= "Stonemill.wav";					vol = 120;			};

/* Turnstone */ 
				instance Turnstone 						(C_SFX_DEF) {file= "Turnstone2.wav";				vol = 80;			};

/* Waterpipe */
 				instance Pipe_bubbles					(C_SFX_DEF) {file= "Smoke_bubbles.wav";				vol = 40;			};

/* VWheel */	
				instance VWheel_turn  					(C_SFX_DEF) {file= "VWheel_turn2.wav";				vol = 100;			};

/* BBQ-Grill */
				instance BBQ_SCAVENGER					(C_SFX_DEF) {file= "bbq_scavenger_02.wav";			vol = 15;			};
				instance BBQ_SCAVENGER_A1				(C_SFX_DEF) {file= "bbq_scavenger_02.wav";			vol = 20;			};

/* Bed */
				instance BED_USE						(C_SFX_DEF) {file= "bed_use.wav";					vol = 25;			};

/* Chair */
				instance CHAIR_USE						(C_SFX_DEF) {file= "chair_use.wav";					vol = 15;			};

/* Pan */
				instance PAN_FRYING						(C_SFX_DEF) {file= "pan_frying.wav";				vol = 65;			};

/* Touchplate */
				instance TOUCHPLATE_STONE_BIG			(C_SFX_DEF) {file= "touchplate_stone_big.wav";		vol = 80;			};
				instance TOUCHPLATE_STONE_SMALL			(C_SFX_DEF) {file= "touchplate_stone_small.wav";	vol = 80;			};
				instance TOUCHPLATE_STONE_PUSH			(C_SFX_DEF) {file= "touchplate_stone_push.wav";		vol = 80;			};

/* Picklock */
				instance PICKLOCK_SUCCESS 				(C_SFX_DEF) {file= "picklock_success.wav";			vol = 70;			};
				instance PICKLOCK_FAILURE 				(C_SFX_DEF) {file= "picklock_failure.wav";			vol = 70;			};
				instance PICKLOCK_UNLOCK 				(C_SFX_DEF) {file= "picklock_unlock.wav";			vol = 80;			};
				instance PICKLOCK_BROKEN 				(C_SFX_DEF) {file= "picklock_broken.wav";			vol = 50;			};




//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// VOB-SFX ///////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/* Waterout */
				instance WaterOutlet1					(C_SFX_DEF) {file= "rohr.wav";						vol = 100;			};
/* Birds: */ 
				instance OW_Bird1 		            	(C_SFX_DEF) {file= "bird_01.wav";					vol = 80;			};
				instance OW_Bird2 		            	(C_SFX_DEF) {file= "bird_02a.wav";					vol = 80;			};
				instance OW_Bird2_A1					(C_SFX_DEF) {file= "bird_02b.wav";					vol = 80;			};
				instance OW_Bird2_A2 					(C_SFX_DEF) {file= "bird_02c.wav";					vol = 80;			};
				instance OW_Bird3 		            	(C_SFX_DEF) {file= "bird_03.wav";					vol = 80;			};
				instance OW_Bird4 		            	(C_SFX_DEF) {file= "bird_04.wav";					vol = 80;			};
				instance OW_Bird5 		            	(C_SFX_DEF) {file= "bird_05.wav";					vol = 80;			};
				instance OW_Bird6 		            	(C_SFX_DEF) {file= "bird_06.wav";					vol = 80;			};
				instance OW_Bird6_A1 					(C_SFX_DEF) {file= "bird_06b.wav";					vol = 80;			};
				instance OW_Bird7 		            	(C_SFX_DEF) {file= "bird_07.wav";					vol = 80;			};
				instance OW_Bird7_A1 					(C_SFX_DEF) {file= "bird_07b.wav";					vol = 80;			};
				instance OW_Bird7_A2 					(C_SFX_DEF) {file= "bird_07c.wav";					vol = 80;			};
				instance OW_Bird7_A3 					(C_SFX_DEF) {file= "bird_07d.wav";					vol = 80;			};
				instance OW_Bird7_A4 					(C_SFX_DEF) {file= "bird_07e.wav";					vol = 80;			};
				instance OW_Bird7_A5 					(C_SFX_DEF) {file= "bird_07f.wav";					vol = 80;			};
				instance OW_Bird8 		            	(C_SFX_DEF) {file= "bird_08.wav";					vol = 80;			};
				instance OW_Bird8_A1 					(C_SFX_DEF) {file= "bird_08b.wav";					vol = 80;			};
				instance OW_Bird8_A2 					(C_SFX_DEF) {file= "bird_08c.wav";					vol = 80;			};
				instance OW_Bird8_A3					(C_SFX_DEF) {file= "bird_08d.wav";					vol = 80;			};
				instance OW_Bird8_A4 					(C_SFX_DEF) {file= "bird_08e.wav";					vol = 80;			};
				instance OW_Bird8_A5	            	(C_SFX_DEF) {file= "bird_08f.wav";					vol = 80;			};
				instance OW_Bird8_A6 					(C_SFX_DEF) {file= "bird_08g.wav";					vol = 80;			};
				instance OW_Bird9 		            	(C_SFX_DEF) {file= "bird_09.wav";					vol = 80;			};
				instance OW_Bird9_A1					(C_SFX_DEF) {file= "bird_09b.wav";					vol = 80;			};
				instance OW_Bird10 		            	(C_SFX_DEF) {file= "bird_10.wav";					vol = 80;			};
				instance OW_Bird11 		            	(C_SFX_DEF) {file= "bird_11.wav";					vol = 80;			};
				instance OW_Bird11_A1					(C_SFX_DEF) {file= "bird_11b.wav";					vol = 80;			};
				instance OW_Bird11_A2					(C_SFX_DEF) {file= "bird_11c.wav";					vol = 80;			};
				instance OW_Bird12 		            	(C_SFX_DEF) {file= "bird_12.wav";					vol = 80;			};
				instance OW_Bird12_A1					(C_SFX_DEF) {file= "bird_12b.wav";					vol = 80;			};
				instance OW_Crow 		            	(C_SFX_DEF) {file= "crow_01.wav";					vol = 80;			};
				instance OW_Crow_A1 	            	(C_SFX_DEF) {file= "crow_02.wav";					vol = 80;			};
				instance OW_Crow_A2 	             	(C_SFX_DEF) {file= "crow_03.wav";					vol = 80;			};
//				instance OW_EagleAmbient				(C_SFX_DEF) {file= "eagle_01.wav";					vol = 100;			};
//				instance OW_EagleScream					(C_SFX_DEF) {file= "eagle_02.wav";					vol = 100;			};
//				instance OW_EagleScream_A1				(C_SFX_DEF) {file= "eagle_03.wav";					vol = 100;			};
//				instance OW_EagleScream_A2				(C_SFX_DEF) {file= "eagle_04.wav";					vol = 100;			};
				instance OW_EagleAmbient				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance OW_EagleScream					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance OW_EagleScream_A1				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance OW_EagleScream_A2				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance OW_Raven						(C_SFX_DEF) {file= "raven_01.wav";					vol = 80;			};
				instance OW_Owl1 						(C_SFX_DEF) {file= "owl_01.wav";					vol = 80;			};
				instance OW_Owl1_A1 					(C_SFX_DEF) {file= "owl_02.wav";					vol = 80;			};
				instance OW_Owl2 						(C_SFX_DEF) {file= "owl_03.wav";					vol = 80;			};
/* Water */	
				instance OW_WaterHitsStone 				(C_SFX_DEF) {file= "lakeshore_stone.wav";			vol = 90;			};
				instance OW_HeavyBubbles 				(C_SFX_DEF) {file= "riverbubbles.wav";				vol = 80;			};
				instance OW_RiverRapid1	 				(C_SFX_DEF) {file= "riverrapid_01.wav";				vol = 80;			};
				instance OW_RiverRapid2	 				(C_SFX_DEF) {file= "riverrapid_02.wav";				vol = 80;			};
				instance OW_RiverTrouble 				(C_SFX_DEF) {file= "rivertrouble.wav";				vol = 80;			};
				instance OW_Waterfall1 					(C_SFX_DEF) {file= "waterfalls_01.wav";				vol = 100;			};
				instance OW_Waterfall2 					(C_SFX_DEF) {file= "waterfalls_02.wav";				vol = 100;			};
				instance OW_Waterfall3 					(C_SFX_DEF) {file= "waterfalls_03.wav";				vol = 100;			};
/* Misc */	
				instance OW_Wood_Crackle				(C_SFX_DEF) {file= "woodcrackle_01.wav";			vol = 100;			};
				instance OW_Wood_Crackle_A1				(C_SFX_DEF) {file= "woodcrackle_02.wav";			vol = 100;			};
				instance OW_Wood_Crackle_A2				(C_SFX_DEF) {file= "woodcrackle_03.wav";			vol = 100;			};
				instance OW_ShipWrekOrBridge			(C_SFX_DEF) {file= "woodcreak_shipwrek_0.wav";		vol = 100;			};
				instance OW_ShipWrekOrBridge_A1			(C_SFX_DEF) {file= "woodcreak_shipwrek_01.wav";		vol = 100;			};
				instance OW_ShipWrekOrBridge_A2			(C_SFX_DEF) {file= "woodcreak_shipwrek_02.wav";		vol = 100;			};
				instance OW_ShipWrekOrBridge_A3			(C_SFX_DEF) {file= "woodcreak_shipwrek_03.wav";		vol = 100;			};
				instance OW_Squirrel					(C_SFX_DEF) {file= "squirrel_01.wav";				vol = 100;			};
				instance OW_Squirrel_A1					(C_SFX_DEF) {file= "squirrel_02.wav";				vol = 100;			};
				instance Flies 							(C_SFX_DEF) {file= "flies1.wav";					vol = 50;			};
				instance Dog1							(C_SFX_DEF) {file= "dog1.wav";						vol = 40;			};
				instance Dog2							(C_SFX_DEF) {file= "dog2.wav";						vol = 40;			};
				instance Deepambient					(C_SFX_DEF) {file= "deepambient01.wav";				vol = 100;			};
				instance Murmur							(C_SFX_DEF) {file= "murmor_loop.wav";				vol = 30;			};
				instance Well_Slosh						(C_SFX_DEF) {file= "well_slosh_01.wav"; 			vol = 30; 			};
				instance Well_Slosh_A1					(C_SFX_DEF) {file= "well_slosh_02.wav";				vol = 15; 			};
				instance Well_Slosh_A2					(C_SFX_DEF) {file= "well_slosh_03.wav";	 			vol = 22; 			};
				instance Campfire1						(C_SFX_DEF) {file= "campfire_01.wav"; 				vol = 120;			};
				instance Campfire2						(C_SFX_DEF) {file= "campfire_02.wav"; 				vol = 120;			};
				instance Couldron_Boil					(C_SFX_DEF) {file= "Couldron.wav"; 					vol = 35;			};
				instance Ambientcrawlerscream   		(C_SFX_DEF) {file= "ambientcrawlerscream.wav"; 		vol = 80;			};
				instance Ambientscream_1        		(C_SFX_DEF) {file= "ambientscream_1.wav"; 			vol = 80;			};
				instance Ambientscream_2       			(C_SFX_DEF) {file= "ambientscream_2.wav"; 			vol = 80;			};
				instance Ambienttone_01_high   			(C_SFX_DEF) {file= "ambienttone_01_high.wav"; 		vol = 80;			};
				instance Ambienttone_02_dark_short      (C_SFX_DEF) {file= "ambienttone_02_dark_short.wav"; vol = 80;			};
				instance ambienttone_03_dark			(C_SFX_DEF) {file= "ambienttone_03_dark.wav"; 		vol = 80; 	 	 	};
				instance Ambientscream_03_dark  		(C_SFX_DEF) {file= "ambientscream_03_dark.wav"; 	vol = 100; 	 	 	};
				                                                                                                              
				instance Mystery_08						(C_SFX_DEF) {file= "Mystery_08_mono.wav"; 			vol = 40;	        };
				instance Mystery_09						(C_SFX_DEF) {file= "Mystery_09_mono.wav"; 			vol = 40; 			};
				instance Mystery_10						(C_SFX_DEF) {file= "Mystery_10_mono.wav"; 			vol = 40; 			};
		

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// AMBIENT - ZONES ///////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////


/* Wind */	
				instance OW_WindHurricane				(C_SFX_DEF) {file= "wind_hurricane.wav";			vol = 70;        	};
				instance OW_WindHeavy1					(C_SFX_DEF) {file= "wind_heavy01.wav";				vol = 70;        	};
				instance OW_WindHeavy2					(C_SFX_DEF) {file= "wind_heavy02.wav";				vol = 70;        	};
				instance OW_WindHigh1					(C_SFX_DEF) {file= "wind_high.wav";					vol = 70;        	};
				instance OW_WindHigh2					(C_SFX_DEF) {file= "wind_high.wav";					vol = 70;        	};
				instance OW_WindMedium					(C_SFX_DEF) {file= "wind_medium.wav";				vol = 70;        	};
				instance OW_WindLight					(C_SFX_DEF) {file= "wind_light.wav";				vol = 70;        	};
				instance OW_WindCave					(C_SFX_DEF) {file= "wind_cave.wav";					vol = 70;        	};
				instance OW_WindCave2					(C_SFX_DEF) {file= "wind_cave2.wav";				vol = 70;        	};
				instance OW_WindCave3					(C_SFX_DEF) {file= "wind_gentle_cave.wav";			vol = 70;        	};
/* Water */	
				instance OW_River						(C_SFX_DEF) {file= "river01stereo.wav";				vol = 20;        	};
				instance OW_River2						(C_SFX_DEF) {file= "river02stereo.wav";				vol = 30;        	};
				instance OW_RiverBridge					(C_SFX_DEF) {file= "river_underbridge.wav";			vol = 50;        	};
				instance OW_CoastLight					(C_SFX_DEF) {file= "coast_light.wav";				vol = 110;			};
				instance OW_CoastHeavy					(C_SFX_DEF) {file= "coast_heavy.wav";				vol = 60;        	};
				instance OW_WFallCave					(C_SFX_DEF) {file= "waterfall_cave.wav";			vol = 50;        	};
				instance UnderwaterAmbience   	 		(C_SFX_DEF) {file= "underwater_02.wav";				vol = 60;        	};
/* Wood: */	
				instance Wood_Day1						(C_SFX_DEF) {file= "wood_day.wav";  				vol = 70;        	};
				instance Wood_Day2						(C_SFX_DEF) {file= "wood_dayambience.wav";  		vol = 60;        	};
				instance Wood_Night1					(C_SFX_DEF) {file= "night_wood.wav";  				vol = 70;        	};
				instance Wood_NearWater1				(C_SFX_DEF) {file= "wood_nearwater_01.wav";  		vol = 70;        	};
				instance Wood_NearWater2				(C_SFX_DEF) {file= "wood_nearwater_02.wav";  		vol = 70;        	};
				instance Wood_BirdAmbience1				(C_SFX_DEF) {file= "wood_birdambience.wav";  		vol = 90;        	};
				instance Wood_BirdAmbience2				(C_SFX_DEF) {file= "wood_birdambience.wav";  		vol = 90;        	};
/* Misc: */	
				instance DropsInCave					(C_SFX_DEF) {file= "water_dropsincave.wav";			vol = 30;        	};
				instance InsectsFrogs_Night				(C_SFX_DEF) {file= "night_insects_frog.wav";		vol = 30;        	};
				instance InsectsFrogs_Night2			(C_SFX_DEF) {file= "frogsandinsects.wav";			vol = 20;        	};
				instance InsectsFrogs_Night3			(C_SFX_DEF) {file= "frogsandinsects2.wav";			vol = 20;        	};
				instance InsectsFrogs_Night4			(C_SFX_DEF) {file= "frogsandinsects3.wav";			vol = 20;        	};
				instance InsectsFrogs_Night5			(C_SFX_DEF) {file= "frogsandinsects4.wav";			vol = 20;        	};
				instance Owls_And_Nightingales			(C_SFX_DEF) {file= "owlsandnightingales.wav";		vol = 30;        	};
				instance Insects_And_Nightingales 		(C_SFX_DEF) {file= "smallinsectsandnightingales.wav";vol = 30;			};
				instance Insects_Only1					(C_SFX_DEF) {file= "night_insects.wav";				vol = 30;        	};
				instance Insects_Only2					(C_SFX_DEF) {file= "insects.wav";					vol = 30;        	};
				instance MysteriousAmbience				(C_SFX_DEF) {file= "mysterious_ambience.wav";		vol = 70;			};
				                                                                                                             
				instance Mystery_01						(C_SFX_DEF) {file= "Mystery_01.wav"; 				vol = 40;		 	};
				instance Mystery_02						(C_SFX_DEF) {file= "Mystery_02.wav"; 				vol = 40;		 	};
				instance Mystery_03						(C_SFX_DEF) {file= "Mystery_03.wav"; 				vol = 40;		 	};
				instance Mystery_04						(C_SFX_DEF) {file= "Mystery_04.wav"; 				vol = 40;		 	};
				instance Mystery_05						(C_SFX_DEF) {file= "Mystery_05.wav"; 				vol = 40;		 	};
				instance Mystery_06						(C_SFX_DEF) {file= "Mystery_06.wav"; 				vol = 40;		 	};
				instance Mystery_07						(C_SFX_DEF) {file= "Mystery_07.wav"; 				vol = 40;		 	};

				instance Sleepercave					(C_SFX_DEF) {file= "sleepercave_01.wav"; 			vol = 80;		 	};
				
				instance howling_01      				(C_SFX_DEF) {file= "howling_01.wav";     			vol = 40;    		};
    			instance percussion_01      			(C_SFX_DEF) {file= "percussion_01.wav";     		vol = 40;           };
    			instance percussion_02      			(C_SFX_DEF) {file= "percussion_02.wav";     		vol = 40;           };
    			instance zombie_01      				(C_SFX_DEF) {file= "zombie_01.wav";     			vol = 40;           };
    			instance rumble_01      				(C_SFX_DEF) {file= "rumble_01.wav";     			vol = 40;           };
    			instance cave_winds_01      			(C_SFX_DEF) {file= "cave_winds_01.wav";   			vol = 40;    		};

                                        			
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//  C R E A T U R E S ////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////// 
     
     
     
/* General */   
				instance SCRATCH     					(C_SFX_DEF) {file= "SCRATCH_01.wav";				vol = 110;			};
				instance SCRATCH_A1  					(C_SFX_DEF) {file= "SCRATCH_02.wav";				vol = 110;			};
				instance SCRATCH_SMALL     				(C_SFX_DEF) {file= "M_SCRATCH_SMALL01.wav";			vol = 90;			};
				instance SCRATCH_SMALL_A1  				(C_SFX_DEF) {file= "M_SCRATCH_SMALL02.wav";			vol = 90;			};
				instance M_EAT	 						(C_SFX_DEF) {file= "M_EAT01.wav";					vol = 110;			};
				instance M_FALL_HUGE 					(C_SFX_DEF) {file= "M_FALL_HUGE01.wav";				vol = 127;			};
				instance M_FALL_SMALL 					(C_SFX_DEF) {file= "M_FALL_SMALL01.wav";			vol = 110;			};
				instance M_STEP_HUGE	 				(C_SFX_DEF) {file= "M_STEP_HUGE01.wav";				vol = 127;			};
				instance M_STEP_HUGE_2 					(C_SFX_DEF) {file= "M_STEP_HUGE02.wav";				vol = 127;			};
		
/* Babe */	
				instance BAB_Ambient 					(C_SFX_DEF) {file= "BAB_Ambient01.wav";				vol = 25;			};
				instance BAB_Ambient_A1 				(C_SFX_DEF) {file= "BAB_Ambient02.wav";				vol = 30;			};
				instance BAB_Ambient_A2 				(C_SFX_DEF) {file= "BAB_Ambient03.wav";				vol = 25;			};
				instance BAB_Ambient_A3 				(C_SFX_DEF) {file= "nosound.wav";					vol = 30;			};
				instance BAB_Ambient_A4 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance BAB_Ambient_A5 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance BAB_Ambient_A6 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance BAB_Ambient_A7 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance BAB_Ambient_A8 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};		
				instance BAB_Ambient_A9 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};	
				instance BAB_Die 						(C_SFX_DEF) {file= "BAB_Die01.wav";					vol = 50;			};
				instance BAB_Die_A1 					(C_SFX_DEF) {file= "BAB_Die02.wav";					vol = 50;			};
				instance BAB_Hurt 						(C_SFX_DEF) {file= "BAB_Hurt01.wav";				vol = 50;			};
				instance BAB_Hurt_A1 					(C_SFX_DEF) {file= "BAB_Hurt02.wav";				vol = 50;			};
				instance BAB_Sigh 						(C_SFX_DEF) {file= "BAB_Ambient01.wav";				vol = 25;			};
				instance BAB_Sigh_A1 					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance BAB_Sigh_A2 					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance BAB_Sigh_A3 					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
		                                                                                                                
		                                                                                                                
/* Bloodfly */                                                                                                          
				instance BLO_Attack  					(C_SFX_DEF) {file= "BLO_Attack01.wav";				vol = 75; 			};
				instance BLO_Attack_A1 					(C_SFX_DEF) {file= "BLO_Attack02.wav";				vol = 75;			};
				instance BLO_Attack_A2  				(C_SFX_DEF) {file= "BLO_Attack03.wav";				vol = 75; 			};
				instance BLO_Die  						(C_SFX_DEF) {file= "BLO_Die01.wav";					vol = 75;  		 	};
				instance BLO_Die_A1 					(C_SFX_DEF) {file= "BLO_Die02.wav";					vol = 75;			};
				instance BLO_Hurt  						(C_SFX_DEF) {file= "BLO_Hurt01.wav";				vol = 75;  		 	};
				instance BLO_Hurt_A1 					(C_SFX_DEF) {file= "BLO_Hurt02.wav";				vol = 75;			};
				instance BLO_Hurt_A2  					(C_SFX_DEF) {file= "BLO_Hurt03.wav";				vol = 75;  		 	};
				instance BLO_Warn  						(C_SFX_DEF) {file= "BLO_Warn01.wav";				vol = 110;  	 	};
				instance BLO_Warn_A1 					(C_SFX_DEF) {file= "BLO_Warn02.wav";				vol = 110;			};
				instance BLO_Wings  					(C_SFX_DEF) {file= "BLO_Wings_01.wav";				vol = 20; 			};
				instance BLO_Wings_A1 					(C_SFX_DEF) {file= "BLO_Wings_02.wav";				vol = 20; 			};
				instance BLO_Wings_A2 					(C_SFX_DEF) {file= "BLO_Wings_03.wav";				vol = 20; 			};
				instance BLO_Wings_A3 					(C_SFX_DEF) {file= "BLO_Wings_04.wav";				vol = 20; 		  	};
				instance BLO_Wings_A4 					(C_SFX_DEF) {file= "BLO_Wings_05.wav";				vol = 20; 		  	};
		                                                                                                               		
		                                                                                                               		
/* Minecrawler */	    
				instance CRW_Ambient 					(C_SFX_DEF) {file= "CRW_Ambient01.wav";				vol = 25;			};
				instance CRW_Ambient_A1 				(C_SFX_DEF) {file= "CRW_Ambient02.wav";				vol = 25;			};
				instance CRW_Ambient_A2 				(C_SFX_DEF) {file= "CRW_Ambient03.wav";				vol = 25;			};
				instance CRW_Ambient_A3 				(C_SFX_DEF) {file= "CRW_Ambient04.wav";				vol = 25;			};
				instance CRW_Ambient_A4 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance CRW_Ambient_A5 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance CRW_Ambient_A6 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance CRW_Ambient_A7 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance CRW_Ambient_A8 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance CRW_Ambient_A9 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance CRW_Ambient_Short 				(C_SFX_DEF) {file= "CRW_Ambient_Short01.wav";		vol = 20;			};
				instance CRW_Ambient_Short_A1 			(C_SFX_DEF) {file= "CRW_Ambient_Short02.wav";		vol = 20;			};
				instance CRW_Ambient_Short_A2 			(C_SFX_DEF) {file= "CRW_Ambient_Short03.wav";		vol = 20;			};
				instance CRW_Ambient_Short_A3			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance CRW_Ambient_Short_A4			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance CRW_Ambient_Short_A5			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance CRW_Attack 					(C_SFX_DEF) {file= "CRW_Attack01.wav";				vol = 120;			};
				instance CRW_Attack_A1 					(C_SFX_DEF) {file= "CRW_Attack02.wav";				vol = 120;			};
				instance CRW_Attack_A2 					(C_SFX_DEF) {file= "CRW_Attack03.wav";				vol = 120;			};
				instance CRW_Clean 						(C_SFX_DEF) {file= "CRW_Clean01.wav";				vol = 50;			};
				instance CRW_Die 						(C_SFX_DEF) {file= "CRW_Die01.wav";					vol = 100;			};
				instance CRW_Die_A1						(C_SFX_DEF) {file= "CRW_Die02.wav";					vol = 100;			};
				instance CRW_Die_Last					(C_SFX_DEF) {file= "CRW_Die_Last01.wav";			vol = 50;			};
				instance CRW_Hurt	 					(C_SFX_DEF) {file= "CRW_Hurt01.wav";				vol = 100;			};
				instance CRW_Hurt_A1 					(C_SFX_DEF) {file= "CRW_Hurt02.wav";				vol = 100;			};
				instance CRW_Perception					(C_SFX_DEF) {file= "CRW_Perception01.wav";			vol = 90;			};
				instance CRW_Warn	 					(C_SFX_DEF) {file= "CRW_Warn01.wav";				Vol = 127;			};
				instance CRW_Warn_A1	 				(C_SFX_DEF) {file= "CRW_Warn02.wav";				vol = 127;			};
		                                                                                                              		
		                                                                                                              		
/* CrwQueen */	                                                                                                      		
				instance QUE_Ambient 					(C_SFX_DEF) {file= "QUE_Glibber01.wav";				vol = 100;			};
				instance QUE_Ambient_A1 				(C_SFX_DEF) {file= "QUE_Glibber02.wav";				vol = 100;			};
				instance QUE_Ambient_A2 				(C_SFX_DEF) {file= "QUE_Glibber03.wav";				vol = 100;			};
				instance QUE_Ambient_A3 				(C_SFX_DEF) {file= "QUE_Glibber04.wav";				vol = 100;			};
				instance QUE_Ambient_A4 				(C_SFX_DEF) {file= "QUE_Glibber05.wav";				vol = 100;			};
				instance QUE_Ambient_A5 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance QUE_Ambient_A6 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance QUE_Ambient_A7 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance QUE_Ambient_A8 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance QUE_Attack 					(C_SFX_DEF) {file= "QUE_Attack01.wav";				vol = 127;			};
				instance QUE_Attack_A1 					(C_SFX_DEF) {file= "QUE_Attack02.wav";				vol = 127;			};
				instance QUE_Attack_A2 					(C_SFX_DEF) {file= "QUE_Attack03.wav";				vol = 127;			};
				instance QUE_Attack_A3 					(C_SFX_DEF) {file= "QUE_Attack04.wav";				vol = 127;			};
				instance QUE_Breath 					(C_SFX_DEF) {file= "QUE_Breath01.wav";				vol = 50;			};
				instance QUE_Breath_A1 					(C_SFX_DEF) {file= "QUE_Breath02.wav";				vol = 50;			};
				instance QUE_Die 						(C_SFX_DEF) {file= "QUE_Die01.wav";					vol = 127;			};
					                                                                                                    		
/* Demon / Demonlord */	                                                                                                            		
				instance DEM_Ambient    				(C_SFX_DEF) {file= "DEM_Ambient01.wav";				vol = 60;			};
				instance DEM_Ambient_A1 				(C_SFX_DEF) {file= "DEM_Ambient02.wav";				vol = 60;			};
				instance DEM_Ambient_A2 				(C_SFX_DEF) {file= "DEM_Ambient03.wav";				vol = 60;			};
				instance DEM_Ambient_A3 				(C_SFX_DEF) {file= "DEM_Ambient04.wav";				vol = 60;			};
				instance DEM_Ambient_A4 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance DEM_Ambient_A5 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance DEM_Ambient_A6 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance DEM_Ambient_A7 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance DEM_Ambient_A8 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance DEM_Ambient_A9 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance DEM_Attack 					(C_SFX_DEF) {file= "DEM_Attack01.wav";				vol = 100;			};
				instance DEM_Attack_A1 					(C_SFX_DEF) {file= "DEM_Attack02.wav";				vol = 100;			};
				instance DEM_Die 						(C_SFX_DEF) {file= "DEM_Die01.wav";					vol = 110;			};
				instance DEM_Die_A1						(C_SFX_DEF) {file= "DEM_Die02.wav";					vol = 110;			};
				instance DEM_Hurt  						(C_SFX_DEF) {file= "DEM_Hurt01.wav";				vol = 90;			};
				instance DEM_Warn 						(C_SFX_DEF) {file= "DEM_Warn01.wav";				vol = 110;			};
				instance DEM_WingFlap 					(C_SFX_DEF) {file= "DEM_Wingflap01.wav";			vol = 50;			};
				instance DEM_WingFlap_A1 				(C_SFX_DEF) {file= "DEM_Wingflap02.wav";			vol = 50;			};
				instance DEM_WingFlap_A2 				(C_SFX_DEF) {file= "DEM_Wingflap03.wav";			vol = 50;			};
		                                                                                                                		
		                                                                                                                		
/* Gobbo */                                                                                                             		
				instance GOB_Ambient	 				(C_SFX_DEF) {file= "GOB_Ambient05.wav";				vol = 40;			};
				instance GOB_Ambient_A1	 				(C_SFX_DEF) {file= "GOB_Ambient04.wav";				vol = 40;			};
				instance GOB_Ambient_A2	 				(C_SFX_DEF) {file= "GOB_Ambient03.wav";				vol = 40;			};
				instance GOB_Ambient_A3	 				(C_SFX_DEF) {file= "GOB_Ambient02.wav";				vol = 40;			};
				instance GOB_Ambient_A4	 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance GOB_Ambient_A5	 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance GOB_Ambient_A6	 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance GOB_Ambient_A7	 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance GOB_Ambient_A8	 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance GOB_Ambient_A9	 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance GOB_Ambient_A10	 			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance GOB_Attack	 					(C_SFX_DEF) {file= "GOB_Attack01.wav";				vol = 50;			};
				instance GOB_Attack_A1	 				(C_SFX_DEF) {file= "GOB_Attack02.wav";				vol = 50;			};
				instance GOB_Die	 					(C_SFX_DEF) {file= "GOB_Die01.wav";					vol = 50;			};
				instance GOB_Happy	 					(C_SFX_DEF) {file= "GOB_Happy01.wav";				vol = 50;			};
				instance GOB_Hurt	 					(C_SFX_DEF) {file= "GOB_Hurt01.wav";				vol = 50;			};
				instance GOB_Hurt_A1	 				(C_SFX_DEF) {file= "GOB_Hurt02.wav";				vol = 50;			};
				instance GOB_Hurt_A2	 				(C_SFX_DEF) {file= "GOB_Hurt03.wav";				vol = 50;			};
				instance GOB_Hurt_A3	 				(C_SFX_DEF) {file= "GOB_Hurt04.wav";				vol = 50;			};
				instance GOB_Warn	 					(C_SFX_DEF) {file= "GOB_Warn01.wav";				vol = 95;			};
				instance GOB_Warn_A1 					(C_SFX_DEF) {file= "GOB_Warn02.wav";				vol = 95;			};
				instance GOB_Warn_A2 					(C_SFX_DEF) {file= "GOB_Warn03.wav";				vol = 95;			};
				instance GOB_Warn_A3 					(C_SFX_DEF) {file= "GOB_Warn04.wav";				vol = 95;			};
		                                                                                                             		
		                                                                                                             		
/* Golem */	
				instance GOL_Ambient 					(C_SFX_DEF) {file= "GOL_Ambient01.wav";				vol = 65;			};
				instance GOL_Ambient_A1 				(C_SFX_DEF) {file= "GOL_Ambient02.wav";				vol = 65;			};
				instance GOL_Ambient_A2 				(C_SFX_DEF) {file= "GOL_Ambient03.wav";				vol = 65;			};
				instance GOL_Attack 					(C_SFX_DEF) {file= "GOL_Attack01.wav";				vol = 127;			};
				instance GOL_Die 						(C_SFX_DEF) {file= "GOL_Die01.wav";					vol = 127;			};
				instance GOL_Falldown 					(C_SFX_DEF) {file= "GOL_Falldown01.wav";			vol = 127;			};
				instance GOL_StepBoom 					(C_SFX_DEF) {file= "GOL_StepBoom01.wav";			vol = 127;			};
				instance GOL_StepBoom_A1 				(C_SFX_DEF) {file= "GOL_StepBoom02.wav";			vol = 127;			};
				instance GOL_StepBoom_A2 				(C_SFX_DEF) {file= "GOL_StepBoom03.wav";			vol = 127;			};
				instance GOL_Warn 						(C_SFX_DEF) {file= "GOL_Warn01.wav";				vol = 127;			};
				instance FGO_Attack 					(C_SFX_DEF) {file= "FGO_Attack01.wav";				vol = 127;			};
				instance IGO_Attack 					(C_SFX_DEF) {file= "IGO_Attack01.wav";				vol = 127;			};


/* Harpie */
				instance HAR_Ambient 					(C_SFX_DEF) {file= "HAR_Ambient01.wav";				vol = 100;			};
				instance HAR_Ambient_A1					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance HAR_Ambient_A2					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance HAR_Attack 					(C_SFX_DEF) {file= "HAR_Attack01.wav";				vol = 100;			};
				instance HAR_Attack_A1 					(C_SFX_DEF) {file= "HAR_Attack02.wav";				vol = 100;			};
				instance HAR_Die						(C_SFX_DEF) {file= "HAR_Die01.wav";					vol = 100;			};		
				instance HAR_Hurt						(C_SFX_DEF) {file= "HAR_Hurt01.wav";				vol = 100;			};
				instance HAR_Warn 						(C_SFX_DEF) {file= "HAR_Warn01.wav";				vol = 100;			};


/* Lurker */
				instance LUR_Ambient 					(C_SFX_DEF) {file= "LUR_Ambient01.wav";				vol = 90;			};
				instance LUR_Ambient_A1					(C_SFX_DEF) {file= "LUR_Ambient02.wav";				vol = 90;			};
				instance LUR_Ambient_A2					(C_SFX_DEF) {file= "LUR_Ambient03.wav";				vol = 90;			};
				instance LUR_Ambient_A3					(C_SFX_DEF) {file= "LUR_Ambient04.wav";				vol = 90;			};
				instance LUR_Ambient_A4					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance LUR_Ambient_A5					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance LUR_Ambient_Short				(C_SFX_DEF) {file= "LUR_Ambient_Short01.wav";		vol = 110;			};
				instance LUR_Ambient_Short_A1			(C_SFX_DEF) {file= "LUR_Ambient_Short02.wav";		vol = 110;			};
				instance LUR_Ambient_Short_A2			(C_SFX_DEF) {file= "LUR_Ambient_Short03.wav";		vol = 110;			};
				instance LUR_Ambient_Short_A3			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance LUR_Ambient_Short_A4			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance LUR_Ambient_Short_A5			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance LUR_Attack						(C_SFX_DEF) {file= "LUR_Attack01.wav";				vol = 110;			};
				instance LUR_Attack_A1 					(C_SFX_DEF) {file= "LUR_Attack02.wav";				vol = 110;			};
				instance LUR_Die						(C_SFX_DEF) {file= "LUR_Die01.wav";					vol	= 80;			};
				instance LUR_Sniff 						(C_SFX_DEF) {file= "LUR_Sniff01.wav";				vol = 100;			};
				instance LUR_Warn 						(C_SFX_DEF) {file= "LUR_Warn01.wav";				vol = 110;			};
				instance LUR_Warn_A1 					(C_SFX_DEF) {file= "LUR_Warn02.wav";				vol = 110;			};
		                                                                                                              		
				                                                                                                      		
/* Meatbug */	                                                                                                      		
				instance MEA_Ambient 					(C_SFX_DEF) {file= "MEA_Ambient01.wav";				vol = 25;			};
				instance MEA_Ambient_A1 				(C_SFX_DEF) {file= "MEA_Ambient02.wav";				vol = 25;			};
				instance MEA_Ambient_A2 				(C_SFX_DEF) {file= "MEA_Ambient03.wav";				vol = 25;			};
				instance MEA_Ambient_A3 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MEA_Ambient_A4 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MEA_Ambient_A5 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};			                                                                                                            		
				instance MEA_Ambient_A6 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MEA_Ambient_A7 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};			                                                                                                            		

				
/* Molerat */	
				instance MOL_Ambient 					(C_SFX_DEF) {file= "MOL_Ambient01.wav";				vol = 50;			};
				instance MOL_Ambient_A1 				(C_SFX_DEF) {file= "MOL_Ambient04.wav";				vol = 60;			};
				instance MOL_Ambient_A2 				(C_SFX_DEF) {file= "MOL_Ambient01.wav";				vol = 50;			};
				instance MOL_Ambient_A3 				(C_SFX_DEF) {file= "MOL_Ambient04.wav";				vol = 60;			};
				instance MOL_Ambient_A4	 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MOL_Ambient_A5	 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MOL_Ambient_A6	 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MOL_Ambient_Short 				(C_SFX_DEF) {file= "MOL_Ambient_Short01.wav";		vol = 50;			};
				instance MOL_Ambient_Short_A1 			(C_SFX_DEF) {file= "MOL_Ambient_Short02.wav";		vol = 50;			};
				instance MOL_Ambient_Short_A2 			(C_SFX_DEF) {file= "MOL_Ambient_Short03.wav";		vol = 50;			};
				instance MOL_Ambient_Short_A3 			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MOL_Ambient_Short_A4	 		(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MOL_Ambient_Short_A5	 		(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MOL_Ambient_Short_A6	 		(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance MOL_Attack 					(C_SFX_DEF) {file= "MOL_Attack01.wav";				vol = 80;			};
				instance MOL_Attack_A1 					(C_SFX_DEF) {file= "MOL_Attack02.wav";				vol = 80;			};
				instance MOL_Die	   					(C_SFX_DEF) {file= "MOL_Die01.wav";					vol = 60;			};
				instance MOL_Dig 						(C_SFX_DEF) {file= "MOL_Dig01.wav";					vol = 80;			};
				instance MOL_Hurt	   					(C_SFX_DEF) {file= "MOL_Hurt01.wav";				vol = 80;			};
				instance MOL_Hurt_A1 	   				(C_SFX_DEF) {file= "MOL_Hurt02.wav";				vol = 80;			};
				instance MOL_Hurt_A2 	   				(C_SFX_DEF) {file= "MOL_Hurt03.wav";				vol = 80;			};
				instance MOL_Hurt_A3 	   				(C_SFX_DEF) {file= "MOL_Hurt04.wav";				vol = 80;			};
				instance MOL_Hurt_A4 	   				(C_SFX_DEF) {file= "MOL_Hurt05.wav";				vol = 80;			};
				instance MOL_Scratch 	   				(C_SFX_DEF) {file= "MOL_Scratch01.wav";				vol = 80;			};
				instance MOL_Sniff 	   					(C_SFX_DEF) {file= "MOL_Sniff01.wav";				vol = 80;			};
				instance MOL_Warn	   					(C_SFX_DEF) {file= "MOL_Warn01.wav";				vol = 97;			};
				instance MOL_Warn_A1 	   				(C_SFX_DEF) {file= "MOL_Warn02.wav";				vol = 97;			};
				instance MOL_Warn_A2 	   				(C_SFX_DEF) {file= "MOL_Warn03.wav";				vol = 97;			};


/* Orc */
				instance ORC_Ambient					(C_SFX_DEF) {file= "ORC_Ambient01.wav";				vol = 30;			};
				instance ORC_Ambient_A1					(C_SFX_DEF) {file= "ORC_Ambient02.wav";				vol = 30;			};
				instance ORC_Ambient_A2					(C_SFX_DEF) {file= "ORC_Ambient03.wav";				vol = 30;			};
				instance ORC_Ambient_A3					(C_SFX_DEF) {file= "ORC_Ambient04.wav";				vol = 30;			};
				instance ORC_Ambient_A4					(C_SFX_DEF) {file= "ORC_Ambient05.wav";				vol = 30;			};
				instance ORC_Ambient_A5					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ORC_Ambient_A6					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ORC_Ambient_A7					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ORC_Ambient_A8					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ORC_Ambient_A9					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ORC_Angry						(C_SFX_DEF) {file= "ORC_Angry01.wav";				vol = 127;			};
				instance ORC_Attack						(C_SFX_DEF) {file= "ORC_Attack01.wav";				vol = 100;			};
				instance ORC_Attack_A1					(C_SFX_DEF) {file= "ORC_Attack02.wav";				vol = 100;			};				
				instance ORC_Die						(C_SFX_DEF) {file= "ORC_Die01.wav";					vol = 127;			};
				instance ORC_Frightened					(C_SFX_DEF) {file= "ORC_Frightened01.wav";			vol = 100;			};
				instance ORC_Happy						(C_SFX_DEF) {file= "ORC_Happy01.wav";				vol = 100;			};
				instance ORC_Hurt						(C_SFX_DEF) {file= "ORC_Hurt01.wav";				vol = 110;			};
				instance ORC_Hurt_A1					(C_SFX_DEF) {file= "ORC_Hurt02.wav";				vol = 110;			};
				instance ORC_Warn						(C_SFX_DEF) {file= "ORC_Warn01.wav";				vol = 127;			};
				instance ORC_Ambient_Short				(C_SFX_DEF) {file= "ORC_Ambient_Short01.wav";		vol = 50;			};
				instance ORC_Ambient_Short_A1			(C_SFX_DEF) {file= "ORC_Ambient_Short02.wav";		vol = 50;			};
				instance ORC_Ambient_Short_A2			(C_SFX_DEF) {file= "ORC_Ambient_Short03.wav";		vol = 50;			};
				instance ORC_Ambient_Short_A3			(C_SFX_DEF) {file= "ORC_Ambient_Short04.wav";		vol = 50;			};
				instance ORC_Ambient_Short_A4			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ORC_Ambient_Short_A5			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ORC_Ambient_Short_A6			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ORC_Ambient_Short_A7			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
		                                                                                                                		
		                                                                                                                		
/* Scavenger / Orcbiter */
				instance SCA_Ambient_Short				(C_SFX_DEF) {file= "SCA_Ambient_Short01.wav";		vol = 50;			};
				instance SCA_Ambient_Short_A1			(C_SFX_DEF) {file= "SCA_Ambient_Short02.wav";		vol = 50;			};
				instance SCA_Ambient_Short_A2			(C_SFX_DEF) {file= "SCA_Ambient_Short03.wav";		vol = 50;			};
				instance SCA_Ambient_Short_A3			(C_SFX_DEF) {file= "SCA_Ambient_Short04.wav";		vol = 50;			};
				instance SCA_Ambient_Short_A4			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SCA_Ambient_Short_A5			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SCA_Ambient_Short_A6			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SCA_Ambient_Short_A7			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SCA_Attack						(C_SFX_DEF) {file= "SCA_Attack01.wav";				vol = 75;			};
				instance SCA_Attack_A1					(C_SFX_DEF) {file= "SCA_Attack02.wav";				vol = 75;			};				
				instance SCA_Die						(C_SFX_DEF) {file= "SCA_Die01.wav";					vol = 50;			};
				instance SCA_Die_A1						(C_SFX_DEF) {file= "SCA_Die02.wav";					vol = 50;			};
				instance SCA_Fly						(C_SFX_DEF) {file= "SCA_Fly01.wav";					vol = 35;			};
				instance SCA_Gacker						(C_SFX_DEF) {file= "SCA_Gacker01.wav";				vol = 75;			};
				instance SCA_Hurt						(C_SFX_DEF) {file= "SCA_Hurt01.wav";				vol = 75;			};
				instance SCA_Hurt_A1					(C_SFX_DEF) {file= "SCA_Hurt02.wav";				vol = 75;			};
				instance SCA_Hurt_A2					(C_SFX_DEF) {file= "SCA_Hurt03.wav";				vol = 75;			};
				instance SCA_Shakehead					(C_SFX_DEF) {file= "SCA_Shakehead01.wav";			vol = 75;			};
				instance SCA_SlurpDown					(C_SFX_DEF) {file= "SCA_Slurp01.wav";				vol = 75;			};
				instance SCA_Warn						(C_SFX_DEF) {file= "SCA_Warn01.wav";				vol = 80;			};
				                                                                                                        		
		                                                                                                                		
/* Shadowb. */	                                                                                                        		
				instance SHA_Ambient 					(C_SFX_DEF) {file= "SHA_Ambient01.wav";				vol = 50;			};
				instance SHA_Ambient_A1					(C_SFX_DEF) {file= "SHA_Ambient02.wav";				vol = 50;			};
				instance SHA_Ambient_A2					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SHA_Ambient_A3					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SHA_Ambient_Short				(C_SFX_DEF) {file= "SHA_Ambient_Short01.wav";		vol = 50;			};
				instance SHA_Ambient_Short_A1			(C_SFX_DEF) {file= "SHA_Ambient_Short02.wav";		vol = 50;			};
				instance SHA_Ambient_Short_A2			(C_SFX_DEF) {file= "SHA_Ambient_Short03.wav";		vol = 50;			};
				instance SHA_Ambient_Short_A3			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SHA_Ambient_Short_A4			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SHA_Ambient_Short_A5			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SHA_Attack 					(C_SFX_DEF) {file= "SHA_Attack01.wav";				vol = 100;			};
				instance SHA_Attack_A1 					(C_SFX_DEF) {file= "SHA_Attack02.wav";				vol = 100;			};
				instance SHA_Attack_A2 					(C_SFX_DEF) {file= "SHA_Attack03.wav";				vol = 100;			};
				instance SHA_Attack_A3 					(C_SFX_DEF) {file= "SHA_Attack04.wav";				vol = 100;			};
				instance SHA_Die 						(C_SFX_DEF) {file= "SHA_Die01.wav";					vol = 127;			};
				instance SHA_Hurt 						(C_SFX_DEF) {file= "SHA_Hurt01.wav";				vol = 100;			};
				instance SHA_Hurt_A1 					(C_SFX_DEF) {file= "SHA_Hurt02.wav";				vol = 100;			};
				instance SHA_Hurt_A2 					(C_SFX_DEF) {file= "SHA_Hurt03.wav";				vol = 100;			};
				instance SHA_SnoreIn 					(C_SFX_DEF) {file= "SHA_Snorein01.wav";				vol = 60;			};		
				instance SHA_SnoreOut					(C_SFX_DEF) {file= "SHA_Snoreout01.wav";			vol = 60;			};		
				instance SHA_Warn 						(C_SFX_DEF) {file= "SHA_Warn01.wav";				vol = 127;			};		
				instance SHA_Warn_A1 					(C_SFX_DEF) {file= "SHA_Warn02.wav";				vol = 127;			};		
		                                                                                                                		
		                                                                                                                		
/* Skeleton */                                                                                                          		
				instance SKE_Ambient	 				(C_SFX_DEF) {file= "SKE_Ambient01.wav";				vol = 50;			};
				instance SKE_Ambient_A1	 				(C_SFX_DEF) {file= "SKE_Ambient02.wav";				vol = 50;			};
				instance SKE_Ambient_A2	 				(C_SFX_DEF) {file= "SKE_Ambient03.wav";				vol = 50;			};
				instance SKE_Die	 					(C_SFX_DEF) {file= "SKE_Die01.wav";					vol = 90;			};
				instance SKE_Die_A1	 					(C_SFX_DEF) {file= "SKE_Die02.wav";					vol = 90;			};
				instance SKE_Hurt	 					(C_SFX_DEF) {file= "SKE_Hurt01.wav";				vol = 75;			};
				instance SKE_Hurt_A1	 				(C_SFX_DEF) {file= "SKE_Hurt02.wav";				vol = 75;			};
				instance SKE_Run	 					(C_SFX_DEF) {file= "SKE_Step01.wav";				vol = 15;			};
				instance SKE_Run_A1	 					(C_SFX_DEF) {file= "SKE_Step02.wav";				vol = 15;			};
				instance SKE_Run_A2	 					(C_SFX_DEF) {file= "SKE_Step03.wav";				vol = 15;			};
				instance SKE_Run_A3	 					(C_SFX_DEF) {file= "SKE_Step04.wav";				vol = 15;			};
				instance SKE_Run_A4	 					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SKE_Run_A5	 					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};

		                                                                                                                		
		                                                                                                                		
/* Sleeper */	                                                                                                        		
				instance SLE_Ambient 					(C_SFX_DEF) {file= "SLE_Ambient01.wav";				vol = 125;			};
				instance SLE_Ambient_A1 				(C_SFX_DEF) {file= "SLE_Ambient02.wav";				vol = 125;			};
				instance SLE_Snore 						(C_SFX_DEF) {file= "SLE_Snore01.wav";				vol = 125;			};
				instance SLE_Snore_A1 					(C_SFX_DEF) {file= "SLE_Snore02.wav";				vol = 125;			};
				instance SLE_Hurt	 					(C_SFX_DEF) {file= "SLE_Hurt01.wav";				vol = 125;			};
				                                                                                                        		
		
/* Snapper / Razor */	
				instance SNA_Ambient 					(C_SFX_DEF) {file= "SNA_Ambient01.wav";				vol = 50;			};
				instance SNA_Ambient_A1 				(C_SFX_DEF) {file= "SNA_Ambient02.wav";				vol = 50;			};
				instance SNA_Ambient_A2 				(C_SFX_DEF) {file= "SNA_Ambient03.wav";				vol = 50;			};
				instance SNA_Ambient_A3 				(C_SFX_DEF) {file= "SNA_Ambient02.wav";				vol = 50;			};
				instance SNA_Ambient_A4 				(C_SFX_DEF) {file= "SNA_Ambient04.wav";				vol = 50;			};
				instance SNA_Ambient_A5 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_A6 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_A7 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_A8 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_A9 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_A10 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_A11 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_Short 				(C_SFX_DEF) {file= "SNA_Ambient_Short01.wav";		vol = 30;			};
				instance SNA_Ambient_Short_A1			(C_SFX_DEF) {file= "SNA_Ambient_Short02.wav";		vol = 30;			};
				instance SNA_Ambient_Short_A2			(C_SFX_DEF) {file= "SNA_Ambient_Short03.wav";		vol = 30;			};
				instance SNA_Ambient_Short_A3			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_Short_A4			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_Short_A5			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_Short_A6			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Ambient_Short_A7			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SNA_Attack 					(C_SFX_DEF) {file= "SNA_Attack01.wav";				vol = 85;			};
				instance SNA_Attack_A1 					(C_SFX_DEF) {file= "SNA_Attack02.wav";				vol = 85;			};
				instance SNA_Clean 						(C_SFX_DEF) {file= "SNA_Clean01.wav";				vol = 100;			};
				instance SNA_Die 						(C_SFX_DEF) {file= "SNA_Die01.wav";					vol = 80;			};
				instance SNA_Happy	 					(C_SFX_DEF) {file= "SNA_Happy01.wav";				vol = 100;			};		
				instance SNA_Hurt 						(C_SFX_DEF) {file= "SNA_Hurt01.wav";				vol = 110;			};
				instance SNA_Hurt_A1 					(C_SFX_DEF) {file= "SNA_Hurt02.wav";				vol = 110;			};				
				instance SNA_Warn 						(C_SFX_DEF) {file= "SNA_Warn01.wav";				vol = 110;			};
				instance SNA_Warn_A1 					(C_SFX_DEF) {file= "SNA_Warn02.wav";				vol = 110;			};		
                                                                                                         		
		                                                                                                                		
/* Swampshark */	                                                                                                    		
				instance SWA_Ambient 					(C_SFX_DEF) {file= "SWA_Ambient01.wav";				vol = 90;			};
				instance SWA_Ambient_A1					(C_SFX_DEF) {file= "SWA_Ambient02.wav";				vol = 90;			};
				instance SWA_Ambient_A2 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SWA_Ambient_A3					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SWA_Ambient_A4 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SWA_Ambient_A5					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance SWA_Attack 					(C_SFX_DEF) {file= "SWA_Attack01.wav";				vol = 110;			};
				instance SWA_Attack_A1 					(C_SFX_DEF) {file= "SWA_Attack02.wav";				vol = 110;			};
				instance SWA_Die	 					(C_SFX_DEF) {file= "SWA_Die01.wav";					vol = 110;			};
				instance SWA_DieB	 					(C_SFX_DEF) {file= "SWA_Die02.wav";					vol = 110;			};
				instance SWA_Hurt	 					(C_SFX_DEF) {file= "SWA_Hurt01.wav";				vol = 110;			};
				instance SWA_Hurt_A1	 				(C_SFX_DEF) {file= "SWA_Hurt02.wav";				vol = 110;			};
				instance SWA_Slide 						(C_SFX_DEF) {file= "SWA_Slide01.wav";				vol = 90;			};
				instance SWA_Slide_A1 					(C_SFX_DEF) {file= "SWA_Slide02.wav";				vol = 90;			};
				instance SWA_Slide_A2 					(C_SFX_DEF) {file= "SWA_Slide03.wav";				vol = 90;			};
				instance SWA_Slide_A3 					(C_SFX_DEF) {file= "SWA_Slide04.wav";				vol = 90;			};
				instance SWA_Slide_A4 					(C_SFX_DEF) {file= "SWA_Slide05.wav";				vol = 90;			};
				instance SWA_Warn	 					(C_SFX_DEF) {file= "SWA_Warn01.wav";				vol = 127;			};
				instance SWA_Warn_A1 					(C_SFX_DEF) {file= "SWA_Warn02.wav";				vol = 127;			};
		                                                                                                                		
		                                                                                                                		
/* Troll */	                                                                                                            		
				instance TRO_Ambient					(C_SFX_DEF) {file= "TRO_Ambient01.wav";				vol = 110;			};
				instance TRO_Ambient_A1					(C_SFX_DEF) {file= "TRO_Ambient02.wav";				vol = 110;			};
				instance TRO_Ambient_A2					(C_SFX_DEF) {file= "TRO_Ambient03.wav";				vol = 110;			};
				instance TRO_Ambient_A3					(C_SFX_DEF) {file= "TRO_Ambient04.wav";				vol = 110;			};
				instance TRO_Ambient_A4					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance TRO_Ambient_A5					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance TRO_Ambient_A6					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance TRO_Ambient_A7					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance TRO_Attack						(C_SFX_DEF) {file= "TRO_Attack01.wav";				vol = 125;			};
				instance TRO_Die 						(C_SFX_DEF) {file= "TRO_Die01.wav";					vol = 125;			};
				instance TRO_Fistwoosh					(C_SFX_DEF) {file= "TRO_Fistwoosh01.wav";			vol = 125;			};
				instance TRO_Growl 						(C_SFX_DEF) {file= "TRO_Growl01.wav";				vol = 125;			};
				instance TRO_Growl_A1 					(C_SFX_DEF) {file= "TRO_Growl02.wav";				vol = 125;			};
				instance TRO_Hurt						(C_SFX_DEF) {file= "TRO_Hurt01.wav";				vol = 125;			};
				instance TRO_Perception 				(C_SFX_DEF) {file= "TRO_Perception01.wav";			vol = 125;			};				
				instance TRO_Snore 						(C_SFX_DEF) {file= "TRO_Snore01.wav";				vol = 125;			};
				instance TRO_StepBoom					(C_SFX_DEF) {file= "TRO_Stepboom01.wav";			vol = 125;			};
				instance TRO_StepLight					(C_SFX_DEF) {file= "TRO_Stepboom01.wav";			vol = 50;			};
				instance TRO_Warn						(C_SFX_DEF) {file= "TRO_Warn01.wav";				vol = 127;			};
		                                                                                                                		
				                                                                                                        		
/* Waran / Firewaran */                                                                                                             		
				instance WAR_Ambient    				(C_SFX_DEF) {file= "WAR_Ambient01.wav";				vol = 100;			};
				instance WAR_Ambient_A1    				(C_SFX_DEF) {file= "WAR_Ambient02.wav";				vol = 100;			};
				instance WAR_Ambient_A2    				(C_SFX_DEF) {file= "WAR_Ambient03.wav";				vol = 100;			};
				instance WAR_Ambient_A3    				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WAR_Ambient_A4    				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WAR_Ambient_A5    				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WAR_Ambient_Short    			(C_SFX_DEF) {file= "WAR_Ambient_Short01.wav";		vol = 100;			};
				instance WAR_Ambient_Short_A1    		(C_SFX_DEF) {file= "WAR_Ambient_Short02.wav";		vol = 100;			};
				instance WAR_Ambient_Short_A2    		(C_SFX_DEF) {file= "WAR_Ambient_Short03.wav";		vol = 100;			};
				instance WAR_Ambient_Short_A3    		(C_SFX_DEF) {file= "WAR_Ambient_Short04.wav";		vol = 100;			};
				instance WAR_Ambient_Short_A4    		(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WAR_Ambient_Short_A5    		(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WAR_Ambient_Short_A6    		(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WAR_Ambient_Short_A7    		(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WAR_Attack    					(C_SFX_DEF) {file= "WAR_Attack01.wav";				vol = 100;			};
				instance WAR_Attack_A1 					(C_SFX_DEF) {file= "WAR_Attack01.wav";				vol = 100;			};
				instance WAR_Die       					(C_SFX_DEF) {file= "WAR_Die01.wav";					vol = 100;			};
				instance WAR_Hurt      					(C_SFX_DEF) {file= "WAR_Hurt01.wav";				vol = 100;			};
				instance WAR_Hurt_A1   					(C_SFX_DEF) {file= "WAR_Hurt02.wav";				vol = 100;			};
				instance WAR_Warn      					(C_SFX_DEF) {file= "WAR_Warn01.wav";				vol = 127;			};
				instance WAR_Warn_A1   					(C_SFX_DEF) {file= "WAR_Warn02.wav";				vol = 127;			};
				instance FWA_Attack    					(C_SFX_DEF) {file= "FWA_Attack01.wav";				vol = 100;			};
				instance FWA_Attack_A1 					(C_SFX_DEF) {file= "FWA_Attack01.wav";				vol = 100;			};
		                                                                                                                		
		                                                                                                                		
/* Wolf / Orcdog */	                                                                                                            		
				instance WOL_Ambient 					(C_SFX_DEF) {file= "WOL_Ambient01.wav";				vol = 55;			};
				instance WOL_Ambient_A1 				(C_SFX_DEF) {file= "WOL_Ambient02.wav";				vol = 55;			};
				instance WOL_Ambient_A2 				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WOL_Ambient_A3					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WOL_Ambient_A4					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WOL_Ambient_Short 				(C_SFX_DEF) {file= "WOL_Ambient_Short01.wav";		vol = 35;			};
				instance WOL_Ambient_Short_A1 			(C_SFX_DEF) {file= "WOL_Ambient_Short02.wav";		vol = 35;			};
				instance WOL_Ambient_Short_A2 			(C_SFX_DEF) {file= "WOL_Ambient_Short03.wav";		vol = 35;			};
				instance WOL_Ambient_Short_A3 			(C_SFX_DEF) {file= "WOL_Ambient_Short04.wav";		vol = 35;			};
				instance WOL_Ambient_Short_A4 			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WOL_Ambient_Short_A5 			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WOL_Ambient_Short_A6 			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WOL_Ambient_Short_A7 			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance WOL_Attack 					(C_SFX_DEF) {file= "WOL_Attack01.wav";				vol = 112;			};
				instance WOL_Attack_A1 					(C_SFX_DEF) {file= "WOL_Attack02.wav";				vol = 112;			};
				instance WOL_Die 						(C_SFX_DEF) {file= "WOL_Die01.wav";					vol = 120;			};
				instance WOL_Growl 						(C_SFX_DEF) {file= "WOL_Growl01.wav";				vol = 95;			};
				instance WOL_Hurt 						(C_SFX_DEF) {file= "WOL_Hurt01.wav";				vol = 55;			};
				instance WOL_Hurt_A1					(C_SFX_DEF) {file= "WOL_Hurt02.wav";				vol = 55;			};
				instance WOL_Hurt_A2					(C_SFX_DEF) {file= "WOL_Hurt03.wav";				vol = 55;			};
				instance WOL_Warn		 				(C_SFX_DEF) {file= "WOL_Warn01.wav";				vol = 85;			};
				                                                                                                        		
			
/* Zombie */
				instance ZOM_Ambient					(C_SFX_DEF) {file= "ZOM_Ambient03.wav";				vol = 75;			};
				instance ZOM_Ambient_A1					(C_SFX_DEF) {file= "ZOM_Ambient04.wav";				vol = 75;			};
				instance ZOM_Ambient_A2					(C_SFX_DEF) {file= "ZOM_Ambient06.wav";				vol = 50;			};
				instance ZOM_Ambient_A3					(C_SFX_DEF) {file= "ZOM_Ambient03.wav";				vol = 75;			};
				instance ZOM_Ambient_A4					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ZOM_Ambient_A5					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ZOM_Ambient_A6					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ZOM_Ambient_A7					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ZOM_Ambient_A8					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ZOM_Ambient_A9					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
				instance ZOM_Attack						(C_SFX_DEF) {file= "ZOM_Attack01.wav";				vol = 120;			};
				instance ZOM_Attack_A1					(C_SFX_DEF) {file= "ZOM_Attack02.wav";				vol = 120;			};
				instance ZOM_Die 						(C_SFX_DEF) {file= "ZOM_Die01.wav";					vol = 80;			};
				instance ZOM_Die_A1 					(C_SFX_DEF) {file= "ZOM_Die02.wav";					vol = 80;			};
				instance ZOM_Hurt						(C_SFX_DEF) {file= "ZOM_Hurt01.wav";				vol = 100;			};
				instance ZOM_Hurt_A1					(C_SFX_DEF) {file= "ZOM_Hurt02.wav";				vol = 100;			};
				instance ZOM_Hurt_A2					(C_SFX_DEF) {file= "ZOM_Hurt03.wav";				vol = 100;			};
				instance ZOM_Warn						(C_SFX_DEF) {file= "ZOM_Warn01.wav";				vol = 127;			};
				instance ZOM_Warn_A1					(C_SFX_DEF) {file= "ZOM_Warn02.wav";				vol = 127;			};		
		
		
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//  H U M A N S //////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////


///////////////////////
// MDS - SFX
///////////////////////

				instance WashSelf01						(C_SFX_DEF) {file= "Wash_01.wav";					vol = 90;			};
				instance WashSelf02						(C_SFX_DEF) {file= "Wash_02.wav";					vol = 90;			};
	
				instance Couldron_Stir					(C_SFX_DEF) {file= "couldron_stir_01.wav";			vol = 60;			};
				instance Couldron_Stir_A1				(C_SFX_DEF) {file= "couldron_stir_02.wav";			vol = 40;			};

	
				instance Walk_Water						(C_SFX_DEF) {file= "Step_Water_01.wav";				vol = 80;			};  
				instance Walk_Water_A1					(C_SFX_DEF) {file= "Step_Water_02.wav";				vol = 80;			};  


///////////////////////
// Animations-SFX_Human
///////////////////////

// 				instance Jump							(C_SFX_DEF) {file= "Ignajmp.wav";					vol = 20;			};
// 				instance Hang							(C_SFX_DEF) {file= "Uaah.wav";											};
// 				instance t_Hang_2_Stand					(C_SFX_DEF) {file= "t_hang2stand.wav";									};
// 				instance ClimbUp						(C_SFX_DEF) {file= "ClimbUp.wav";					vol = 60;			};
// 				instance ClimbDown						(C_SFX_DEF) {file= "ClimbDown.wav";										};

// Added by KaiRo:
				instance Human_Spit						(C_SFX_DEF) {file= "Spit_Long.wav";					vol = 50;			};
				instance Human_Scratch					(C_SFX_DEF) {file= "Human_Scratch_01.wav";			vol = 50;			};
				instance Human_PissOff     			    (C_SFX_DEF) {file= "Special_pinkeln_02.wav";		vol = 100;			};
				instance Human_SnoreIn					(C_SFX_DEF) {file= "Snore_BreathOut_01.wav";		vol = 80;			};
				instance Human_SnoreIn_A1				(C_SFX_DEF) {file= "Snore_BreathOut_02.wav";		vol = 80;			};
				instance Human_SnoreIn_A2				(C_SFX_DEF) {file= "Snore_BreathOut_03.wav";		vol = 80;			};
				instance Human_SnoreOut					(C_SFX_DEF) {file= "Snore_BreathIn_01.wav";			vol = 80;			};
				instance Human_SnoreOut_A1				(C_SFX_DEF) {file= "Snore_BreathIn_02.wav";			vol = 80;			};
				instance Human_SnoreOut_A2				(C_SFX_DEF) {file= "Snore_BreathIn_03.wav";			vol = 80;			};


// 				instance Stumble						(C_SFX_DEF) {file= "Uaaah.wav";											};

// 				instance Fall							(C_SFX_DEF) {file= "Ooooh.wav";											};
// 				instance Fallen							(C_SFX_DEF) {file= "Uaaah.wav";											};


//////////////////////////////////////////////////



// Unterwasserblubberbasenklangeffektinstanzbeschreibung
				instance BreathBubbles 					(C_SFX_DEF) {file= "uw_breathout_bubbles_01.wav";  	vol = 40;			};
				instance BreathBubbles_A1 	 			(C_SFX_DEF) {file= "uw_breathout_bubbles_02.wav";  	vol = 50;			};
				instance BreathBubbles_A2	 			(C_SFX_DEF) {file= "uw_breathout_bubbles_03.wav";  	vol = 35;			};


// Replaced by KaiRo
				instance FallIntoWater					(C_SFX_DEF) {file= "Water_FallInto.wav";			vol = 110;			};
				instance Swim							(C_SFX_DEF) {file= "Swim_Littlewaves_01.wav";		vol = 30;			};
				instance Swim_A1						(C_SFX_DEF) {file= "Swim_Littlewaves_02.wav";		vol = 30;			};
				instance Swim_A2						(C_SFX_DEF) {file= "Swim_Littlewaves_03.wav";		vol = 30;			};
				instance Swim_A3						(C_SFX_DEF) {file= "Swim_Littlewaves_04.wav";		vol = 30;			};
				instance SwimBack						(C_SFX_DEF) {file= "Swim_Littlewaves_01.wav";		vol = 20;			};
				instance SwimBack_A1					(C_SFX_DEF) {file= "Swim_Littlewaves_02.wav";		vol = 20;			};
				instance Swim2Hang						(C_SFX_DEF) {file= "Swim_ClimbOut.wav";				vol = 40;			};
				instance Swim2Dive						(C_SFX_DEF) {file= "Swim_DiveDown.wav";				vol = 40;			};
				instance SwimWaves						(C_SFX_DEF) {file= "Swim_Little_01.wav";			vol = 40;			};
				instance SwimWaves_A1					(C_SFX_DEF) {file= "Swim_Little_02.wav";			vol = 40;			};
				instance SwimWaves_A2					(C_SFX_DEF) {file= "Swim_Little_03.wav";			vol = 40;			};
				instance Dive							(C_SFX_DEF) {file= "Swim_Underwater.wav";			vol = 60;			};
				instance DiveWaves						(C_SFX_DEF) {file= "Swim_Littlew_U_01.wav";			vol = 30;			};
				instance DiveWaves_A1					(C_SFX_DEF) {file= "Swim_Littlew_u_02.wav";			vol = 30;			};
				instance Drown							(C_SFX_DEF) {file= "Swim_Drown.wav";				vol = 60;			};

// 				instance Slide							(C_SFX_DEF) {file= "slide.wav";								   loop=1;	};
// 				instance Push							(C_SFX_DEF) {file= "Pushst.wav";										};
// 				instance Pull							(C_SFX_DEF) {file= "Pullst.wav";										};
// 				instance TorchToggle					(C_SFX_DEF) {file= "Wouf.wav";											};
// 				instance TorchThrow						(C_SFX_DEF) {file= "TorchThrow.wav";									};




///////////////////////
// Untergrund-SFX_Human
///////////////////////

// -------RUN:

/* Earth */	
				instance Run_Earth		                (C_SFX_DEF) {file= "Step_Earth_01.wav";				vol = 20;	    	};
				instance Run_Earth_A1					(C_SFX_DEF) {file= "Step_Earth_02.wav";				vol = 20;			};
				instance Run_Earth_A2					(C_SFX_DEF) {file= "Step_Earth_03.wav";				vol = 20;			};
				instance Run_Earth_A3		            (C_SFX_DEF) {file= "Step_Earth_04.wav";				vol = 20;	    	};
				instance Run_Earth_A4					(C_SFX_DEF) {file= "Step_Earth_05.wav";				vol = 20;			};
				instance Run_Earth_A5					(C_SFX_DEF) {file= "Step_Earth_06.wav";				vol = 20;			};
				instance Run_Earth_A6					(C_SFX_DEF) {file= "Step_Earth_07.wav";				vol = 20;			};
				instance Run_Earth_A7					(C_SFX_DEF) {file= "Step_Earth_08.wav";				vol = 20;			};

/* Sand */	                                                                                                                
				instance Run_Sand		                (C_SFX_DEF) {file= "Step_Sand_01.wav";				vol = 40;	    	};
				instance Run_Sand_A1	                (C_SFX_DEF) {file= "Step_Sand_02.wav";				vol = 40;	    	};
				instance Run_Sand_A2	                (C_SFX_DEF) {file= "Step_Sand_03.wav";				vol = 40;	    	};
				instance Run_Sand_A3	                (C_SFX_DEF) {file= "Step_Sand_04.wav";				vol = 40;	    	};
				instance Run_Sand_A4	                (C_SFX_DEF) {file= "Step_Sand_05.wav";				vol = 40;	    	};

/* Metal */	                                                                                                                
				instance Run_Metal		                (C_SFX_DEF) {file= "Step_Metal_01.wav";				vol = 45;	    	};	
				instance Run_Metal_A1					(C_SFX_DEF) {file= "Step_Metal_02.wav";				vol = 45;			};	
				instance Run_Metal_A2					(C_SFX_DEF) {file= "Step_Metal_03.wav";				vol = 45;			};	
				instance Run_Metal_A3					(C_SFX_DEF) {file= "Step_Metal_04.wav";				vol = 45;			};	
				instance Run_Metal_A4					(C_SFX_DEF) {file= "Step_Metal_05.wav";				vol = 45;			};	

/* Stone */	                                                                                                                
				instance Run_Stone		                (C_SFX_DEF) {file= "Step_Stone_01.wav";				vol = 35;	    	};
				instance Run_Stone_A1					(C_SFX_DEF) {file= "Step_Stone_02.wav";				vol = 35;			};
				instance Run_Stone_A2					(C_SFX_DEF) {file= "Step_Stone_03.wav";				vol = 35;			};
				instance Run_Stone_A3					(C_SFX_DEF) {file= "Step_Stone_04.wav";				vol = 35;			};
				instance Run_Stone_A4					(C_SFX_DEF) {file= "Step_Stone_05.wav";				vol = 35;			};

/* Water */	                                                                                                                
				instance Run_Water						(C_SFX_DEF) {file= "Step_Water_01.wav";				vol = 55;			};
				instance Run_Water_A1		            (C_SFX_DEF) {file= "Step_Water_02.wav";				vol = 55;  	    	};
				instance Run_Water_A2					(C_SFX_DEF) {file= "Step_Water_03.wav";				vol = 55;			};
				instance Run_Water_A3		            (C_SFX_DEF) {file= "Step_Water_04.wav";				vol = 55;  	    	};
				instance Run_Water_A4		            (C_SFX_DEF) {file= "Step_Water_05.wav";				vol = 55;  	    	};

/* Wood */	                                                                                                                
				instance Run_Wood		                (C_SFX_DEF) {file= "Step_Wood_01.wav";				vol = 40;	    	};
				instance Run_Wood_A1	                (C_SFX_DEF) {file= "Step_Wood_02.wav";				vol = 40;	    	};
				instance Run_Wood_A2	                (C_SFX_DEF) {file= "Step_Wood_03.wav";				vol = 40;	    	};
				instance Run_Wood_A3	                (C_SFX_DEF) {file= "Step_Wood_04.wav";				vol = 40;	    	};
				instance Run_Wood_A4	                (C_SFX_DEF) {file= "Step_Wood_05.wav";				vol = 40;	    	};

/* Undef */	                                                                                                                
				instance Run_Undef		                (C_SFX_DEF) {file= "Step_Stone_01.wav";				vol = 35;		    };    
				instance Run_Undef_A1					(C_SFX_DEF) {file= "Step_Stone_02.wav";				vol = 35;			};          	
				instance Run_Undef_A2					(C_SFX_DEF) {file= "Step_Stone_03.wav";				vol = 35;			};          	
				instance Run_Undef_A3					(C_SFX_DEF) {file= "Step_Stone_04.wav";				vol = 35;		    };          	
				instance Run_Undef_A4					(C_SFX_DEF) {file= "Step_Stone_05.wav";				vol = 35;		    };          	
		        
                                                                                                         	
// -------SNEAK:                                                                                      
        
/* Earth */	
				instance Sneak_Earth					(C_SFX_DEF) {file= "Step_Earth_01.wav";				vol = 10;			};      	
				instance Sneak_Earth_A1					(C_SFX_DEF) {file= "Step_Earth_02.wav";				vol = 10;			};      	
				instance Sneak_Earth_A2					(C_SFX_DEF) {file= "Step_Earth_03.wav";				vol = 10;			};          

/* Sand */	
				instance Sneak_Sand						(C_SFX_DEF) {file= "Step_Sand_01.wav";				vol = 15;			};    
				instance Sneak_Sand_A1					(C_SFX_DEF) {file= "Step_Sand_02.wav";				vol = 15;			};      	
				instance Sneak_Sand_A2					(C_SFX_DEF) {file= "Step_Sand_03.wav";				vol = 15;			};          

/* Metal */
				instance Sneak_Metal					(C_SFX_DEF) {file= "Step_Metal_01.wav";				vol = 15;			};	    
				instance Sneak_Metal_A1					(C_SFX_DEF) {file= "Step_Metal_02.wav";				vol = 15;			};	    
				instance Sneak_Metal_A2					(C_SFX_DEF) {file= "Step_Metal_03.wav";				vol = 15;			};	    

/* Stone */	
				instance Sneak_Stone					(C_SFX_DEF) {file= "Step_Stone_01.wav";				vol = 15;			};      
				instance Sneak_Stone_A1					(C_SFX_DEF) {file= "Step_Stone_02.wav";				vol = 15;			};    
				instance Sneak_Stone_A2					(C_SFX_DEF) {file= "Step_Stone_03.wav";				vol = 15;			};  	

/* Water */	
				instance Sneak_Water					(C_SFX_DEF) {file= "Step_Water_01.wav";				vol = 15; 			};          	
				instance Sneak_Water_A1					(C_SFX_DEF) {file= "Step_Water_02.wav";				vol = 15;			};      	
				instance Sneak_Water_A2					(C_SFX_DEF) {file= "Step_Water_03.wav";				vol = 15;			};

/* Wood */	
				instance Sneak_Wood						(C_SFX_DEF) {file= "Step_Wood_01.wav";				vol = 20;			};      	
				instance Sneak_Wood_A1					(C_SFX_DEF) {file= "Step_Wood_02.wav";				vol = 20;			};  	
				instance Sneak_Wood_A2					(C_SFX_DEF) {file= "Step_Wood_03.wav";				vol = 20;			};  	

/* Undef */	
				instance Sneak_Undef					(C_SFX_DEF) {file= "Step_Earth_01.wav";				vol = 15;			};               	
				instance Sneak_Undef_A1					(C_SFX_DEF) {file= "Step_Earth_02.wav";				vol = 15;			};
				instance Sneak_Undef_A2					(C_SFX_DEF) {file= "Step_Earth_03.wav";				vol = 15;			};
				instance Sneak_Undef_A3					(C_SFX_DEF) {file= "Step_Earth_04.wav";				vol = 15;			};
				instance Sneak_Undef_A4					(C_SFX_DEF) {file= "Step_Earth_05.wav";				vol = 15;			};
		

// -------TURN:       

/* Earth */	
				instance Turn_Earth						(C_SFX_DEF) {file= "Step_Earth_01.wav";				vol = 15;			};
				instance Turn_Earth_A1					(C_SFX_DEF) {file= "Step_Earth_02.wav";				vol = 15;			};
				instance Turn_Earth_A2					(C_SFX_DEF) {file= "Step_Earth_03.wav";				vol = 15;			};

/* Sand */	
				instance Turn_Sand						(C_SFX_DEF) {file= "Step_Sand_01.wav";				vol = 20;			};
				instance Turn_Sand_A1					(C_SFX_DEF) {file= "Step_Sand_02.wav";				vol = 20;			};
				instance Turn_Sand_A2					(C_SFX_DEF) {file= "Step_Sand_03.wav";				vol = 20;			};

/* Metal */	
				instance Turn_Metal						(C_SFX_DEF) {file= "Step_Metal_01.wav";				vol = 20;			};	
				instance Turn_Metal_A1					(C_SFX_DEF) {file= "Step_Metal_02.wav";				vol = 20;			};	
				instance Turn_Metal_A2					(C_SFX_DEF) {file= "Step_Metal_03.wav";				vol = 20;			};	

/* Stone */	
				instance Turn_Stone						(C_SFX_DEF) {file= "Step_Stone_01.wav";				vol = 20;			};
				instance Turn_Stone_A1					(C_SFX_DEF) {file= "Step_Stone_02.wav";				vol = 20;			};
				instance Turn_Stone_A2					(C_SFX_DEF) {file= "Step_Stone_03.wav";				vol = 20;			};

/* Water */	
				instance Turn_Water						(C_SFX_DEF) {file= "Step_Water_01.wav";				vol = 20; 	 		};
				instance Turn_Water_A1					(C_SFX_DEF) {file= "Step_Water_02.wav";				vol = 20;			};
				instance Turn_Water_A2					(C_SFX_DEF) {file= "Step_Water_03.wav";				vol = 20;			};

/* Wood */	
				instance Turn_Wood						(C_SFX_DEF) {file= "Step_Wood_01.wav";				vol = 25;			};
				instance Turn_Wood_A1					(C_SFX_DEF) {file= "Step_Wood_02.wav";				vol = 25;			};
				instance Turn_Wood_A2					(C_SFX_DEF) {file= "Step_Wood_03.wav";				vol = 25;			};

/* Undef */	
				instance Turn_Undef						(C_SFX_DEF) {file= "Step_Earth_01.wav";				vol = 20;			};
				instance Turn_Undef_A1					(C_SFX_DEF) {file= "Step_Earth_02.wav";				vol = 20;			};
				instance Turn_Undef_A2					(C_SFX_DEF) {file= "Step_Earth_03.wav";				vol = 20;			};
	        	instance Turn_Undef_A3					(C_SFX_DEF) {file= "Step_Earth_04.wav";				vol = 20;			};
	        	instance Turn_Undef_A4					(C_SFX_DEF) {file= "Step_Earth_05.wav";				vol = 20;			};


// Replaced by KaiRo
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//  H U M A N S           F I G H T //////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/* whoosh */	
				instance Whoosh							(C_SFX_DEF) {file= "woosh_01.wav";					vol = 80;			}; 
				instance Whoosh_A1						(C_SFX_DEF) {file= "woosh_02.wav";					vol = 90;			}; 
				instance Whoosh_A2						(C_SFX_DEF) {file= "woosh_03.wav";					vol = 80;			}; 
				instance Whoosh_A3						(C_SFX_DEF) {file= "woosh_04.wav";					vol = 90;			}; 
				instance Whoosh_A4						(C_SFX_DEF) {file= "woosh_05.wav";					vol = 80;			}; 
				instance Whoosh_A5						(C_SFX_DEF) {file= "woosh_06.wav";					vol = 90;			}; 
                                                                                                                                
/* whoosh_after */	                                                                                                            
				instance Back							(C_SFX_DEF) {file= "Woosh_After_01.wav";			vol = 90;			}; 
				instance Back_A1						(C_SFX_DEF) {file= "Woosh_After_02.wav";			vol = 90;			}; 
                                                                                                                               
/* ready */	                                                                                                                    
				instance Drawsound_ME					(C_SFX_DEF) {file= "Sword_Draw_01.wav";				vol = 25;			}; 
				instance Drawsound_ME_A1				(C_SFX_DEF) {file= "Sword_Draw_01.wav";				vol = 25;			}; 
				instance Drawsound_WO					(C_SFX_DEF) {file= "Sword_Draw_01.wav";				vol = 25;			}; 
				instance Drawsound_Bow					(C_SFX_DEF) {file= "Woosh_After_01.wav";			vol = 60;			}; 
                                                                                                                           
/* parade */	                        		                                                                         
				instance D_Parade		        		(C_SFX_DEF) {file= "Woosh_After_01.wav";			vol = 80;      		};
				instance D_Parade_A1	        		(C_SFX_DEF) {file= "Woosh_After_01.wav";			vol = 80;      		};
				instance D_Parade_A2					(C_SFX_DEF) {file= "Woosh_After_02.wav";			vol = 80;      		};
				instance D_Parade_A3					(C_SFX_DEF) {file= "nosound.wav";	                vol = 0;      		};
				                                                                                                         
/* breath */	                                                                                                         
				instance D_Breath						(C_SFX_DEF) {file= "Breath01.wav";					vol = 30;    	  	};
				instance D_Breath_A1					(C_SFX_DEF) {file= "Breath02.wav";					vol = 30;    	  	};
				instance D_Breath_A2					(C_SFX_DEF) {file= "Breath03.wav";					vol = 30;    	  	};
				instance D_Breath_A3					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;    	  	};
				instance D_Breath_A4					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;    	  	};
				instance D_Breath_A5					(C_SFX_DEF) {file= "nosound.wav";					vol = 0;    	  	};
                                        		                                          
                                        		                                          
// -------------  Damage ---------------		                                          
// sollte über das Kollisionssoundsystem         geregelt werden. IAM_ME_FL   etc.        
                                                                                          
                                        		                                          
                                        		                                          
/* flesh */	                                                                              
//				instance FIG_HitFlesh					(C_SFX_DEF) {file= "CS_IAM_UD_FL_01.wav";			vol = 90;			}; 
//				instance FIG_HitFlesh_A1				(C_SFX_DEF) {file= "CS_IAM_UD_FL_02.wav";			vol = 90;			}; 
                                            		                                      
/* final */	    //   nicht löschen !!!                            		                                      
				instance FIG_SwordFinal					(C_SFX_DEF) {file= "Sword_Finalhit.wav";			vol = 45;			}; 
                                            		                                      
/* dummydie */                                                                            
				instance FIG_DummyDie		        	(C_SFX_DEF) {file= "Dummy_arghdead.wav";			vol = 127;			}; 
                                            		                                      
/* wounded  */                              		                                      
				instance FIG_DummyWound					(C_SFX_DEF) {file= "Dummy_argh.wav";				vol = 127;			}; 
                                                                                          




//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

				instance FistAttack						(C_SFX_DEF) {file= "woosh_02.wav";					vol = 80;			};
				instance ReadyBow						(C_SFX_DEF) {file= "Flap1.wav";											};
		                                			
				instance BowShoot						(C_SFX_DEF) {file= "Bow_Fire_01.wav";				vol = 30;			};
				instance BowReload						(C_SFX_DEF) {file= "Woosh_After_01.wav";			vol = 40;			};
				instance CrossbowShoot					(C_SFX_DEF) {file= "Bow_Fire_01.wav";				vol = 40;			};
				instance CrossbowReload	            	(C_SFX_DEF) {file= "Woosh_After_02.wav";			vol = 40;			};
                                                    
                                        			
// Weapons                              			
// instance ReadyMag		(C_SFX_DEF) {file= "kampfschrei.wav";							};
// instance ReadyPsi		(C_SFX_DEF) {file= "kampfschrei.wav";							};
// instance ReadyFist		(C_SFX_DEF) {file= "kampfschrei.wav";							};

// instance Ready1hS		(C_SFX_DEF) {file= "Sword_Activate_03.wav";		vol = 80;	}; // Replaced by KaiRo
// instance Ready1hS_A1		(C_SFX_DEF) {file= "Sword_Activate_05.wav";		vol = 80;	}; // Replaced by KaiRo

// instance Ready1hA		(C_SFX_DEF) {file= "Ready1hs.wav";					};

// instance Ready2hS		(C_SFX_DEF) {file= "Sword_Activate_03.wav";		vol = 80;	}; // Replaced by KaiRo
// instance Ready2hS_A1		(C_SFX_DEF) {file= "Sword_Activate_05.wav";		vol = 80;	}; // Replaced by KaiRo

// instance Ready2hA		(C_SFX_DEF) {file= "Ready1hs.wav";					};

// instance ReadyCrossbow	(C_SFX_DEF) {file= "ReadyCrossbow.wav";					};

// Idea by KaiRo:
// instance ActivateWeaponname   ... (e.g. Schwert aus Scheide ziehen)
// instance DeactivateWeaponname ... (e.g. Schwert in Scheide schieben)

/*

// Replaced by KaiRo
instance 1hAttack		(C_SFX_DEF) {file= "Woosh_01.wav";	 		vol = 60; 	};
instance 1hAttack_A1		(C_SFX_DEF) {file= "Woosh_02.wav";	 		vol = 60; 	};
instance 1hAttackT		(C_SFX_DEF) {file= "woosh_02.wav";	 		vol = 70;	};
instance 1hAttackT_A1		(C_SFX_DEF) {file= "woosh_03.wav";	 		vol = 70; 	};
instance 1hAttackTurn		(C_SFX_DEF) {file= "woosh_04.wav";			vol = 85;	};
instance 1hParade		(C_SFX_DEF) {file= "woosh_02.wav";			vol = 85;	};

// Replaced by KaiRo
instance 2hAttack		(C_SFX_DEF) {file= "Woosh_04.wav";	 		vol = 70; pitchOff=0; pitchVar=2; loop=0; };
instance 2hAttackT		(C_SFX_DEF) {file= "Woosh_01.wav";	 		vol = 80; pitchOff=4; pitchVar=0; loop=0; };
instance 2hAttackTurn		(C_SFX_DEF) {file= "Woosh_02.wav";			vol = 85;	};
instance 2hParade		(C_SFX_DEF) {file= "Woosh_03.wav";			vol = 90;	};

*/

/*

// Magie-SFX_Human
// instance LIGHT_LOGO    	(C_SFX_DEF) {};
instance LIGHT_SELECTED		(C_SFX_DEF) {file= "Magic_2.wav";					};
instance LIGHT_CASTED  		(C_SFX_DEF) {file= "Magic_10.wav";					};
// instance LIGHT_SPHERE  	(C_SFX_DEF) {};
instance LIGHT_FADES   		(C_SFX_DEF) {file= "Magic_5.wav";					};
instance LIGHT_CANCELED		(C_SFX_DEF) {file= "Magic_3.wav";					};
// instance FIREBALL_LOGO  	(C_SFX_DEF) {};
// instance FIREBALL_SELECTED  	(C_SFX_DEF) {};
// instance FIREBALL_GROWS     	(C_SFX_DEF) {};
instance FIREBALL_SHOT      	(C_SFX_DEF) {file= "Magic_15.wav";					};
instance FIREBALL_FLIES     	(C_SFX_DEF) {file= "Magic_13.wav";					};
instance FIREBALL_EXPLODES  	(C_SFX_DEF) {file= "Magic_11.wav";					};
instance FIREBALL_CANCELED  	(C_SFX_DEF) {file= "Magic_12.wav";					};
// instance CONTROL_LOGO        (C_SFX_DEF) {};
instance CONTROL_SELECTED   	(C_SFX_DEF) {file= "Magic_8.wav" ;					};
// instance CONTROL_STRUGGLE    (C_SFX_DEF) {};
instance CONTROL_FAILED     	(C_SFX_DEF) {file= "Magic_9.wav" ;					};
instance CONTROL_SUCCESS    	(C_SFX_DEF) {file= "Magic_5.wav" ;					};
// instance CONTROL_CONTROL    	(C_SFX_DEF) {};
instance CONTROL_RETURN     	(C_SFX_DEF) {file= "Magic_6.wav" ;					};
// instance SHAPESHIFT_LOGO    	(C_SFX_DEF) {};
// instance SHAPESHIFT_SELECTED	(C_SFX_DEF) {};
// instance SHAPESHIFT_TOGGLE  	(C_SFX_DEF) {};
// instance SHAPESHIFT_SHIFT   	(C_SFX_DEF) {};
// instance SHAPESHIFT_RETURN  	(C_SFX_DEF) {};

*/

// Untergrund-SFX_Gobbo
// !NOTE by KaiRo
// In der GOBBO.MDS habe ich für den Gobbo die gleichen Untergrund-Sounds genommen, wie für den Human.



// Kollisions-, Zerstoerungs-, Slide- SFX
// WICHTIG: Die Praefixe 'CS_', 'DS_', 'SS_' muessen eingehalten werden !

// Konzept-Tabellle, Ac_Technik.doc, 2.2.4, Tabelle 2
// Die Abkuerzungen stehen fuer die jeweiligen Materialien, Trefferarten, nat. Waffenarten, etc.
// Die Reihenfolge der Aufzaehlungen ist WICHTIG und muss mit der Festlegung dieser Attribute durch Ulf
// an anderer Stelle uebereinstimmen (z.B. hat Ulf die moeglichen 'Objekt-Materialien' an anderer Stelle
// definiert).

				CONST STRING CS_MH = "FL LE ME";			// Flesh, Leather, Metal
				CONST STRING CS_MA = "FI JA TA";			// Fist, Jaw, Tail
				CONST STRING CS_IH = "WO ST ME LE CL GL";	// Wood, Stone, Metal, Leather, Clay, Glas
				CONST STRING CS_IA = "WO ME ME ME";			// Dagger, 1hSword, 2hSword, 2hAxe
				CONST STRING CS_OH = "WO ST ME LE CL GL";
				
				CONST STRING CS_HM = "FL LE ME";
				CONST STRING CS_AM = "DM BL BM";			// Damage, BL = Bounces from Leather (Kein Schaden), BM = Bounces from Metal
				CONST STRING CS_HI = "WO ST ME LE CL GL";
				CONST STRING CS_AI = "WO BW ME LE CL GL";
				CONST STRING CS_HO = "WO ST ME LE CL GL";
				CONST STRING CS_AO = "WO ST ME LE CL GL";
				CONST STRING CS_HL = "UD ME ST WO EA WA";
				CONST STRING CS_AL = "UD ME ST WO EA WA";



///////////////////////
// destruction sounds
///////////////////////

// "DS_<OBJ_MATERIAL>" (WO ST ME LE CL GL - Wood, Stone, Metal, Leather, Clay, Glass)
/*
				instance DS_WO							(C_SFX_DEF) {file= "Crash;Wood_2.wav";									};
				instance DS_ST							(C_SFX_DEF) {file= "Crash;Wood_2.wav";									};
				instance DS_ME							(C_SFX_DEF) {file= "Crash;Wood_2.wav";									};
				instance DS_LE							(C_SFX_DEF) {file= "Crash;Item.wav";									};
				instance DS_CL							(C_SFX_DEF) {file= "CRASH;CLAY.wav";									};
				instance DS_GL							(C_SFX_DEF) {file= "Crash;Wood_2.wav";									};
*/


//////////////////////
// slide sounds 
//////////////////////

// (loop=1!), "SS_<LEVEL_MATERIAL>"

				instance SS_UD							(C_SFX_DEF) {file= "slide.wav";									loop=1;	};
//..



//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// COLLISION SOUNDS //////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// Defaults (CS_MHL, CS_MHM ...) werden benutzt, wenn der im Game auftauchenden Collisions-Situation
// kein Script-Sound zugeordnet wurde, bei dem die Materialien (o.ä.) passen.

//////////////////////////////////////////////////////

// Materialkürzel:
// ---------------
// WO - Wood
// ME - Metal
// ST - Stone
// FL - Flesh
// WA - Water
// EA - Earth
// SA - Sand
// UD - Undefined

// Event-Kategorien:
// -----------------

// IAI - Item Attacks Item, überwiegend Parade beim Schertkampf
// IAM - Item Attacks Model, Spieler drescht mit der Waffe auf einen NPC ein
// IAL - Item Attacks Level, Spieler haut mit der Waffe vor eine Wand
// IAO - Item Attacks Object, Spieler haut mit der Waffe auf ein Objekt, meistens die gleichen Waves wie bei IAL

// IHL - Item Hits Level, ein Gegenstand fällt auf den Boden
// IHO - Item Hits Object, ein Gegenstand fällt auf ein Objekt, meistens Brücken etc.

// MAM - Model Attacks Model, Spieler brät seinem Gegenüber im Faustkampf eins über

// MAL - ?!?!?!? - Model Attacks Level, Spieler trifft mit dem Fausthieb eine Wand
// MAO - ?!?!?!? - Model Attacks Object, Spieler boxt vor einen Tisch. Naja...


 

/* IAI */	//											schwert trifft auf schwert
				instance CS_IAI							(C_SFX_DEF) {file= "CS_IAI_ME_ME_01.wav";			vol = 80;			};
				                                                                                         
				instance CS_IAI_ME_ME					(C_SFX_DEF) {file= "CS_IAI_ME_ME_01.wav";			vol = 80;			};
				instance CS_IAI_ME_ME_A1				(C_SFX_DEF) {file= "CS_IAI_ME_ME_02.wav";			vol = 80;			};
				instance CS_IAI_ME_ME_A2				(C_SFX_DEF) {file= "CS_IAI_ME_ME_03.wav";			vol = 80;			};
				instance CS_IAI_ME_ME_A3				(C_SFX_DEF) {file= "CS_IAI_ME_ME_04.wav";			vol = 80;			};
				instance CS_IAI_ME_ME_A4				(C_SFX_DEF) {file= "CS_IAI_ME_ME_05.wav";			vol = 80;			};
				instance CS_IAI_ME_ME_A5				(C_SFX_DEF) {file= "CS_IAI_ME_ME_06.wav";			vol = 80;			};
				instance CS_IAI_ME_ME_A6				(C_SFX_DEF) {file= "CS_IAI_ME_ME_07.wav";			vol = 80;			};
				instance CS_IAI_ME_ME_A7				(C_SFX_DEF) {file= "CS_IAI_ME_ME_08.wav";			vol = 80;			};
                                                                                                         
                                                                                                         
/* IAM */	//											schwert trifft auf monster/human                 
				instance CS_IAM							(C_SFX_DEF) {file= "CS_IAM_UD_FL_01.wav";			vol = 80;			};
				                                                                                         
				instance CS_IAM_ME_FL					(C_SFX_DEF) {file= "CS_IAM_UD_FL_01.wav";			vol = 80;			};
				instance CS_IAM_ME_FL_A1				(C_SFX_DEF) {file= "CS_IAM_UD_FL_02.wav";			vol = 80;			};
				instance CS_IAM_ME_FL_A2				(C_SFX_DEF) {file= "CS_IAM_UD_FL_03.wav";			vol = 80;			};		
				instance CS_IAM_ME_FL_A3				(C_SFX_DEF) {file= "CS_IAM_UD_FL_04.wav";			vol = 80;			};		
				instance CS_IAM_ME_FL_A4				(C_SFX_DEF) {file= "CS_IAM_UD_FL_05.wav";			vol = 80;			};		
				instance CS_IAM_WO_FL					(C_SFX_DEF) {file= "CS_IAM_UD_FL_01.wav";			vol = 80;			};
				instance CS_IAM_WO_FL_A1				(C_SFX_DEF) {file= "CS_IAM_UD_FL_02.wav";			vol = 80;			};
				instance CS_IAM_WO_FL_A2				(C_SFX_DEF) {file= "CS_IAM_UD_FL_03.wav";			vol = 80;			};		
				instance CS_IAM_WO_FL_A3				(C_SFX_DEF) {file= "CS_IAM_UD_FL_04.wav";			vol = 80;			};		
				instance CS_IAM_WO_FL_A4				(C_SFX_DEF) {file= "CS_IAM_UD_FL_05.wav";			vol = 80;			};		
				instance CS_IAM_UD_FL					(C_SFX_DEF) {file= "CS_IAM_UD_FL_01.wav";			vol = 80;			};
				instance CS_IAM_UD_FL_A1				(C_SFX_DEF) {file= "CS_IAM_UD_FL_02.wav";			vol = 80;			};
				instance CS_IAM_UD_FL_A2				(C_SFX_DEF) {file= "CS_IAM_UD_FL_03.wav";			vol = 80;			};		
				instance CS_IAM_UD_FL_A3				(C_SFX_DEF) {file= "CS_IAM_UD_FL_04.wav";			vol = 80;			};		
				instance CS_IAM_UD_FL_A4				(C_SFX_DEF) {file= "CS_IAM_UD_FL_05.wav";			vol = 80;			};		
				                            		
					
/* IAO */	//											schwert trifft auf objekt
				instance CS_IAO							(C_SFX_DEF) {file= "CS_IAL_UD_WO_01.wav";			vol = 80; pfxname="CPFX_Wood";	};
		                                                                                                 
				                                                                                 		
/* s. IAL*/	//											schwert trifft auf level                 		
				instance CS_IAO_ME_ME					(C_SFX_DEF) {file= "CS_IAL_UD_ME_01.wav";			vol = 80;			};
				instance CS_IAO_ME_WO					(C_SFX_DEF) {file= "CS_IAL_UD_WO_01.wav";			vol = 80; pfxname="CPFX_Wood";	};
				instance CS_IAO_ME_ST					(C_SFX_DEF) {file= "CS_IAL_ME_ST_01.wav";			vol = 80; pfxname="CPFX_Stone";	};
				instance CS_IAO_ME_WA					(C_SFX_DEF) {file= "CS_IAL_UD_WA_01.wav";			vol = 80;			};
				instance CS_IAO_WO_ME					(C_SFX_DEF) {file= "CS_IAL_ME_WO_01.wav";			vol = 80;			};
				instance CS_IAO_WO_WO					(C_SFX_DEF) {file= "CS_IAL_UD_WO_01.wav";			vol = 80;			};
				instance CS_IAO_WO_ST					(C_SFX_DEF) {file= "CS_IAL_UD_UD_01.wav";        	vol = 80;			};
				instance CS_IAO_WO_WA					(C_SFX_DEF) {file= "CS_IAL_UD_WA_01.wav";        	vol = 80;			};
		                                                                                                             		
		                                                                                         		             		
/* IHL */	//											gegenstand trifft auf level                      
				instance CS_IHL							(C_SFX_DEF) {file= "CS_IHL_ST_EA.wav";				vol = 80;			};
					                                                                             		             		
				instance CS_IHL_ME_ME					(C_SFX_DEF) {file= "CS_IHL_ME_ME.wav";				vol = 80;			};
				instance CS_IHL_ME_WO					(C_SFX_DEF) {file= "CS_IHL_ME_WO.wav";				vol = 80;			};
				instance CS_IHL_ME_ST					(C_SFX_DEF) {file= "CS_IHL_ME_ST.wav";				vol = 80;			};
				instance CS_IHL_ME_WA					(C_SFX_DEF) {file= "CS_IHL_ME_WA.wav";				vol = 80;			};
				instance CS_IHL_ME_EA					(C_SFX_DEF) {file= "CS_IHL_ME_EA.wav";				vol = 80;			};
				instance CS_IHL_ME_SA					(C_SFX_DEF) {file= "CS_IHL_ME_SA.wav";				vol = 80;			};
					                    		                                                 		             		
				instance CS_IHL_WO_ME					(C_SFX_DEF) {file= "CS_IHL_WO_ME.wav";				vol = 80;			};
				instance CS_IHL_WO_WO					(C_SFX_DEF) {file= "CS_IHL_WO_WO.wav";				vol = 80;			};
				instance CS_IHL_WO_ST					(C_SFX_DEF) {file= "CS_IHL_WO_ST.wav";				vol = 80;			};
				instance CS_IHL_WO_WA					(C_SFX_DEF) {file= "CS_IHL_WO_WA.wav";				vol = 80;			};
				instance CS_IHL_WO_EA					(C_SFX_DEF) {file= "CS_IHL_WO_EA.wav";				vol = 80;			};
				instance CS_IHL_WO_SA					(C_SFX_DEF) {file= "CS_IHL_WO_SA.wav";				vol = 80;			};
			                            		                                                                        		
				instance CS_IHL_ST_ME					(C_SFX_DEF) {file= "CS_IHL_ST_ME.wav";				vol = 80;			};
				instance CS_IHL_ST_WO					(C_SFX_DEF) {file= "CS_IHL_ST_WO.wav";	        	vol = 80;			};
				instance CS_IHL_ST_ST					(C_SFX_DEF) {file= "CS_IHL_ST_ST.wav";				vol = 80;			};
				instance CS_IHL_ST_WA					(C_SFX_DEF) {file= "CS_IHL_ST_WA.wav";				vol = 80;			};
				instance CS_IHL_ST_EA					(C_SFX_DEF) {file= "CS_IHL_ST_EA.wav";				vol = 80;			};
				instance CS_IHL_ST_SA					(C_SFX_DEF) {file= "CS_IHL_ST_SA.wav";				vol = 80;			};
					                    		                                                		             		
		                                		                                                		             		
				/*                      		                                                		             		
				instance CS_IHL_LE_ME					(C_SFX_DEF) {file= "CS_IHL_ST_ME.wav";				vol = 80;			};
				instance CS_IHL_LE_WO					(C_SFX_DEF) {file= "CS_IHL_ST_WO.wav";	        	vol = 80;			};
				instance CS_IHL_LE_ST					(C_SFX_DEF) {file= "CS_IHL_ST_ST.wav";	        	vol = 80;			};
				instance CS_IHL_LE_WA					(C_SFX_DEF) {file= "CS_IHL_ST_WA.wav";	        	vol = 80;			};
				instance CS_IHL_LE_EA					(C_SFX_DEF) {file= "CS_IHL_ST_EA.wav";				vol = 80;			};
				instance CS_IHL_LE_SA					(C_SFX_DEF) {file= "CS_IHL_ST_SA.wav";	        	vol = 80;			};
				*/                                                                              		             		
				                                                                                		             		
				// wenn die folgenden 3 blöcke einkommentiert werden, stürzt der parser ab.     		             		
				// lösung: bei programmieren im debug-mode durchlaufen lassen und im parser     		             		
				// direkt überprüfen, was er für mucken macht.                                  		
				// hinweis: die materialkürzel CL und GL tauchen oben in dem string auf, FL hingegen nicht
				                                                                                		
				/*                                                                              		
				instance CS_IHL_GL_ME					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				instance CS_IHL_GL_WO					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				instance CS_IHL_GL_ST					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				instance CS_IHL_GL_WA					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				instance CS_IHL_GL_EA					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				instance CS_IHL_GL_SA					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				*/                          		                                            		             		
		                                    		
				/*instance CS_IHL_CL_ME					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				instance CS_IHL_CL_WO					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";	        	vol = 80;			};
				instance CS_IHL_CL_ST					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				instance CS_IHL_CL_WA					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				instance CS_IHL_CL_EA					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				instance CS_IHL_CL_SA					(C_SFX_DEF) {file= "CS_IHL_GL_WO.wav";				vol = 80;			};
				*/                          		                                            		             		
				                            				                                    		
				/*                          		                                            		
				instance CS_IHL_FL_ME					(C_SFX_DEF) {file= "CS_IHL_FL_UD.wav";				vol = 80;			};
				instance CS_IHL_FL_WO					(C_SFX_DEF) {file= "CS_IHL_FL_UD.wav";	        	vol = 80;			};
				instance CS_IHL_FL_ST					(C_SFX_DEF) {file= "CS_IHL_FL_UD.wav";	        	vol = 80;			};
				instance CS_IHL_FL_WA					(C_SFX_DEF) {file= "CS_IHL_FL_UD.wav";	        	vol = 80;			};
				instance CS_IHL_FL_EA					(C_SFX_DEF) {file= "CS_IHL_FL_UD.wav";				vol = 80;			};
				instance CS_IHL_FL_SA					(C_SFX_DEF) {file= "CS_IHL_FL_UD.wav";	        	vol = 80;			};
				*/                                                                              		             		
		                                                                                        		
/* IHO */	// 											work in progress                        		
				instance CS_IHO							(C_SFX_DEF)	{file= "CS_IHO_ST_EA.wav";				vol = 80;			};
				instance CS_IHO_ME_ME					(C_SFX_DEF)	{file= "CS_IHO_ME_ME.wav";	    		vol = 80;			};
				instance CS_IHO_ME_WO					(C_SFX_DEF)	{file= "CS_IHO_ME_WO.wav";				vol = 80;			};
				instance CS_IHO_ME_ST					(C_SFX_DEF)	{file= "CS_IHO_ME_ST.wav";				vol = 80;			};
				instance CS_IHO_ME_WA					(C_SFX_DEF)	{file= "CS_IHO_ME_WA.wav";				vol = 80;			};
				instance CS_IHO_ME_EA					(C_SFX_DEF)	{file= "CS_IHO_ME_EA.wav";				vol = 80;			};
				instance CS_IHO_ME_SA					(C_SFX_DEF)	{file= "CS_IHO_ME_SA.wav";				vol = 80;			};
				instance CS_IHO_WO_ME					(C_SFX_DEF)	{file= "CS_IHO_WO_ME.wav";				vol = 80;			};
				instance CS_IHO_WO_WO					(C_SFX_DEF)	{file= "CS_IHO_WO_WO.wav";				vol = 80;			};
				instance CS_IHO_WO_ST					(C_SFX_DEF)	{file= "CS_IHO_WO_ST.wav";				vol = 80;			};
				instance CS_IHO_WO_WA					(C_SFX_DEF)	{file= "CS_IHO_WO_WA.wav";	    		vol = 80;			};
				instance CS_IHO_WO_EA					(C_SFX_DEF)	{file= "CS_IHO_WO_EA.wav";	    		vol = 80;			};
				instance CS_IHO_WO_SA					(C_SFX_DEF)	{file= "CS_IHO_WO_SA.wav";	    		vol = 80;			};			
				instance CS_IHO_ST_ME					(C_SFX_DEF)	{file= "CS_IHO_ST_ME.wav";		       	vol = 80;			};
				instance CS_IHO_ST_WO					(C_SFX_DEF)	{file= "CS_IHO_ST_WO.wav";	    		vol = 80;			};
				instance CS_IHO_ST_ST					(C_SFX_DEF)	{file= "CS_IHO_ST_ST.wav";				vol = 80;			};
				instance CS_IHO_ST_WA					(C_SFX_DEF)	{file= "CS_IHO_ST_WA.wav";				vol = 80;			};
				instance CS_IHO_ST_EA					(C_SFX_DEF)	{file= "CS_IHO_ST_EA.wav";				vol = 80;			};
				instance CS_IHO_ST_SA					(C_SFX_DEF)	{file= "CS_IHO_ST_SA.wav";				vol = 80;			};
		                                                                                        		                		
/* MAM */	//											faust trifft auf monster/human	        		                		
				instance CS_MAM							(C_SFX_DEF)	{file= "CS_IAM_UD_FL_01.wav";			vol = 50;			};
				instance CS_MAM_A1						(C_SFX_DEF)	{file= "CS_IAM_UD_FL_02.wav";			vol = 50;			};
				instance CS_MAM_A2						(C_SFX_DEF)	{file= "CS_IAM_UD_FL_03.wav";			vol = 50;			};

//				++++++++++++++++++++++++++++++++++++++++test statt CS_MAM_UD_FL_01
				                    			                                                	                 		
/* IHI */	                        			                                                		             		
				instance CS_IHI							(C_SFX_DEF)	{file= "CS_IAI_ME_ME_01.wav";			vol = 80;			};
		                            			                                                		             		
		                            			                                                		
		                                                                                        		
////////////////////                                                                             
// Aktions-SFX                                                                                   
////////////////////                                                                             
                                                                                                 
				instance INV_OPEN     					(C_SFX_DEF) {file="inv_open.wav"; 					vol = 100;			};
				instance INV_CLOSE    					(C_SFX_DEF) {file="inv_close.wav"; 		            vol = 100;			};
				instance INV_CHANGE   					(C_SFX_DEF) {file="inv_change.wav"; 				vol = 127;			};
				instance TRADE_OPEN   					(C_SFX_DEF) {file="inv_open.wav"; 					vol = 100;			};
				instance TRADE_CLOSE  					(C_SFX_DEF) {file="inv_close.wav";					vol = 100;			};
				instance PROFILE_OPEN 					(C_SFX_DEF) {file="inv_open.wav";					vol = 100;			};
				instance PROFILE_CLOSE					(C_SFX_DEF) {file="inv_close.wav";					vol = 100;			};
				instance ASK_YES      					(C_SFX_DEF) {file="nosound.wav";					vol = 0;			};
				instance ASK_NO       					(C_SFX_DEF) {file="nosound.wav";					vol = 0;			};
				instance HELP_ON      					(C_SFX_DEF) {file="nosound.wav";					vol = 0;			};
				instance HELP_OFF     					(C_SFX_DEF) {file="nosound.wav";		            vol = 0;			};
		                                    		                                                                    		
		                                    		                                                                    		
		                                    		                                            			            		
////////////////////                        		                                                        
// VOB-SFX                                  		                                            			
////////////////////                                                                            			
	                                                                                        			
				instance TORCH_ENLIGHT  				(C_SFX_DEF) {file= "torch_enlight.wav";									};
				instance TORCH_BURN   					(C_SFX_DEF) {file= "torch_burning.wav";									};
				instance CAMPFIRE_BURN					(C_SFX_DEF) {file= "campfire_02.wav";						   loop=1;	};
				instance BOILING_POT					(C_SFX_DEF) {file= "boiling_pot.wav";						   loop=1;	};
				instance FIRE_LARGE						(C_SFX_DEF) {file= "fire_large01.wav";				vol = 100;			};
				instance FIRE_MEDIUM					(C_SFX_DEF) {file= "fire_medium01.wav";				vol = 100;			};
				instance FIRE_SMALL						(C_SFX_DEF) {file= "fire_small01.wav";				vol = 100;			};
		// 		instance WATERFALL    					(C_SFX_DEF) {file= "WATERFALL.wav";						       loop=1;	};
		// 		instance FOUNTAIN     					(C_SFX_DEF) {file= "FOUNTAIN.wav"; 							   loop=1;	};
		                                    		                                            			
		                                    		                                            			
////////////////////                        		                                            			
// Ambient-SFX                              		
////////////////////                        		
		                                    		
		// 		instance AMBIENT_WINDYCAVE  			(C_SFX_DEF) {file= "AMBIENT;WINDYCAVE.wav";					   loop=1;	};
		// 		instance AMBIENT_UNDERWATER 			(C_SFX_DEF) {file= "AMBIENT;UNDERWATER.wav"; 				   loop=1;	};
		// 		instance AMBIENT_NIGHTMEADOW			(C_SFX_DEF) {};
		// 		instance AMBIENT_DARKNIGHT  			(C_SFX_DEF) {};
		// 		instance AMBIENT_SUNRISE    			(C_SFX_DEF) {file= "AMBIENT;SUNRISE.wav"; 					   loop=1;	};
		// 		instance AMBIENT_RAIN       			(C_SFX_DEF) {file= "AMBIENT;RAIN.wav"; 						   loop=1;	};
		// 		instance AMBIENT_MINE	    			(C_SFX_DEF) {file= "AMB;MINE.wav"; 							   loop=1;	};
                                                	
                                                	

////////////////////
// Skript-SFX
////////////////////
		
		// 		instance CHEST_OPEN    					(C_SFX_DEF) {file= "CHEST;OPEN.wav";									};
		// 		instance CHEST_CLOSE   					(C_SFX_DEF) {file= "CHEST;CLOSE.wav";		                			};
		// 		instance BIGCHEST_OPEN 					(C_SFX_DEF) {file= "BIGCHEST;OPEN.wav";									};
		// 		instance BIGCHEST_CLOSE					(C_SFX_DEF) {file= "BIGCHEST;CLOSE.wav";								};
		// 		instance LEVEL_USE     					(C_SFX_DEF) {};                             				
		// 		instance PORTCULLI_UP  					(C_SFX_DEF) {file= "PORTCULLI;UP.wav";									};
		// 		instance PORTCULLI_DOWN					(C_SFX_DEF) {file= "PORTCULLI;DOWN.wav";								};
		// 		instance PORTCULLI_FALL					(C_SFX_DEF) {file= "PORTCULLI;FALL.wav";								};
		// 		instance STONEHEAP_USE 					(C_SFX_DEF) {file= "STONEHEAP;USE.wav";									};
		// 		instance KEY_OPEN      					(C_SFX_DEF) {file= "KEY;OPEN.wav";										};
		// 		instance KEY_CLOSE     					(C_SFX_DEF) {file= "KEY;CLOSE.wav";			                			};
		                                    		                                                                
		                                    		                                                                
		                                    		                                                				
////////////////////                        		                                                                
// Sprachsamples                            		                                                				
////////////////////                                                                                				
                                                                                                    				
// Human_Deutsch                                                                                    				
                                                                                                    				
                                                                                                    				
                                                                                                    				
// ***********************                                                                          				
// Carsten - Magiesounds                                                                            				
// ***********************                                                                          				
				instance TMAG_TEST						(C_SFX_DEF) {file= "magic_1.wav";							   loop=1;	};          				
				instance TMAG_OPEN						(C_SFX_DEF) {file= "magic_2.wav";							   loop=1;	};          				
				instance TMAG_INIT						(C_SFX_DEF) {file= "magic_3.wav";										};              				
				instance TMAG_INVESTNEXT				(C_SFX_DEF) {file= "magic_4.wav";										};          				
				instance TMAG_CAST						(C_SFX_DEF) {file= "magic_15.wav";					vol = 50;			};          				
				instance TMAG_COLLIDE					(C_SFX_DEF) {file= "magic_11.wav";										};
				instance TMAG_STOP						(C_SFX_DEF) {file= "magic_7.wav";										};
		
				instance FB_INV1						(C_SFX_DEF) {file= "key01.wav";											};
				instance FB_INV2						(C_SFX_DEF) {file= "key02.wav";											};
				instance FB_CAST						(C_SFX_DEF) {file= "flyloop.wav";							   loop=1;	};
				instance FB_COLLIDE						(C_SFX_DEF) {file= "explosion.wav";										};

				instance SPELL_LIGHTNING_CAST			(C_SFX_DEF) {file= "lightning_spell_cast.wav"; 				   loop=1;	};
	
// ***********************
// Carsten - Menusounds
// ***********************
				instance MENU_BROWSE					(C_SFX_DEF) {file= "inv_change.wav";				vol = 127; 			};
				instance MENU_SELECT					(C_SFX_DEF) {file= "inv_open.wav";					vol = 127; 			};
				instance MENU_ESC						(C_SFX_DEF) {file= "inv_close.wav";					vol = 127; 			};

// ***********************
// Bert - Menusounds
// ***********************


// menu: multiplayer
				instance MENU_NET_GAME_FOUND			(C_SFX_DEF) {file= "eat_apple_bite_2.wav";			vol = 127; 			};
				instance MENU_NET_GAME_NOTFOUND			(C_SFX_DEF) {file= "spit_short.wav";				vol = 127; 			};

// menu: chatroom 
				instance MENU_NET_INFO_REQUEST			(C_SFX_DEF) {file= "doorknob01.wav";				vol = 127; 			};
				instance MENU_NET_PLAYER_ENTER			(C_SFX_DEF) {file= "doorknob03.wav";				vol = 127; 			};
				instance MENU_NET_PLAYER_LEAVE			(C_SFX_DEF) {file= "doorclose01.wav";				vol = 127; 			};
				instance MENU_NET_PLAYER_TIMEOUT		(C_SFX_DEF) {file= "pickore_1.wav";					vol = 127; 			};
				instance MENU_NET_PLAYER_CRCERROR		(C_SFX_DEF) {file= "pickore_1.wav";					vol = 127; 			};
				instance MENU_NET_PLAYER_CHANGE			(C_SFX_DEF) {file= "eat_apple_bite_2.wav";			vol = 127; 			};
				instance MENU_NET_GAME_START			(C_SFX_DEF) {file= "various_cast1.wav";				vol = 127; 			};

// ***** Ende von Carstens Part *****
				instance BLA23							(C_SFX_DEF) {file= "campfire_mono.wav";				vol = 127;  loop=1;	};



//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// EVENTS ////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////


//	Gates, Stonewalls, Traps
				instance GATE_START						(C_SFX_DEF) {file= "gate_start.wav";				vol = 127;			};
				instance GATE_LOOP						(C_SFX_DEF) {file= "gate_loop.wav";					vol = 127; 			};
				instance GATE_STOP						(C_SFX_DEF) {file= "gate_stop.wav";					vol = 127; 			};
				instance STONE_SMALL_START				(C_SFX_DEF) {file= "stone_small_start.wav";			vol = 105; 			};
				instance STONE_SMALL_LOOP				(C_SFX_DEF) {file= "stone_small_loop.wav";			vol = 105;			};
				instance STONE_SMALL_STOP				(C_SFX_DEF) {file= "stone_small_stop.wav";			vol = 105; 			};
				instance STONE_START					(C_SFX_DEF) {file= "stone_start.wav";				vol = 105;			};
				instance STONE_LOOP						(C_SFX_DEF) {file= "stone_loop.wav";				vol = 105;			};
				instance STONE_STOP						(C_SFX_DEF) {file= "stone_stop.wav";				vol = 105;			};
				instance SPEAR_START					(C_SFX_DEF) {file= "spear_start.wav";				vol = 110; 			};
				instance SPEAR_START_01					(C_SFX_DEF) {file= "spear_start_01.wav";			vol = 110; 			};
				instance SPEAR_STOP						(C_SFX_DEF) {file= "spear_stop.wav";				vol = 110; 			};



//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// WOODCHOPPIN MOBSI SFX (NYRAS PROLOGUE DEMAKE) /////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

				instance WOODCHOPPIN_NOISE				(C_SFX_DEF) {file= "SplitWoodFX1A.wav";				vol = 130;			};
				instance WOODCHOPPIN_NOISE_A1			(C_SFX_DEF) {file= "SplitWoodFX2A.wav";				vol = 130;			};
				instance WOODCHOPPIN_NOISE_A2			(C_SFX_DEF) {file= "SplitWoodFX3A.wav";				vol = 130;			};
				
				instance WOODCHOPPIN_NOISE2				(C_SFX_DEF) {file= "SplitWoodFX1B.wav";				vol = 130;			};
				instance WOODCHOPPIN_NOISE2_A1			(C_SFX_DEF) {file= "SplitWoodFX2B.wav";				vol = 130;			};
				instance WOODCHOPPIN_NOISE2_A2			(C_SFX_DEF) {file= "SplitWoodFX3B.wav";				vol = 130;			};
				
				instance WOODCHOPPIN_SPLIT				(C_SFX_DEF) {file= "SplitWoodFX1C.wav";				vol = 80;			};
				instance WOODCHOPPIN_SPLIT_A1			(C_SFX_DEF) {file= "SplitWoodFX2C.wav";				vol = 80;			};
				instance WOODCHOPPIN_SPLIT_A2			(C_SFX_DEF) {file= "SplitWoodFX3C.wav";				vol = 80;			};

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// SVM    ////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////


// AARGH
				instance SVM_1_AARGH					(C_SFX_DEF) {file= "svm_1_aargh_1.wav";				vol = 107;			};
				instance SVM_1_AARGH_1					(C_SFX_DEF) {file= "svm_1_aargh_2.wav";				vol = 107;			};				
				instance SVM_1_AARGH_2					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 107;			};				
				instance SVM_1_AARGH_3					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 107;			};				
				instance SVM_1_AARGH_4					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 107;			};				

				instance SVM_2_AARGH					(C_SFX_DEF) {file= "svm_2_aargh_1.wav";				vol = 107;			};				
				instance SVM_2_AARGH_1					(C_SFX_DEF) {file= "svm_2_aargh_2.wav";				vol = 107;			};				
				instance SVM_2_AARGH_2					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				
				instance SVM_2_AARGH_3					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				
				instance SVM_2_AARGH_4					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				

				instance SVM_3_AARGH					(C_SFX_DEF) {file= "svm_3_aargh_1.wav";				vol = 107;			};				
				instance SVM_3_AARGH_1					(C_SFX_DEF) {file= "svm_3_aargh_2.wav";				vol = 107;			};				
				instance SVM_3_AARGH_2					(C_SFX_DEF) {file= "svm_3_aargh_3.wav";				vol = 107;			};
				instance SVM_3_AARGH_3					(C_SFX_DEF) {file= "svm_3_aargh_3.wav";				vol = 107;			};				
				instance SVM_3_AARGH_4					(C_SFX_DEF) {file= "svm_3_aargh_3.wav";				vol = 107;			};				

				instance SVM_4_AARGH					(C_SFX_DEF) {file= "svm_4_aargh_1.wav";				vol = 107;			};
				instance SVM_4_AARGH_1					(C_SFX_DEF) {file= "svm_4_aargh_2.wav";				vol = 107;			};				
				instance SVM_4_AARGH_2					(C_SFX_DEF) {file= "svm_4_aargh_3.wav";				vol = 107;			};				
				instance SVM_4_AARGH_3					(C_SFX_DEF) {file= "svm_4_aargh_3.wav";				vol = 107;			};				
				instance SVM_4_AARGH_4					(C_SFX_DEF) {file= "svm_4_aargh_3.wav";				vol = 107;			};				

				instance SVM_5_AARGH					(C_SFX_DEF) {file= "svm_1_aargh_1.wav";				vol = 110;			};				
				instance SVM_5_AARGH_1					(C_SFX_DEF) {file= "svm_1_aargh_2.wav";				vol = 110;			};				
				instance SVM_5_AARGH_2					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 110;			};				
				instance SVM_5_AARGH_3					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 110;			};				
				instance SVM_5_AARGH_4					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 110;			};				

				instance SVM_6_AARGH					(C_SFX_DEF) {file= "svm_2_aargh_1.wav";				vol = 110;			};				
				instance SVM_6_AARGH_1					(C_SFX_DEF) {file= "svm_2_aargh_2.wav";				vol = 110;			};				
				instance SVM_6_AARGH_2					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 110;			};
				instance SVM_6_AARGH_3					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 110;			};				
				instance SVM_6_AARGH_4					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 110;			};				

				instance SVM_7_AARGH					(C_SFX_DEF) {file= "svm_3_aargh_1.wav";				vol = 110;			};
				instance SVM_7_AARGH_1					(C_SFX_DEF) {file= "svm_3_aargh_2.wav";				vol = 110;			};				
				instance SVM_7_AARGH_2					(C_SFX_DEF) {file= "svm_3_aargh_3.wav";				vol = 110;			};				
				instance SVM_7_AARGH_3					(C_SFX_DEF) {file= "svm_3_aargh_3.wav";				vol = 110;			};				
				instance SVM_7_AARGH_4					(C_SFX_DEF) {file= "svm_3_aargh_3.wav";				vol = 110;			};				

				instance SVM_8_AARGH					(C_SFX_DEF) {file= "svm_4_aargh_1.wav";				vol = 110;			};				
				instance SVM_8_AARGH_1					(C_SFX_DEF) {file= "svm_4_aargh_2.wav";				vol = 110;			};				
				instance SVM_8_AARGH_2					(C_SFX_DEF) {file= "svm_4_aargh_3.wav";				vol = 110;			};				
				instance SVM_8_AARGH_3					(C_SFX_DEF) {file= "svm_4_aargh_3.wav";				vol = 110;			};				
				instance SVM_8_AARGH_4					(C_SFX_DEF) {file= "svm_4_aargh_3.wav";				vol = 110;			};				

				instance SVM_9_AARGH					(C_SFX_DEF) {file= "svm_1_aargh_1.wav";				vol = 107;			};				
				instance SVM_9_AARGH_1					(C_SFX_DEF) {file= "svm_1_aargh_2.wav";				vol = 107;			};				
				instance SVM_9_AARGH_2					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 107;			};
				instance SVM_9_AARGH_3					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 107;			};				
				instance SVM_9_AARGH_4					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 107;			};				

				instance SVM_10_AARGH					(C_SFX_DEF) {file= "svm_2_aargh_1.wav";				vol = 107;			};
				instance SVM_10_AARGH_1					(C_SFX_DEF) {file= "svm_2_aargh_2.wav";				vol = 107;			};				
				instance SVM_10_AARGH_2					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				
				instance SVM_10_AARGH_3					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				
				instance SVM_10_AARGH_4					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				

				instance SVM_11_AARGH					(C_SFX_DEF) {file= "svm_3_aargh_1.wav";				vol = 107;			};				
				instance SVM_11_AARGH_1					(C_SFX_DEF) {file= "svm_3_aargh_2.wav";				vol = 107;			};				
				instance SVM_11_AARGH_2					(C_SFX_DEF) {file= "svm_3_aargh_3.wav";				vol = 107;			};				
				instance SVM_11_AARGH_3					(C_SFX_DEF) {file= "svm_3_aargh_3.wav";				vol = 107;			};				
				instance SVM_11_AARGH_4					(C_SFX_DEF) {file= "svm_3_aargh_3.wav";				vol = 107;			};				

				instance SVM_12_AARGH					(C_SFX_DEF) {file= "svm_4_aargh_1.wav";				vol = 107;			};				
				instance SVM_12_AARGH_1					(C_SFX_DEF) {file= "svm_4_aargh_2.wav";				vol = 107;			};				
				instance SVM_12_AARGH_2					(C_SFX_DEF) {file= "svm_4_aargh_3.wav";				vol = 107;			};
				instance SVM_12_AARGH_3					(C_SFX_DEF) {file= "svm_4_aargh_3.wav";				vol = 107;			};				
				instance SVM_12_AARGH_4					(C_SFX_DEF) {file= "svm_4_aargh_3.wav";				vol = 107;			};				

				instance SVM_13_AARGH					(C_SFX_DEF) {file= "svm_1_aargh_1.wav";				vol = 107;			};
				instance SVM_13_AARGH_1					(C_SFX_DEF) {file= "svm_1_aargh_2.wav";				vol = 107;			};				
				instance SVM_13_AARGH_2					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 107;			};				
				instance SVM_13_AARGH_3					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 107;			};				
				instance SVM_13_AARGH_4					(C_SFX_DEF) {file= "svm_1_aargh_3.wav";				vol = 107;			};				

				instance SVM_14_AARGH					(C_SFX_DEF) {file= "svm_2_aargh_1.wav";				vol = 107;			};				
				instance SVM_14_AARGH_1					(C_SFX_DEF) {file= "svm_2_aargh_2.wav";				vol = 107;			};				
				instance SVM_14_AARGH_2					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				
				instance SVM_14_AARGH_3					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				
				instance SVM_14_AARGH_4					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				

				instance SVM_15_AARGH					(C_SFX_DEF) {file= "svm_2_aargh_1.wav";				vol = 107;			};				
				instance SVM_15_AARGH_1					(C_SFX_DEF) {file= "svm_2_aargh_2.wav";				vol = 107;			};				
				instance SVM_15_AARGH_2					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				
				instance SVM_15_AARGH_3					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				
				instance SVM_15_AARGH_4					(C_SFX_DEF) {file= "svm_2_aargh_3.wav";				vol = 107;			};				


//	DEAD
				instance SVM_1_DEAD						(C_SFX_DEF) {file= "svm_1_dead.wav";				vol = 120;			};				
				instance SVM_2_DEAD						(C_SFX_DEF) {file= "svm_2_dead.wav";				vol = 120;			};				
				instance SVM_3_DEAD						(C_SFX_DEF) {file= "svm_3_dead.wav";				vol = 120;			};				
				instance SVM_4_DEAD						(C_SFX_DEF) {file= "svm_1_dead.wav";				vol = 120;			};				
				instance SVM_5_DEAD						(C_SFX_DEF) {file= "svm_2_dead.wav";				vol = 120;			};				
				instance SVM_6_DEAD						(C_SFX_DEF) {file= "svm_3_dead.wav";				vol = 120;			};				
				instance SVM_7_DEAD						(C_SFX_DEF) {file= "svm_1_dead.wav";				vol = 120;			};				
				instance SVM_8_DEAD						(C_SFX_DEF) {file= "svm_2_dead.wav";				vol = 120;			};				
				instance SVM_9_DEAD						(C_SFX_DEF) {file= "svm_3_dead.wav";				vol = 120;			};				
				instance SVM_10_DEAD					(C_SFX_DEF) {file= "svm_1_dead.wav";				vol = 120;			};				
				instance SVM_11_DEAD					(C_SFX_DEF) {file= "svm_2_dead.wav";				vol = 120;			};				
				instance SVM_12_DEAD					(C_SFX_DEF) {file= "svm_3_dead.wav";				vol = 120;			};				
				instance SVM_13_DEAD					(C_SFX_DEF) {file= "svm_1_dead.wav";				vol = 120;			};				
				instance SVM_14_DEAD					(C_SFX_DEF) {file= "svm_2_dead.wav";				vol = 120;			};				
				instance SVM_15_DEAD					(C_SFX_DEF) {file= "svm_2_dead.wav";				vol = 120;			};				

//	BERZERK
				instance SVM_1_BERZERK					(C_SFX_DEF) {file= "svm_1_berzerk.wav";				vol = 110;			};				
				instance SVM_2_BERZERK					(C_SFX_DEF) {file= "svm_2_berzerk.wav";				vol = 110;			};				
				instance SVM_3_BERZERK					(C_SFX_DEF) {file= "svm_3_berzerk.wav";				vol = 110;			};				
				instance SVM_4_BERZERK					(C_SFX_DEF) {file= "svm_1_berzerk.wav";				vol = 110;			};				
				instance SVM_5_BERZERK					(C_SFX_DEF) {file= "svm_2_berzerk.wav";				vol = 110;			};				
				instance SVM_6_BERZERK					(C_SFX_DEF) {file= "svm_3_berzerk.wav";				vol = 110;			};				
				instance SVM_7_BERZERK					(C_SFX_DEF) {file= "svm_1_berzerk.wav";				vol = 110;			};				
				instance SVM_8_BERZERK					(C_SFX_DEF) {file= "svm_2_berzerk.wav";				vol = 110;			};				
				instance SVM_9_BERZERK					(C_SFX_DEF) {file= "svm_3_berzerk.wav";				vol = 110;			};				
				instance SVM_10_BERZERK					(C_SFX_DEF) {file= "svm_1_berzerk.wav";				vol = 110;			};				
				instance SVM_11_BERZERK					(C_SFX_DEF) {file= "svm_2_berzerk.wav";				vol = 110;			};				
				instance SVM_12_BERZERK					(C_SFX_DEF) {file= "svm_3_berzerk.wav";				vol = 110;			};				
				instance SVM_13_BERZERK					(C_SFX_DEF) {file= "svm_1_berzerk.wav";				vol = 110;			};				
				instance SVM_14_BERZERK					(C_SFX_DEF) {file= "svm_2_berzerk.wav";				vol = 110;			};				
				instance SVM_15_BERZERK					(C_SFX_DEF) {file= "svm_3_berzerk.wav";				vol = 110;			};				

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// CAMERA END SFX (NYRAS PROLOGUE DEMAKE) ////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

				instance NyrasDemoExtro_Music				(C_SFX_DEF) {file= "NyrasDemoExtro_Music_02.wav";				vol = 130;			};


