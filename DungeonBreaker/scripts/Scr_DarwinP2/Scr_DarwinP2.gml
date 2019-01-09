// S'assurer que tout ce stop bien
if (!UpMoveP2 && !DownMoveP2 && !LeftMoveP2 && !RightMoveP2)
	{
		image_speed = 0;
		image_index = 0;
	}


// Bouger vers le haut
if (UpMoveP2) 
	{
		image_speed = 1;
		y -= VerticalSpeed
		sprite_index = spr_Darwin_MovingUp;
	}

	
//Bouger vers le bas
if (DownMoveP2) 
	{
			image_speed = 1;
			y += VerticalSpeed
			sprite_index = spr_Darwin_MovingDown;
	}

	



//Bouger vers la gauche
if(LeftMoveP2)
	{
			image_speed = 1;
			x -= HorizontalSpeed
			sprite_index = spr_Darwin_MovingLeft;
	}

	


//Bouger vers la droite
if (RightMoveP2) 
	{
				image_speed = 1;
				x += HorizontalSpeed
				sprite_index = spr_Darwin_MovingRight;
	}	



