event_inherited()
if (Player == 1) 
	{
		if(State == Scr_DarwinP1_Movement)Scr_DarwinP1_Movement();										
		if(State == Scr_DarwinP1_LeftSpell)Scr_DarwinP1_LeftSpell();
		if(State == Scr_DarwinP1_RightSpell)Scr_DarwinP1_RightSpell();
		if(State == Scr_DarwinP1_MainSpell)Scr_DarwinP1_MainSpell();
		if(State == Scr_DarwinP1_DodgeSpell)Scr_DarwinP1_DodgeSpell();		
	}
if (Player == 2) 
	{
		if(State == Scr_DarwinP2_Movement)Scr_DarwinP2_Movement();										
		if(State == Scr_DarwinP2_LeftSpell)Scr_DarwinP2_LeftSpell();
		if(State == Scr_DarwinP2_RightSpell)Scr_DarwinP2_RightSpell();
		if(State == Scr_DarwinP2_MainSpell)Scr_DarwinP2_MainSpell();
		if(State == Scr_DarwinP2_DodgeSpell)Scr_DarwinP2_DodgeSpell();		
	}




if (cd >= 1)
{
	cd--;
}
if (invulnerability >= 1)
{
	invulnerability--;
}
