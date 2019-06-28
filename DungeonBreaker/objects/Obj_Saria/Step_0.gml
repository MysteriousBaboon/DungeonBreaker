event_inherited()
if (Player == 1) 
	{
		if(State == Scr_SariaP1_Movement) 	Scr_SariaP1_Movement();										
		if(State == Scr_SariaP1_LeftSpell)	Scr_SariaP1_LeftSpell();
		if(State == Scr_SariaP1_RightSpell)Scr_SariaP1_RightSpell();
		if(State == Scr_SariaP1_MainSpell)Scr_SariaP1_MainSpell();
		if(State == Scr_SariaP1_DodgeSpell)Scr_SariaP1_DodgeSpell();		
	}
if (Player == 2) 
	{
		if(State == Scr_SariaP2_Movement) 	Scr_SariaP2_Movement();										
		if(State == Scr_SariaP2_LeftSpell)	Scr_SariaP2_LeftSpell();
		if(State == Scr_SariaP2_RightSpell)Scr_SariaP2_RightSpell();
		if(State == Scr_SariaP2_MainSpell)Scr_SariaP2_MainSpell();
		if(State == Scr_SariaP2_DodgeSpell)Scr_SariaP2_DodgeSpell();		
	}




if (cd >= 1)
{
	cd--;
}
if (invulnerability >= 1)
{
	invulnerability--;
}
