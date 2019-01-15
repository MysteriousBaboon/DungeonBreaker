//////////////////////////////////////Settings
if (global.CurrentPlace == "Settings") 
	{
		Title_Screen = 0;
		draw_set_font(font1)
		draw_text(100,180,global.LeftControlP1)
		draw_text(100,290,global.RightControlP1)
		draw_text(100,400,global.UpControlP1)
		draw_text(100,500,global.DownControlP1)
		draw_text(100,600,global.LeftSpellControlP1)
		draw_text(100,700,global.RightSpellControlP1)
		draw_text(100,800,global.EntryControlP1)
		draw_text(550,180,global.LeftControlC1)
		draw_text(550,290,global.RightControlC1)
		draw_text(550,400,global.UpControlC1)
		draw_text(550,500,global.DownControlC1)

		if(Settings1I == 0 && Settings1P == 0 )
			{
				draw_sprite(Spr_Settings_P1Control,1,200,50);
				if(keyboard_check_direct(ord(global.EntryControlP1)) && ControlSet == false)
					{
						ControlSet = true;
						alarm[0] = 2*room_speed;
						keyboard_key = "";
					}				
				if(ControlSet && keyboard_key != "") 
					{
						LeftControlP1 = chr(keyboard_key);
						ControlSet = false;
					}
			}		
		if(Settings1I == 0 && Settings1P == 1)draw_sprite(Spr_Settings_P1Control,2,200,50)
		if(Settings1I == 1 && Settings1P == 0)draw_sprite(Spr_Settings_P1Control,3,200,50)
		if(Settings1I == 1 && Settings1P == 1)draw_sprite(Spr_Settings_P1Control,4,200,50)
		if(Settings1I == 2 && Settings1P == 0)draw_sprite(Spr_Settings_P1Control,5,200,50)
		if(Settings1I == 2 && Settings1P == 1)draw_sprite(Spr_Settings_P1Control,6,200,50)
		if(Settings1I == 3 && Settings1P == 0)draw_sprite(Spr_Settings_P1Control,7,200,50)
		if(Settings1I == 3 && Settings1P == 1)draw_sprite(Spr_Settings_P1Control,8,200,50)
		if(Settings1I == 4 && Settings1P == 0)draw_sprite(Spr_Settings_P1Control,9,200,50)
		if(Settings1I == 4 && Settings1P == 1)draw_sprite(Spr_Settings_P1Control,10,200,50)
		if(Settings1I == 5 && Settings1P == 0)draw_sprite(Spr_Settings_P1Control,11,200,50)
		if(Settings1I == 5 && Settings1P == 1)draw_sprite(Spr_Settings_P1Control,12,200,50)
		if(Settings1I == 6 && Settings1P == 0)draw_sprite(Spr_Settings_P1Control,13,200,50)
		if(Settings1I == 6 && Settings1P == 1)draw_sprite(Spr_Settings_P1Control,14,200,50)
		if(Settings1I == 7 )draw_sprite(Spr_Settings_P1Control,15,200,50)
		if(Settings1I == 8 )
			{
				draw_sprite(Spr_Settings_P1Control,0,200,50);
				draw_sprite(Spr_Leave,15,800,1000);
				if(global.EntryP1)global.CurrentPlace = "TitleScreen";
			}

		if(!ControlSet)
			{
				if (global.DownMoveP1)
					{
						if (Settings1I ==8) Settings1I = -1;
						if (Settings1I < 9) Settings1I += 1; 
					}
			
				if (global.UpMoveP1)
					{
				if (Settings1I == 0) Settings1I = 9;
				if (Settings1I > 0) Settings1I -= 1; 
					}
		
				if (global.RightMoveP1)
					{
						if (Settings1P < 2) Settings1P++;
						if (Settings1P == 2) Settings1P = 0; 	
					}
				
				if (global.LeftMoveP1)
					{	
						if (Settings1P > -1) Settings1P--; 	
						if (Settings1P == -1) Settings1P = 1;	
					}
			}	
		if (Settings1I == 6 && global.EntryP1)global.CurrentPlace = "TitleScreen";
	}

///////////////////////////////// Script Title_Screen
if (global.CurrentPlace == "TitleScreen")
	{
	
		Game_Selection_PVE = 0;
		Settings1I = 0;
		Settings1P = 0;
		//Drawing the interface
		draw_sprite(spr_Titlescreen_Selection , 0 ,112,204);
		
		// Drawing the pointeur on the right place
		if (Title_Screen == 0) draw_sprite(spr_pointeur,image_index,144,140);
		if (Title_Screen == 1) draw_sprite(spr_pointeur,image_index,208,140);
		if (Title_Screen == 2) draw_sprite(spr_pointeur,image_index,270,140);
		if (Title_Screen == 3) draw_sprite(spr_pointeur,image_index,335,140);
		//Check Where the Pointeur is and where we should go when we press enter
		if (global.RightMoveP1 or global.RightMoveP2)
			{
				if (Title_Screen ==3) Title_Screen = -1;
				if (Title_Screen < 3) Title_Screen += 1; 
			}
		if (global.LeftMoveP1 or global.LeftMoveP2)
			{
				if (Title_Screen == 0) Title_Screen = 4;
				if (Title_Screen > 0) Title_Screen -= 1; 
			}
		if ((global.EntryP1 == true or global.EntryP2) && Title_Screen == 0) 
			{
				global.EntryP1 = false;
				global.EntryP2 = false;
				global.CurrentPlace = "TitleScreen_PVE";
			}
		if ((global.EntryP1 == true or global.EntryP2) && Title_Screen == 1 ) 
			{
				global.EntryP1 = false;
				global.EntryP2 = false;
				global.CurrentPlace = "TitleScreen_PVP";
			}
		if ((global.EntryP1 == true or global.EntryP2) && Title_Screen == 2 ) 
			{
				global.EntryP1 = false;
				global.EntryP1 = false;
				global.CurrentPlace = "Settings";
			}
		if ((global.EntryP1 == true or global.EntryP2) && Title_Screen == 3 )
			{
				game_end()
			}
	}
////////////////////////////////////////////////////////////	Script Pve
if(global.CurrentPlace == "TitleScreen_PVE")
	{	
		Title_Screen = 0;
		//Drawing the Interface for the pve and the pointeur
		draw_sprite(Spr_GameSelection,image_index,960,700);
		if (Game_Selection_PVE == 0)draw_sprite(spr_pointeur,image_index,730,507);
		if (Game_Selection_PVE == 1)draw_sprite(spr_pointeur,image_index,730,662);
		if (Game_Selection_PVE == 2)draw_sprite(spr_pointeur,image_index,730,823);

		if (global.DownMoveP1 or global.DownMoveP2)
			{
				if (Game_Selection_PVE == 2) Game_Selection_PVE = -1;
				if (Game_Selection_PVE < 2) Game_Selection_PVE += 1; 
			}
		if (global.UpMoveP1 or global.UpMoveP2)
			{
				if (Game_Selection_PVE == 0) Game_Selection_PVE = 3;
				if (Game_Selection_PVE > 0) Game_Selection_PVE -= 1; 
			}
		if (Game_Selection_PVE == 2 && (global.EntryP1 == true or global.EntryP2))global.CurrentPlace = "TitleScreen";
		if (Game_Selection_PVE == 0 && (global.EntryP1 == true or global.EntryP2))
			{
				global.CurrentPlace = "CharacterSelection_PVE";
				
			}	
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
				alarm[1] = 3;
				room_goto(CharacterSelection)
				global.CurrentPlace = "CharacterSelection_PVP";
				NewCurrentPlace = true;
			}	
	}


//Pve SelectionPerso Solo

if(global.CurrentPlace == "CharacterSelection_PVE" && NewCurrentPlace == false)
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

	}
// P2
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
	}
if(global.Player2_0 != 0 && global.Player1_0 != 0)room_goto(FirstLevel_Forest);		
	
	

			
	

		
	
	
	
	
	
	
	
	
	
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

	}
// P2
if(global.CurrentPlace == "CharacterSelection_PVP" && NewCurrentPlace == false)
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
	}
if(global.Player2_0 != 0 && global.Player1_0 != 0)room_goto(Room_Pvp_1);		
	
	

			
	

		
		
		
		
		
		
		
	




