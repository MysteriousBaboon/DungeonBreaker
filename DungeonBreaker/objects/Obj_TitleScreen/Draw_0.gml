///////////////////////////////// Script Title_Screen
if (global.CurrentPlace == "TitleScreen")
	{
		//Drawing the interface
		draw_sprite(spr_Titlescreen_Selection , 1 ,960 ,700);
		draw_sprite(spr_Titlescreen_Selection , 2 ,960 ,700);
		draw_sprite(spr_Titlescreen_Selection , 3 ,960 ,700);
		draw_sprite(spr_Titlescreen_Selection , 4 ,960 ,700);
		// Drawing the pointeur on the right place
		if (Title_Screen == 0) draw_sprite(spr_pointeur,image_index,730,470);
		if (Title_Screen == 1) draw_sprite(spr_pointeur,image_index,730,620);
		if (Title_Screen == 2) draw_sprite(spr_pointeur,image_index,730,780);
		if (Title_Screen == 3) draw_sprite(spr_pointeur,image_index,730,920);
		//Check Where the Pointeur is and where we should go when we press enter
		if (keyboard_check_pressed(ord(global.DownControlP1)))
			{
				if (Title_Screen ==3) Title_Screen = -1;
				if (Title_Screen < 3) Title_Screen += 1; 
			}
		if (keyboard_check_pressed(ord(global.UpControlP1)))
			{
				if (Title_Screen == 0) Title_Screen = 4;
				if (Title_Screen > 0) Title_Screen -= 1; 
			}
		if (keyboard_check_pressed(ord(global.EntryControlP1)) && Title_Screen == 0) 
			{
				global.CurrentPlace = "TitleScreen_PVE";
			}
		if (keyboard_check_pressed(ord(global.EntryControlP1)) && Title_Screen == 1 ) 
			{
				global.CurrentPlace = "TitleScreen_PVP";
			}
		if (keyboard_check_pressed(ord(global.EntryControlP1)) && Title_Screen == 2 ) 
			{
				global.CurrentPlace = "Settings";
			}
		if (keyboard_check_pressed(ord(global.EntryControlP1)) && Title_Screen == 3 )
			{
				game_end()
			}
	}
	////////////////////////////////////////////////////////////	Script Pve
if(global.CurrentPlace == "TitleScreen_PVE")
	{
		//Drawing the Interface for the pve and the pointeur
		draw_sprite(Spr_Prologue,image_index,960,700);
		if (Game_Selection == 0)draw_sprite(spr_pointeur,image_index,730,507);
		if (Game_Selection == 1)draw_sprite(spr_pointeur,image_index,730,662);
		if (Game_Selection == 2)draw_sprite(spr_pointeur,image_index,730,823);

		if (keyboard_check_pressed(ord(global.DownControlP1)))
			{
				if (Game_Selection == 2) Game_Selection = -1;
				if (Game_Selection < 2) Game_Selection += 1; 
			}
		if (keyboard_check_pressed(ord(global.UpControlP1)))
			{
				if (Game_Selection == 0) Game_Selection = 3;
				if (Game_Selection > 0) Game_Selection -= 1; 
			}
				if (Game_Selection == 2 && keyboard_check_pressed(global.EntryControlP1)) room_goto(TitleScreen);
				if (Game_Selection == 0 && keyboard_check_pressed(global.EntryControlP1)) room_goto(Mode)
	}






//////////////////////////////////////Settings
if (global.CurrentPlace == "Settings") 
	{
	
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
				if(keyboard_check(ord(global.EntryControlP1)))global.CurrentPlace = "TitleScreen";
			}

		if(!ControlSet)
			{
				if (keyboard_check_pressed(ord(global.DownControlP1)))
					{
						if (Settings1I ==8) Settings1I = -1;
						if (Settings1I < 9) Settings1I += 1; 
					}
			
				if (keyboard_check_pressed(ord(global.UpControlP1)))
					{
				if (Settings1I == 0) Settings1I = 9;
				if (Settings1I > 0) Settings1I -= 1; 
					}
		
				if (keyboard_check_pressed(ord(global.RightControlP1)))
					{
						if (Settings1P < 2) Settings1P++;
						if (Settings1P == 2) Settings1P = 0; 	
					}
				
				if (keyboard_check_pressed(ord(global.LeftControlP1)))
					{	
						if (Settings1P > -1) Settings1P--; 	
						if (Settings1P == -1) Settings1P = 1;	
					}
			}
			
		if (Settings1I == 6 && keyboard_check(ord(EntryControlP1)))global.CurrentPlace = "TitleScreen";
	}