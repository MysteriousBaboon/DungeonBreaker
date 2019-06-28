var ideal_image_angle = point_direction(x,y,Obj_Cursor1.x,Obj_Cursor1.y)

var dd = angle_difference(image_angle,ideal_image_angle)
image_angle -= min(abs(dd), 6) * sign(dd);
		


		sprite_index = Spr_DarwinMoving;
		var xaxis = (global.RightMoveP1 - global.LeftMoveP1);
		var yaxis = (global.DownMoveP1 - global.UpMoveP1);

		//get direction
		var dir = point_direction(0, 0, xaxis, yaxis);

		//get the length
		if (xaxis == 0 and yaxis = 0 )
			{
			   len = 0 ;
			}
		else 
			{
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

if (len == 0) image_index = 0;


if(global.LeftSpellP1 && LeftSpellCd == false)
	{
		State = Scr_DarwinP1_LeftSpell
	}

if(global.RightSpellP1 && RightSpellCd == false)
	{
		State = Scr_DarwinP1_RightSpell
	}
if(global.DodgeSpellP1 && DodgeSpellCd == false)
	{
		State = Scr_DarwinP1_DodgeSpell
	}
if(global.MainSpellP1 && MainSpellCd == false)
	{
		State = Scr_DarwinP1_MainSpell
	}

