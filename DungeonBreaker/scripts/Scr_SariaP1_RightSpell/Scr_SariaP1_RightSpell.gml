// Tir de fleche
if(Charge_Right < ChargeMax_Right)
	{
		Charge_Right++
	}

if(Charge_Right >= ChargeMax_Right)
	{
		instance_create_layer(x,y,"Projectile",Obj_Arrow);
		RightSpellCd = true;
		alarm[1] = 3 * room_speed;
		State = Scr_SariaP1_Movement;
	}
if(global.RightSpellP1 == false)
	{
		instance_create_layer(x,y,"Projectile",Obj_Arrow);
		RightSpellCd = true;
		alarm[1] = 3 * room_speed;
		State = Scr_SariaP1_Movement;
	}
