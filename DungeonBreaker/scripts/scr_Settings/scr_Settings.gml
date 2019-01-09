// Afficher les controls actuels
///////////////P1
draw_set_font(font1)
draw_text(100,180,LeftControlP1)
draw_text(100,290,RightControlP1)
draw_text(100,400,UpControlP1)
draw_text(100,500,DownControlP1)
draw_text(100,600,LeftSpellControlP1)
draw_text(100,700,RightSpellControlP1)
draw_text(100,800,EntryControlP1)
draw_text(550,180,LeftControlC1)
draw_text(550,290,RightControlC1)
draw_text(550,400,UpControlC1)
draw_text(550,500,DownControlC1)













// Gerer les images
/////////////P1
if(Settings1I == 0 && Settings1P == 0 )
	{
		draw_sprite(Spr_Settings_P1Control,1,200,50)
		if(keyboard_check_direct(ord(EntryControlP1)) && ControlSet == false)
		{
			ControlSet = true
			alarm[0] = 2*room_speed
			keyboard_key = ""
		}
				
				
	    if(ControlSet && keyboard_key != "") 
		{
		LeftControlP1 = chr(keyboard_key)
		ControlSet = false
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
	draw_sprite(Spr_Settings_P1Control,0,200,50)
	draw_sprite(Spr_Leave,15,800,1000)
	if(keyboard_check(ord(EntryControlP1)))room_goto(TitleScreen)
}




// Gerer les mouvements sur les settings
//////////P1

if(!ControlSet)
{
	if (keyboard_check_pressed(ord(DownControlP1)))
	{
		if (Settings1I ==8) Settings1I = -1;
		if (Settings1I < 9) Settings1I += 1; 
	}
}
if(!ControlSet)
{
	if (keyboard_check_pressed(ord(UpControlP1)))
	{
	if (Settings1I == 0) Settings1I = 9;
	if (Settings1I > 0) Settings1I -= 1; 
	}
}

if(!ControlSet)
{
	if (keyboard_check_pressed(ord(RightControlP1)))
	{
		if (Settings1P < 2) Settings1P++;
		if (Settings1P == 2) Settings1P = 0; 	
	}
}
if(!ControlSet)
{
	if (keyboard_check_pressed(ord(LeftControlP1)))
	{	
		if (Settings1P > -1) Settings1P-- 	
	
		if (Settings1P == -1) Settings1P = 1;	
	}
}
if (Settings1I == 6 && keyboard_check(ord(EntryControlP1))) room_goto(TitleScreen);

