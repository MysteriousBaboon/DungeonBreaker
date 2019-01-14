// S'assurer que tout ce stoCharacterSelec_Pbien
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
		sprite_index = Spr_Renaud_MovingUp;
	}

	
//Bouger vers le bas
if (DownMoveP2) 
	{
			image_speed = 1;
			y += VerticalSpeed
			sprite_index = Spr_Renaud_MovingDown;
	}

	



//Bouger vers la gauche
if(LeftMoveP2)
	{
			image_speed = 1;
			x -= HorizontalSpeed
			sprite_index = Spr_Renaud_MovingLeft;
	}

	


//Bouger vers la droite
if (RightMoveP2) 
	{
				image_speed = 1;
				x += HorizontalSpeed
				sprite_index = Spr_Renaud_MovingRight;
	}	


