
if(global.Skin == 1)sprite_index = Spr_Player_Beginning
if(global.Skin == 2)sprite_index = Spr_Player_Triangle
if(global.Skin == 3)sprite_index = Spr_Player_Final

hspd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vspd = keyboard_check(ord("S")) - keyboard_check(ord("W"));
if(!place_meeting(x+hspd*spd,y,Obj_Gouffre ))
	{
		x+=hspd*spd;
	}
if(!place_meeting(x,y+vspd*spd,Obj_Gouffre ))
	{
		y+=vspd*spd;
	}	



if(global.Shape < 4)
	{
	if((global.NumberTriangle - (global.Triangle + 1) ) >= 0) global.Triangle_Able = true;
	else global.Triangle_Able = false;
	if((global.NumberCarre - (global.Carre + 1) ) >= 0) global.Carre_Able = true;
	else global.Carre_Able = false;
	global.Circle_Able = true;
	}

if(global.Shape <= 3)
	{
		if(keyboard_check_pressed(ord("Q")) && global.Circle_Able)
		{
			if(global.Shape == 0)global.FirstShape = Spr_Circle_Use;	
			if(global.Shape == 1)global.SecondShape = Spr_Circle_Use;
			if(global.Shape == 2)global.ThirdShape = Spr_Circle_Use;
			global.Circle ++;
		}
		if(keyboard_check_pressed(ord("E")) && global.Carre_Able)
		{
			if(global.Shape == 0)global.FirstShape = Spr_Rectangle_Use;	
			if(global.Shape == 1)global.SecondShape = Spr_Rectangle_Use;
			if(global.Shape == 2)global.ThirdShape = Spr_Rectangle_Use;
			global.Carre ++;
		}
		if(keyboard_check_pressed(ord("R")) && global.Triangle_Able) 
		{
			if(global.Shape == 0)global.FirstShape = Spr_Triangle_Use;	
			if(global.Shape == 1)global.SecondShape = Spr_Triangle_Use;
			if(global.Shape == 2)global.ThirdShape = Spr_Triangle_Use;
			global.Triangle ++;
		}
	}
	
if(global.Shape >= 4 or global.Enter)
{
	global.Carre=0;
	global.Circle=0;
	global.Triangle=0;
	global.FirstShape = "Null";
	global.SecondShape = "Null";
	global.ThirdShape = "Null";
}




if(keyboard_check_direct(vk_enter)) global.Enter = true else global.Enter = false;



