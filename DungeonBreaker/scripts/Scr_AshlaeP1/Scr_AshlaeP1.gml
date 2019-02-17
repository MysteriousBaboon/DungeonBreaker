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
if (vspd > 0 && hspd == 0) 
	{
    sprite_index = Spr_Ashlae_MovingD;
	}
	
if (vspd > 0 && hspd > 0) 
	{
    sprite_index = Spr_Ashlae_MovingRD;
	}
if (vspd > 0 && hspd < 0) 
	{
    sprite_index = Spr_Ashlae_MovingDL;
	}
			
else if (vspd < 0 && hspd == 0) 
	{
    sprite_index = Spr_Ashlae_MovingU ;
	}
if (vspd < 0 && hspd > 0) 
	{
    sprite_index = Spr_Ashlae_MovingUR;
	}
if (vspd < 0 && hspd < 0) 
	{
    sprite_index = Spr_Ashlae_MovingLU;
	}
		


//horizontal sprite
if (hspd > 0 && vspd == 0) {
    sprite_index = Spr_Ashlae_MovingR;
}else if (hspd < 0 && vspd == 0) {
    sprite_index = Spr_Ashlae_MovingL ;
}  


	