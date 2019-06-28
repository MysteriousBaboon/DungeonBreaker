var xaxis = (global.RightMoveC1 - global.LeftMoveC1);
var yaxis = (global.DownMoveC1 - global.UpMoveC1);

//get direction
var dir = point_direction(0, 0, xaxis, yaxis);

//get the length
if (xaxis == 0 and yaxis = 0 )
{
    len = 0 ;
}else {
    len = global.Cursor1Speed; 
}

//hspd vspd
hspd = lengthdir_x (len, dir);
vspd = lengthdir_y (len, dir);

//move 

		x += hspd;
	

		y += vspd;
		
	


