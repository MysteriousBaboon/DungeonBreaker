// S'assurer que tout ce stoCharacterSelec_Pbien
if (!global.UpMoveP1 && !global.DownMoveP1 && !global.LeftMoveP1 && !global.RightMoveP1)
	{
		image_speed = 0;
		image_index = 0;
	}

hspd = global.RightMoveP1 - global.LeftMoveP1;
vspd = global.DownMoveP1 - global.UpMoveP1;
if(!place_meeting(x+hspd*spd,y,Obj_Wall ))
	{
		x+=hspd*spd;
	}
if(!place_meeting(x,y+vspd*spd,Obj_Wall ))
	{
		y+=vspd*spd;
	}	

// Bouger vers le haut
if (global.UpMoveP1) 
	{
		image_speed = 1;
		sprite_index = spr_Darwin_MovingUp;
	}

//Bouger vers le bas
if (global.DownMoveP1) 
	{
			image_speed = 1;
			
			sprite_index = spr_Darwin_MovingDown;
	}
//Bouger vers la gauche
if(global.LeftMoveP1)
	{
			image_speed = 1;
			
			sprite_index = spr_Darwin_MovingLeft;
	}
//Bouger vers la droite
if (global.RightMoveP1) 
	{
				image_speed = 1;
			
				sprite_index = spr_Darwin_MovingRight;
	}	
if (global.LeftSpellP1)
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
	


