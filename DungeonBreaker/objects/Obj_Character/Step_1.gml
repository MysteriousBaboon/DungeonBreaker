if (Health == 0) 
	{
	global.NearestCheckPoint = instance_nearest(x,y,Obj_CheckPoint);
	global.DiedRoom = room;
	instance_destroy(id);
	room_goto(Game_Over);
	
	}
if(Invicibility == false)image_alpha = 1;	
if(Invicibility && p == 0)
	{
		image_alpha = 0.4
		alarm[0] = 3*room_speed
		p = 1;
	}

global.Shape = global.Carre + global.Circle + global.Triangle;
if(global.Shape == 3)Scr_WeaponCreation();
if(Weapon = "Phase")
	{
		Scr_Phase()	
	}
		if(Weapon = "Mur")
	{
		Scr_Mur()	
	}
if(Weapon = "Shuriken")
	{
		Scr_Shuriken()	
	
	}
if(Weapon = "Sword")
	{
		Scr_Sword()
		
	}

if(Weapon = "Gatling")
	{
		Scr_Gatling()
		
	}
if(Weapon = "Mine")
	{
		Scr_Mine()
		
	}
	
if(Weapon = "Shield")
	{
		Scr_Shield()
		
	}
if(Weapon = "Boomerang")
	{
		Scr_Boomerang()
		
		}
if(Weapon = "Masse")
		{
		Scr_Masse()
		
		}
if(Weapon = "Dague")
		{
		Scr_Dague()
		
		}
if(Weapon = "None")
		{
		Scr_Circle()
		}

if((global.NumberTriangle) > 0 && (global.Skin < 3))global.Skin = 2;
if(global.NumberCarre > 0)global.Skin = 3;



