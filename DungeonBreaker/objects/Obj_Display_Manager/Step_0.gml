///UnZoom window
if(global.UnzoomP1)
	{
		global.view_w = ideal_width * 2
		global.view_h = ideal_height * 2;
	}
else
	{
		global.view_w = ideal_width;
		global.view_h = ideal_height;
	}
	
//Follow Player
if(room != CharacterSelection &&  room != TitleScreen ) global.view_x = Obj_Player1.x - global.view_w/2;
if(room != CharacterSelection &&  room != TitleScreen ) global.view_y = Obj_Player1.y - global.view_h/2;

global.view_x=clamp(global.view_x,0,room_width-global.view_w);
global.view_y=clamp(global.view_y,0,room_height-global.view_h);