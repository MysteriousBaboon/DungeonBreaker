// S'assurer que tout ce stoCharacterSelec_Pbien
if (!global.UpMoveP1 && !global.DownMoveP1 && !global.LeftMoveP1 && !global.RightMoveP1)
	{
		image_speed = 0;
		image_index = 0;
	}

/// a tester
hspd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vspd = keyboard_check(ord("S")) - keyboard_check(ord("W"));
if(!place_meeting(x+hspd*spd,y,Obj_Gouffre ))
	{
		x+=hspd*spd;
	}
if(!place_meeting(x,y+vspd*spd,Obj_Gouffre ))
	{
		y+=vspd*spd;
	}	

///

// Bouger vers le haut
if (global.UpMoveP1) 
	{
		image_speed = 1;
		y -= VerticalSpeed
		sprite_index = spr_Darwin_MovingUp;
	}

//Bouger vers le bas
if (global.DownMoveP1) 
	{
			image_speed = 1;
			y += VerticalSpeed
			sprite_index = spr_Darwin_MovingDown;
	}
//Bouger vers la gauche
if(global.LeftMoveP1)
	{
			image_speed = 1;
			x -= HorizontalSpeed
			sprite_index = spr_Darwin_MovingLeft;
	}
//Bouger vers la droite
if (global.RightMoveP1) 
	{
				image_speed = 1;
				x += HorizontalSpeed
				sprite_index = spr_Darwin_MovingRight;
	}	
