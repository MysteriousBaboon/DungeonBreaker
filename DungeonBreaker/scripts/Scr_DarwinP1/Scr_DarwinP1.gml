// S'assurer que tout ce stop bien
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
		sprite_index = spr_Darwin_MovingUp;
	}

//Bouger vers le bas
if (DownMoveP1) 
	{
			image_speed = 1;
			y += VerticalSpeed
			sprite_index = spr_Darwin_MovingDown;
	}
//Bouger vers la gauche
if(LeftMoveP1)
	{
			image_speed = 1;
			x -= HorizontalSpeed
			sprite_index = spr_Darwin_MovingLeft;
	}
//Bouger vers la droite
if (RightMoveP1) 
	{
				image_speed = 1;
				x += HorizontalSpeed
				sprite_index = spr_Darwin_MovingRight;
	}	
if (LeftSpellP1)
	{
		
		if (cd == 0 )
			{
			ds_list_add(Turret_list, instance_create_layer(x, y,"Character_Item", obj_turret)); // Insert your own values here
	
			if (ds_list_size(Turret_list) == 3)
				{
					with (Turret_list[| 0])
						{
					      instance_destroy();
						}

			  ds_list_delete(Turret_list, 0);
				}
			}
	}
	


