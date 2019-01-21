var xaxis = (global.RightMoveP1 - global.LeftMoveP1);
var yaxis = (global.DownMoveP1 - global.UpMoveP1);

//get direction
var dir = point_direction(0, 0, xaxis, yaxis);

//get the length
if (xaxis == 0 and yaxis = 0 )
{
    len = 0 ;
}else {
    len = spd; 
}

//hspd vspd
hspd = lengthdir_x (len, dir);
vspd = lengthdir_y (len, dir);

//move 
if(!place_meeting(x+hspd,y ,Obj_Wall ))
	{
		x += hspd;
	}
if(!place_meeting(x,y+vspd,Obj_Wall ))
	{
		y += vspd;
	}	


//control the sprite

if (len == 0) image_index = 1;

// Vertical sprite
if (vspd > 0 ) {
    sprite_index = spr_Darwin_MovingDown;
    
}else if (vspd < 0 ) {
    sprite_index = spr_Darwin_MovingUp ;
}

//horizontal sprite
if (hspd > 0) {
    sprite_index = spr_Darwin_MovingRight;
}else if (hspd < 0) {
    sprite_index = spr_Darwin_MovingLeft ;
}  

if (global.LeftSpellP1)
	{
		
		if (cd == 0 )
			{
			ds_list_add(Turret_list, instance_create_layer(x, y,"Character_Item", Obj_Turret)); // Insert your own values here
	
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
	