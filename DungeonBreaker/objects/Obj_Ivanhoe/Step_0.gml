event_inherited()
if (Player == 1) 
	{
		if(State == Scr_IvanhoeP1_Movement)Scr_IvanhoeP1_Movement();										
		if(State == Scr_IvanhoeP1_LeftSpell)Scr_IvanhoeP1_LeftSpell();
		if(State == Scr_IvanhoeP1_RightSpell)Scr_IvanhoeP1_RightSpell();
		if(State == Scr_IvanhoeP1_MainSpell)Scr_IvanhoeP1_MainSpell();
		if(State == Scr_IvanhoeP1_DodgeSpell)Scr_IvanhoeP1_DodgeSpell();		
	}
if (Player == 2) 
	{
		if(State == Scr_IvanhoeP2_Movement)Scr_IvanhoeP2_Movement();										
		if(State == Scr_IvanhoeP2_LeftSpell)Scr_IvanhoeP2_LeftSpell();
		if(State == Scr_IvanhoeP2_RightSpell)Scr_IvanhoeP2_RightSpell();
		if(State == Scr_IvanhoeP2_MainSpell)Scr_IvanhoeP2_MainSpell();
		if(State == Scr_IvanhoeP2_DodgeSpell)Scr_IvanhoeP2_DodgeSpell();		
	}




if (cd >= 1)
{
	cd--;
}
if (invulnerability >= 1)
{
	invulnerability--;
}
