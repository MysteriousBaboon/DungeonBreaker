event_inherited()
if (Player == 1) 
	{
		if(State == Scr_AshlaeP1_Movement) 	Scr_AshlaeP1_Movement();										
		if(State == Scr_AshlaeP1_LeftSpell)	Scr_AshlaeP1_LeftSpell();
		if(State == Scr_AshlaeP1_RightSpell)Scr_AshlaeP1_RightSpell();
		if(State == Scr_AshlaeP1_MainSpell)Scr_AshlaeP1_MainSpell();
		if(State == Scr_AshlaeP1_DodgeSpell)Scr_AshlaeP1_DodgeSpell();		
	}
if (Player == 2) 
	{
		if(State == Scr_AshlaeP2_Movement) 	Scr_AshlaeP2_Movement();										
		if(State == Scr_AshlaeP2_LeftSpell)	Scr_AshlaeP2_LeftSpell();
		if(State == Scr_AshlaeP2_RightSpell)Scr_AshlaeP2_RightSpell();
		if(State == Scr_AshlaeP2_MainSpell)Scr_AshlaeP2_MainSpell();
		if(State == Scr_AshlaeP2_DodgeSpell)Scr_AshlaeP2_DodgeSpell();		
	}




if (cd >= 1)
{
	cd--;
}
if (invulnerability >= 1)
{
	invulnerability--;
}
