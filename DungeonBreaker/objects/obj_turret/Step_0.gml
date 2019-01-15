image_angle = point_direction(x,y ,Obj_Cursor1.x , Obj_Cursor1.y)
if (global.RightSpellP1)
	{
		if(cd == 0)
		{
		instance_create_layer(x,y,"Projectile",Obj_DarwinBullet)
			cd = 60
		}
	}

if (cd >= 1)
{
	cd--;
}
