if(global.CurrentPlace == "TitleScreen" or global.CurrentPlace == "Settings" or global.CurrentPlace == "TitleScreen_PVE")
	{
		if(keyboard_check_pressed(ord(global.LeftControlP1)))global.LeftMoveP1 = true;
		else global.LeftMoveP1 = false;
		if(keyboard_check_pressed(ord(global.DownControlP1)))global.DownMoveP1 = true
		else global.DownMoveP1 = false;
		if(keyboard_check_pressed(ord(global.RightControlP1)))global.RightMoveP1 = true
		else global.RightMoveP1 = false;
		if(keyboard_check_pressed(ord(global.UpControlP1)))global.UpMoveP1 = true
		else global.UpMoveP1 = false;
		if(keyboard_check_pressed(ord(global.EntryControlP1)))global.EntryP1 = true
		else global.EntryP1 = false;
	}
