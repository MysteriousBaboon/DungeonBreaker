// S'assurer que tout ce stoCharacterSelec_Pbien
if (!global.UpMoveP2 && !global.DownMoveP2 && !global.LeftMoveP2 && !global.RightMoveP2)
	{
		image_speed = 0;
		image_index = 0;
	}


// Bouger vers le haut
if (global.UpMoveP2) 
	{
		image_speed = 1;
		y -= VerticalSpeed
		sprite_index = spr_Darwin_MovingUp;
	}

	
//Bouger vers le bas
if (global.DownMoveP2) 
	{
			image_speed = 1;
			y += VerticalSpeed
			sprite_index = spr_Darwin_MovingDown;
	}

	



//Bouger vers la gauche
if(global.LeftMoveP2)
	{
			image_speed = 1;
			x -= HorizontalSpeed
			sprite_index = spr_Darwin_MovingLeft;
	}

	


//Bouger vers la droite
if (global.RightMoveP2) 
	{
				image_speed = 1;
				x += HorizontalSpeed
				sprite_index = spr_Darwin_MovingRight;
	}	



