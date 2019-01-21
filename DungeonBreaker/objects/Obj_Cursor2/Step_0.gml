var xaxis = (global.RightMoveC2 - global.LeftMoveC2);
var yaxis = (global.DownMoveC2 - global.UpMoveC2);

//get direction
var dir = point_direction(0, 0, xaxis, yaxis);

//get the length
if (xaxis == 0 and yaxis = 0 )
{
    len = 0 ;
}else {
    len = global.Cursor2Speed; 
}

//hspd vspd
hspd = lengthdir_x (len, dir);
vspd = lengthdir_y (len, dir);

//move 

		x += hspd;
	

		y += vspd;
	


