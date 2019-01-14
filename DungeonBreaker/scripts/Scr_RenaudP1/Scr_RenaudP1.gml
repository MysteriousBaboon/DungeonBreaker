// S'assurer que tout ce stoCharacterSelec_Pbien
if (!UpMoveP1 && !DownMoveP1 && !LeftMoveP1 && !RightMoveP1)
	{
		image_speed = 0;
		image_index = 0;
	}

// Bouger vers le haut
if (UpMoveP1) 
	{
		image_speed = 1;
		y -= VerticalSpeed
		sprite_index = Spr_Renaud_MovingUp;
	}

//Bouger vers le bas
if (DownMoveP1) 
	{
			image_speed = 1;
			y += VerticalSpeed
			sprite_index = Spr_Renaud_MovingDown;
	}
//Bouger vers la gauche
if(LeftMoveP1)
	{
			image_speed = 1;
			x -= HorizontalSpeed
			sprite_index = Spr_Renaud_MovingLeft;
	}
//Bouger vers la droite
if (RightMoveP1) 
	{
				image_speed = 1;
				x += HorizontalSpeed
				sprite_index = Spr_Renaud_MovingRight;
	}	
if (LeftSpellP1)
	{
		
		if (cd == 0 )
			{
		
				
			}
	}
	


