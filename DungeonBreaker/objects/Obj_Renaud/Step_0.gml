event_inherited()
if (Player == 1) 
	{
		if(State == Scr_RenaudP1_Movement)Scr_RenaudP1_Movement();										
		if(State == Scr_RenaudP1_LeftSpell)Scr_RenaudP1_LeftSpell();
		if(State == Scr_RenaudP1_RightSpell)Scr_RenaudP1_RightSpell();
		if(State == Scr_RenaudP1_MainSpell)Scr_RenaudP1_MainSpell();
		if(State == Scr_RenaudP1_DodgeSpell)Scr_RenaudP1_DodgeSpell();		
	}


if (Player == 2) 	
	{
		if(State == Scr_RenaudP2_Movement) 	Scr_RenaudP2_Movement();										
		if(State == Scr_RenaudP2_LeftSpell)	Scr_RenaudP2_LeftSpell();
		if(State == Scr_RenaudP2_RightSpell)Scr_RenaudP2_RightSpell();
		if(State == Scr_RenaudP2_MainSpell)Scr_RenaudP2_MainSpell();
		if(State == Scr_RenaudP2_DodgeSpell)Scr_RenaudP2_DodgeSpell();		
	}

if (cd >= 1)
{
	cd--;
}

if (invulnerability >= 1)
{
	invulnerability--;
}
