if(global.HealthPlayer1 <= 0) game_end()


if (global.GameplayTypeP1 == "Mouse")
		{
			//Curseur
			cursor_sprite = Spr_CursorMouse_1
			window_set_cursor(cr_none)
			Obj_Cursor1.x = mouse_x
			Obj_Cursor1.y = mouse_y
			//Déplacement
			if(keyboard_check(global.LeftControlP1))global.LeftMoveP1 = true;
			else global.LeftMoveP1 = false;
			if(keyboard_check(global.DownControlP1))global.DownMoveP1 = true
			else global.DownMoveP1 = false;
			if(keyboard_check(global.RightControlP1))global.RightMoveP1 = true
			else global.RightMoveP1 = false;
			if(keyboard_check(global.UpControlP1))global.UpMoveP1 = true
			else global.UpMoveP1 = false;
			//Ui 
			if(keyboard_check_pressed(global.EntryControlP1))global.EntryP1 = true
			else global.EntryP1 = false;
			if(keyboard_check_pressed(global.SwapControlP1))global.SwapP1 = true;
			//Spell
			if(mouse_check_button(mb_left))global.LeftSpellP1 = true
			else global.LeftSpellP1 = false;
			if(mouse_check_button(mb_right))global.RightSpellP1 = true
			if(mouse_check_button_released(mb_right)) global.RightSpellP1 = false;
			if(keyboard_check_pressed(global.DodgeSpellControlP1))global.DodgeSpellP1 = true
			else global.DodgeSpellP1 = false;
			if(keyboard_check_pressed(global.MainSpellControlP1))global.MainSpellP1 = true
			else global.MainSpellP1 = false;
			
			
			
			
			
		
			}
if(global.GameplayTypeP1 == "Keyboard")
	{
		if(keyboard_check(global.LeftControlP1))global.LeftMoveP1 = true;
		else global.LeftMoveP1 = false;
		if(keyboard_check(global.DownControlP1))global.DownMoveP1 = true
		else global.DownMoveP1 = false;
		if(keyboard_check(global.RightControlP1))global.RightMoveP1 = true
		else global.RightMoveP1 = false;
		if(keyboard_check(global.UpControlP1))global.UpMoveP1 = true
		else global.UpMoveP1 = false;
		if(keyboard_check_pressed(global.EntryControlP1))global.EntryP1 = true
		else global.EntryP1 = false;
		if(keyboard_check_pressed(global.LeftSpellControlP1))global.LeftSpellP1 = true
		else global.LeftSpellP1 = false;
		if(keyboard_check_pressed(global.RightSpellControlP1))global.RightSpellP1 = true
		else global.RightSpellP1 = false;
		if(keyboard_check(global.LeftControlC1)) global.LeftMoveC1 = true;
		else global.LeftMoveC1 = false;	
		if(keyboard_check(global.RightControlC1)) global.RightMoveC1 = true;
		else global.RightMoveC1 = false;		
		if(keyboard_check(global.UpControlC1)) global.UpMoveC1 = true;
		else global.UpMoveC1 = false;	
		if(keyboard_check(global.DownControlC1)) global.DownMoveC1 = true;
		else global.DownMoveC1 = false;	
		if(keyboard_check_pressed(global.SwapControlP1))global.SwapP1 = true;
		else global.SwapP1 = false;
	}
	
if(global.GameplayTypeP2 == "Keyboard")
	{
		if(keyboard_check(global.LeftControlP2))global.LeftMoveP2 = true;
		else global.LeftMoveP2 = false;
		if(keyboard_check(global.DownControlP2))global.DownMoveP2 = true
		else global.DownMoveP2 = false;
		if(keyboard_check(global.RightControlP2))global.RightMoveP2 = true
		else global.RightMoveP2 = false;
		if(keyboard_check(global.UpControlP2))global.UpMoveP2 = true
		else global.UpMoveP2 = false;
		if(keyboard_check(global.EntryControlP2))global.EntryP2 = true
		else global.EntryP2 = false;
		if(keyboard_check_pressed(global.LeftSpellControlP2))global.LeftSpellP2 = true
		else global.LeftSpellP2 = false;
		if(keyboard_check_pressed(global.RightSpellControlP2))global.RightSpellP2 = true
		else global.RightSpellP2 = false;
		if(keyboard_check(global.LeftControlC2)) global.LeftMoveC2 = true;
		else global.LeftMoveC2 = false;	
		if(keyboard_check(global.RightControlC2)) global.RightMoveC2 = true;
		else global.RightMoveC2 = false;		
		if(keyboard_check(global.UpControlC2)) global.UpMoveC2 = true;
		else global.UpMoveC2 = false;	
		if(keyboard_check(global.DownControlC2)) global.DownMoveC2 = true;
		else global.DownMoveC2 = false;	
	}
		
		
		
		
		
		