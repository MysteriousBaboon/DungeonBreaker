event_inherited()
// Wake uCharacterSelec_Pand attack

if (distance_to_object(Obj_Player) <= 150)
	{
		
			var ex, ey;
			ex = instance_nearest(x, y, Obj_Player).x;
			ey = instance_nearest(x, y, Obj_Player).y;
	//il se reveille
	image_speed = 1
	//image_angle = point_direction(x,y,ex,ey) + 90
	// Si le cd == 0 alors il peut attaquer , il envoie les coordonnées du joueur le plus proche
	if (cd == 0) 
		{	
			sprite_index = spr_DragonTurtle_Attack
			
		
			with (instance_create_depth(x, y, 1 , Obj_Bubble))
			  {
				direction = point_direction(x, y, ex, ey) ;
				
			  }	
			  cd = 60
		}
			if (spr_DragonTurtle_Attack && image_index > image_number - 1) sprite_index = spr_DragonTurtle_Iddle;
	}
	
// Quand il a finis de se reveiller on swap
if (sprite_index == spr_DragonTurtle_WakingUp && image_index > image_number - 1) sprite_index =spr_DragonTurtle_Iddle


if (cd >= 1)
{
	cd--;
}
if (Health == 0) instance_destroy(id)