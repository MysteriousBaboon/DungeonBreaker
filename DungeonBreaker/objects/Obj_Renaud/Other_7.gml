if(State == Scr_RenaudP1_LeftSpell)
	{	
	
		State = Scr_RenaudP1_Movement
	}
if(State == Scr_RenaudP1_RightSpell)
	{	
	
		State = Scr_RenaudP1_Movement
	}
if(State == Scr_RenaudP1_MainSpell)
	{
		instance_create_layer(x,y,"Projectile",Obj_Renaud_MainSpell);
		State = Scr_RenaudP1_Movement;	
	}