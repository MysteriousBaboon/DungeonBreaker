//////////////////////////////////////Settings
if (global.CurrentPlace == "Settings")
	{
		//Draw sprite constant
		draw_sprite(Spr_Settings_Control,image_index,120,50);
		draw_sprite(Spr_Settings_Leave,image_index,120,70);
		
		//cas par cas en fonction de la pos
		if(SettingsI1 == 0)
			{
				draw_sprite(Spr_Settings_Cadre_Leave,image_index,120,50);
				if(global.EntryP1)
					{
						SettingsI1 = 0;
						global.CurrentPlace = "KeyRebinding"
					}
			}
		if(SettingsI1 == 1)
			{
				draw_sprite(Spr_Settings_Cadre_Leave,image_index,120,70);
				if(global.EntryP1)
					{
						global.CurrentPlace = "TitleScreen"
						global.EntryP1 = false;
					}
			}
			
		//Pouvoir bouger 	
		if (global.DownMoveP1 or global.DownMoveP2)
			{	
				if (SettingsI1 == 8 )SettingsI1 = -1;
				if (SettingsI1 >= -1 )SettingsI1 += 1;	
			}
		if (global.UpMoveP1 or global.UpMoveP2)
			{
				if (SettingsI1 == 0) SettingsI1 = 9;
				if (SettingsI1 > 0) SettingsI1 -= 1; 
			}
		
		
		
		
		
	}


/////////////////////////////////////KeyRebinding
if (global.CurrentPlace == "KeyRebinding") 
	{
		draw_text(50,0,SettingsI1)
		draw_text(60,0,SettingsP1)
		draw_sprite(Spr_Settings_Leave,image_index,150,140)
	
		if (global.RightMoveP1 or global.RightMoveP2)
			{
				if(SettingsI1 ==0)
				{
					if (SettingsP1 == 3) SettingsP1 = -1;
					if (SettingsP1 < 3) SettingsP1 += 1; 
				}
				else
				{
					if (SettingsP1 == 1) SettingsP1 = -1;
					if (SettingsP1 < 1) SettingsP1 += 1; 
				}
			}
		if (global.LeftMoveP1 or global.LeftMoveP2)
			{
				if(SettingsI1 ==0)
				{
					if (SettingsP1 == 0) SettingsP1 = 3;
					if (SettingsP1 > 0)  SettingsP1 -= 1; 
				}
				else
				{
					if (SettingsP1 == 0) SettingsP1 = 2;
					if (SettingsP1 > 0)  SettingsP1 -= 1; 
				}
			}
		if (global.DownMoveP1 or global.DownMoveP2)
			{	
				if (SettingsI1 == 0)SettingsP1 = 0;	
				if (SettingsI1 == 8 )SettingsI1 = -1;
				if (SettingsI1 >= -1 )SettingsI1 += 1;	
			
		
			}
		if (global.UpMoveP1 or global.UpMoveP2)
			{
				if (SettingsI1 == 0) SettingsI1 = 9;
				if (SettingsI1 > 0) SettingsI1 -= 1; 
			}
		
		
		
		if(SettingsI1 == 0)
			{
				draw_sprite(Spr_Settings_GameplayType2,image_index,40,40);
				if(global.GameplayTypeP1 == "Keyboard")
					{
						if(global.LeftMoveP1)
							{
								global.GameplayTypeP1 = "Controller";
								global.LeftMoveP1 = false;
							}
						if(global.RightMoveP1)
							{
								global.GameplayTypeP1 = "Mouse";	
								global.RightMoveP1 = false;
							}
					}
				if(global.GameplayTypeP1 == "Mouse")
					{
						if(global.LeftMoveP1)
							{
								global.GameplayTypeP1 = "Keyboard";
								global.LeftMoveP1 = false;
							}
						if(global.RightMoveP1)
							{
								global.GameplayTypeP1 = "Controller";		
								global.RightMoveP1 = false;
							}
					}
				if(global.GameplayTypeP1 == "Controller")
					{
						if(global.LeftMoveP1)
							{
								global.GameplayTypeP1 = "Mouse";
								global.LeftMoveP1 = false;
							}
						if(global.RightMoveP1)
							{
								global.GameplayTypeP1 = "Keyboard";		
								global.RightMoveP1 = false;
							}
					}
			}
		if(global.GameplayTypeP1 == "Keyboard")
			{
				draw_sprite(Spr_Settings_GameplayType,0,40,40)
			//Controles Clavier
				
			    if(SettingsI1 == 1 && SettingsP1 == 0)draw_sprite(Spr_Settings_Cadre,image_index,20,50)
				if(SettingsI1 == 1 && SettingsP1 == 1)draw_sprite(Spr_Settings_Cadre,image_index,50,50)
				if(SettingsI1 == 2 && SettingsP1 == 0)draw_sprite(Spr_Settings_Cadre,image_index,20,65)
				if(SettingsI1 == 2 && SettingsP1 == 1)draw_sprite(Spr_Settings_Cadre,image_index,50,65)
				if(SettingsI1 == 3 && SettingsP1 == 0)draw_sprite(Spr_Settings_Cadre,image_index,20,80)
				if(SettingsI1 == 3 && SettingsP1 == 1)draw_sprite(Spr_Settings_Cadre,image_index,50,80)
				if(SettingsI1 == 4 && SettingsP1 == 0)draw_sprite(Spr_Settings_Cadre,image_index,20,95)
				if(SettingsI1 == 4 && SettingsP1 == 1)draw_sprite(Spr_Settings_Cadre,image_index,50,95)
				if(SettingsI1 == 5 && SettingsP1 == 0)draw_sprite(Spr_Settings_Cadre,image_index,20,110)
				if(SettingsI1 == 5 && SettingsP1 == 1)draw_sprite(Spr_Settings_Cadre,image_index,50,110)
				if(SettingsI1 == 6 && SettingsP1 == 0)draw_sprite(Spr_Settings_Cadre,image_index,20,125)
				if(SettingsI1 == 6 && SettingsP1 == 1)draw_sprite(Spr_Settings_Cadre,image_index,50,125)
				if(SettingsI1 == 7 && SettingsP1 == 0)draw_sprite(Spr_Settings_Cadre,image_index,20,140)
				if(SettingsI1 == 7 && SettingsP1 == 1)draw_sprite(Spr_Settings_Cadre,image_index,50,140)
				if(SettingsI1 == 8 )
				{
					draw_sprite(Spr_Settings_Cadre_Leave,image_index,150,140)
					if(global.EntryP1)
						{
							global.CurrentPlace = "Settings";
							SettingsI1 = 0 ;
							SettingsP1 = 0 ;
							
						}
					}
				
				
				draw_text(20,50,chr(global.UpControlP1))
				draw_text(20,65,chr(global.DownControlP1))
				draw_text(20,80,chr(global.LeftControlP1))
				draw_text(20,95,chr(global.RightControlP1))
				draw_text(50,50,chr(global.UpControlC1))
				draw_text(50,65,chr(global.DownControlC1))
				draw_text(50,80,chr(global.LeftControlC1))
				draw_text(50,95,chr(global.RightControlC1))
				draw_text(20,110,chr(global.MainSpellControlP1))
				draw_text(20,125,chr(global.DodgeSpellControlP1))
				draw_text(50,110,chr(global.LeftSpellControlP1))
				draw_text(50,125,chr(global.RightSpellControlP1))
				draw_text(20,140,chr(global.SwapControlP1))
				draw_text(50,140,chr(global.EntryControlP1))
			
			}
		if(global.GameplayTypeP1 == "Mouse")
			{
				draw_sprite(Spr_Settings_GameplayType,1,40,40)
			}
		
		if(global.GameplayTypeP1 == "Controller")
			{
				draw_sprite(Spr_Settings_GameplayType,2,40,40)
			}
			
	}

///////////////////////////////// Script Title_Screen
if (global.CurrentPlace == "TitleScreen")
	{
	
		Game_Selection_PVE = 0;
	
		//Drawing the interface
		
		
		// Drawing the pointeur on the right place
		if (Title_Screen == 0) 
			{
				draw_sprite(spr_pointeur,image_index,110,115);
				draw_sprite(spr_Titlescreen_Selection , 0 ,80,143);
			}
		if (Title_Screen == 1) 
			{
				draw_sprite(spr_pointeur,image_index,142,115);
				draw_sprite(spr_Titlescreen_Selection , 1 ,80,143);
			}
		if (Title_Screen == 2) 
			{
				draw_sprite(spr_pointeur,image_index,174,115);
				draw_sprite(spr_Titlescreen_Selection , 2 ,80,143);
			}
		if (Title_Screen == 3) 
			{
				draw_sprite(spr_pointeur,image_index,206,115);
				draw_sprite(spr_Titlescreen_Selection , 3 ,80,143);
			}
		if (Title_Screen == 4) 
			{
				draw_sprite(spr_pointeur,image_index,238,115);
				draw_sprite(spr_Titlescreen_Selection , 4 ,80,143);
			}
		//Check Where the Pointeur is and where we should go when we press enter
		if (global.RightMoveP1 or global.RightMoveP2)
			{
				if (Title_Screen == 4) Title_Screen = -1;
				if (Title_Screen < 4) Title_Screen += 1; 
			}
		if (global.LeftMoveP1 or global.LeftMoveP2)
			{
				if (Title_Screen == 0) Title_Screen = 5;
				if (Title_Screen > 0) Title_Screen -= 1; 
			}
		if ((global.EntryP1 == true or global.EntryP2) && Title_Screen == 0) 
			{
				global.EntryP1 = false;
				global.EntryP2 = false;
				global.CurrentPlace = "TitleScreen_PVE";
			}
		if ((global.EntryP1 == true or global.EntryP2) && Title_Screen == 2) 
			{
				global.EntryP1 = false;
				global.EntryP2 = false;
				global.CurrentPlace = "TitleScreen_PVP";
			}
		if ((global.EntryP1 == true or global.EntryP2) && Title_Screen == 3 ) 
			{
				global.EntryP1 = false;
				global.EntryP1 = false;
				global.CurrentPlace = "Settings";
			}
		if ((global.EntryP1 == true or global.EntryP2) && Title_Screen == 4 )
			{
				game_end()
			}
	}
////////////////////////////////////////////////////////////	Script Pve
if(global.CurrentPlace == "TitleScreen_PVE")
	{	
		Title_Screen = 0;
		Multiplayer_PVE = 0;
		//Drawing the Interface for the pve and the pointeur
		if (Game_Selection_PVE == 0) 
			{
				draw_sprite(Spr_TitleScreen_Create , 0 ,100,143);
				draw_sprite(spr_pointeur,image_index,130,115);
			}
		if (Game_Selection_PVE  == 1)
			{
				draw_sprite(Spr_TitleScreen_Create , 1 ,100,143)
				draw_sprite(spr_pointeur,image_index,162,115);
			}
		if (Game_Selection_PVE  == 2) 
			{
				draw_sprite(Spr_TitleScreen_Create , 2 ,100,143)
				draw_sprite(spr_pointeur,image_index,194,115);
			}

		if (global.RightMoveP1 or global.RightMoveP2)
			{
				if (Game_Selection_PVE == 2) Game_Selection_PVE = -1;
				if (Game_Selection_PVE < 2) Game_Selection_PVE += 1; 
			}
		if (global.LeftMoveP1 or global.LeftMoveP2)
			{
				if (Game_Selection_PVE == 0) Game_Selection_PVE = 3;
				if (Game_Selection_PVE > 0) Game_Selection_PVE -= 1; 
			}
		if (Game_Selection_PVE == 2 && (global.EntryP1 == true or global.EntryP2))
			{
				global.EntryP1 = false;
				global.EntryP2 = false;
				global.CurrentPlace = "TitleScreen";
			}
		if (Game_Selection_PVE == 0 && (global.EntryP1 == true or global.EntryP2))
			{
				global.EntryP1 = false;
				global.EntryP2 = false;
				global.CurrentPlace = "NewPVE";
				
			}	
	}
	
	
	
	
if(global.CurrentPlace == "NewPVE")
	{
		Game_Selection_PVE = 0;
		//Drawing the Interface for the pve and the pointeur

		if (Multiplayer_PVE == 0)
			{
				draw_sprite(spr_pointeur,image_index,110,115);
				draw_sprite(Spr_TitleScreen_NumberOfPlayer , 0 ,80,143)
			}
		if (Multiplayer_PVE == 1)
			{
				draw_sprite(spr_pointeur,image_index,142,115);
				draw_sprite(Spr_TitleScreen_NumberOfPlayer , 1 ,80,143)
			}
		if (Multiplayer_PVE == 2)
			{
				draw_sprite(Spr_TitleScreen_NumberOfPlayer , 2 ,80,143)
				draw_sprite(spr_pointeur,image_index,174,115);
			}
		if (Multiplayer_PVE == 3)
			{
				draw_sprite(Spr_TitleScreen_NumberOfPlayer , 3 ,80,143)
				draw_sprite(spr_pointeur,image_index,206,115);
			}
		if (global.RightMoveP1 or global.RightMoveP2)
			{
				if (Multiplayer_PVE == 3) Multiplayer_PVE = -1;
				if (Multiplayer_PVE < 3) Multiplayer_PVE += 1; 
			}
		if (global.LeftMoveP1 or global.LeftMoveP2)
			{
				if (Multiplayer_PVE == 0) Multiplayer_PVE = 4;
				if (Multiplayer_PVE > 0) Multiplayer_PVE -= 1; 
			}
			
		if (Multiplayer_PVE == 0 && (global.EntryP1 == true or global.EntryP2))
			{
				alarm[1] = 3;
				room_goto(CharacterSelection);
				NewCurrentPlace = true;
				global.CurrentPlace = "CharacterSelection_PVE"
				global.MultiplayerType = 1;
				
			}		
		if (Multiplayer_PVE == 1 && (global.EntryP1 == true or global.EntryP2))
			{
				alarm[1] = 3;
				room_goto(CharacterSelection);
				NewCurrentPlace = true;
				global.CurrentPlace = "CharacterSelection_PVE"
				global.MultiplayerType = 2;
				
			}			
			
		if (Multiplayer_PVE == 3 && (global.EntryP1 == true or global.EntryP2))global.CurrentPlace = "TitleScreen_PVE";
		
	}




////////////////////////////////////////////////////////////	Script PVP
if(global.CurrentPlace == "TitleScreen_PVP")
	{	
		Title_Screen = 0;
		//Drawing the Interface for the pve and the pointeur
		draw_sprite(Spr_TitleScreenPVP,image_index,800,350);
		if (Game_Selection_PVP == 0)draw_sprite(spr_pointeur,image_index,730,507);
		if (Game_Selection_PVP == 1)draw_sprite(spr_pointeur,image_index,730,662);
		if (Game_Selection_PVP == 2)draw_sprite(spr_pointeur,image_index,730,823);

		if (global.DownMoveP1 or global.DownMoveP2)
			{
				if (Game_Selection_PVP == 2) Game_Selection_PVP = -1;
				if (Game_Selection_PVP < 2) Game_Selection_PVP += 1; 
			}
		if (global.UpMoveP1 or global.UpMoveP2)
			{
				if (Game_Selection_PVP == 0) Game_Selection_PVP = 3;
				if (Game_Selection_PVP > 0) Game_Selection_PVP -= 1; 
			}
		if (Game_Selection_PVP == 2 && (global.EntryP1 == true or global.EntryP2))global.CurrentPlace = "TitleScreen";
		if (Game_Selection_PVP == 0 && (global.EntryP1 == true or global.EntryP2))
			{
				
				room_goto(CharacterSelection)
				global.MultiplayerType = 2;
				global.CurrentPlace = "CharacterSelection_PVP";
		
			}	
	}


//Pve SelectionPerso Solo

if(global.CurrentPlace == "CharacterSelection_PVE" && NewCurrentPlace == false)
	{	
		if(CharacterSelec_P1 == 2 && global.EntryP1)room_goto(TitleScreen);
		if(CharacterSelec_P2 == 2 && global.EntryP2)room_goto(TitleScreen);
		if(CharacterSelec_I1 == 0 && CharacterSelec_P1 == 0 && global.EntryP1 && global.Player1_0 == 0)
			{
					global.Player1_0 = Obj_Darwin;
			}
		if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 0 && global.EntryP1 && global.Player1_0 == 0) 
			{
					global.Player1_0 = Obj_Ivanhoe;	
			}	
		if (CharacterSelec_I1 == 2 && CharacterSelec_P1 == 0 && global.EntryP1 && global.Player1_0 == 0) 
			{
					global.Player1_0 = Obj_Renaud;
			}
		if (CharacterSelec_I1 == 0 && CharacterSelec_P1 == 1 && global.EntryP1 && global.Player1_0 == 0) 
			{
					global.Player1_0 = Obj_Saria;
			}
		if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 1 && global.EntryP1 && global.Player1_0 == 0) 
			{
					global.Player1_0 = Obj_Ashlae;
			}	
		if(global.Player1_0 != 0)
			{
			
				if(CharacterSelec_I1 == 0 && CharacterSelec_P1 == 0 && global.EntryP1 && global.Player1_0 != Obj_Darwin)
					{
						global.Player1_1 = Obj_Darwin;
					}
				if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 0 && global.EntryP1 && global.Player1_0 != Obj_Ivanhoe) 
					{
						global.Player1_1 = Obj_Ivanhoe;	
					}	
				if (CharacterSelec_I1 == 2 && CharacterSelec_P1 == 0 && global.EntryP1 && global.Player1_0 != Obj_Renaud) 
					{
						global.Player1_1 = Obj_Renaud;
					}
				if (CharacterSelec_I1 == 0 && CharacterSelec_P1 == 1 && global.EntryP1 && global.Player1_0 != Obj_Saria) 
					{
						global.Player1_1 = Obj_Saria;
					}
				if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 1 && global.EntryP1 && global.Player1_0 != Obj_Ashlae) 
					{
						global.Player1_1 = Obj_Ashlae;
					}		
			}
			
			
			
		if(global.MultiplayerType == 1 && global.Player1_0 != 0 && global.Player1_1 != 0)room_goto(FirstLevel_Forest)
	}

	
// P2
if(global.MultiplayerType == 2)
	{
		if(global.CurrentPlace == "CharacterSelection_PVE" && NewCurrentPlace == false)
			{	
				if(CharacterSelec_P2 == 2 && global.EntryP1)room_goto(TitleScreen);
				if(CharacterSelec_P2 == 2 && global.EntryP1)room_goto(TitleScreen);
				if(CharacterSelec_I2 == 0 && CharacterSelec_P2 == 0 && global.EntryP2)
					{
					
						global.Player2_0 = Obj_Darwin;
					}
				if (CharacterSelec_I2 == 1 && CharacterSelec_P2 == 0 && global.EntryP2) 
					{
						global.Player2_0 = Obj_Ivanhoe;	
					}	
				if (CharacterSelec_I2 == 2 && CharacterSelec_P2 == 0 && global.EntryP2) 
					{
						global.Player2_0 = Obj_Renaud;
					}
				if (CharacterSelec_I2 == 0 && CharacterSelec_P2 == 1 && global.EntryP2) 
					{
						global.Player2_0 = Obj_Saria;
					}
				if (CharacterSelec_I2 == 1 && CharacterSelec_P2 == 1 && global.EntryP2) 
					{
					
						global.Player2_0 = Obj_Ashlae;
					}	
		if(global.Player2_0 != 0 && global.Player1_0 != 0)room_goto(FirstLevel_Forest);				
		}
	}

	
	

			
	

		
	
	
	
	
	
	
	
	
	
//Pvp Selection perso

if(global.CurrentPlace == "CharacterSelection_PVP" && NewCurrentPlace == false)
	{	
		
		if(CharacterSelec_P1 == 2 && global.EntryP1)room_goto(TitleScreen);
		if(CharacterSelec_P2 == 2 && global.EntryP2)room_goto(TitleScreen);
		if(CharacterSelec_I1 == 0 && CharacterSelec_P1 == 0 && global.EntryP1)
			{
					global.Player1_0 = Obj_Darwin;
			}
		if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 0 && global.EntryP1) 
			{
					global.Player1_0 = Obj_Ivanhoe;	
			}	
		if (CharacterSelec_I1 == 2 && CharacterSelec_P1 == 0 && global.EntryP1) 
			{
					global.Player1_0 = Obj_Renaud;
			}
		if (CharacterSelec_I1 == 0 && CharacterSelec_P1 == 1 && global.EntryP1) 
			{
					global.Player1_0 = Obj_Saria;
			}
		if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 1 && global.EntryP1) 
			{
					global.Player1_0 = Obj_Ashlae;
			}	
//P2
		if(CharacterSelec_I2 == 0 && CharacterSelec_P2 == 0 && global.EntryP2)
			{
				
					global.Player2_0 = Obj_Darwin;
			}
		if (CharacterSelec_I2 == 1 && CharacterSelec_P2 == 0 && global.EntryP2) 
			{
					global.Player2_0 = Obj_Ivanhoe;	
			}	
		if (CharacterSelec_I2 == 2 && CharacterSelec_P2 == 0 && global.EntryP2) 
			{
					global.Player2_0 = Obj_Renaud;
			}
		if (CharacterSelec_I2 == 0 && CharacterSelec_P2 == 1 && global.EntryP2) 
			{
					global.Player2_0 = Obj_Saria;
			}
		if (CharacterSelec_I2 == 1 && CharacterSelec_P2 == 1 && global.EntryP2) 
			{
					
					global.Player2_0 = Obj_Ashlae;
			}	
		if(global.Player2_0 != 0 && global.Player1_0 != 0)room_goto(Room_Pvp_1);	
	}
				
	
	

			
	

		
		
		
		
		
		
		
	




