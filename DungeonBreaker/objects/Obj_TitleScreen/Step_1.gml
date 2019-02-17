// Joueur 1
if (global.LeftMoveP1)
	{
		
		if (CharacterSelec_I1 > -1) CharacterSelec_I1--
		if (CharacterSelec_I1 == -1) CharacterSelec_I1 = 2
	}
	
if (global.UpMoveP1)
	{
		if (CharacterSelec_P1> -1) CharacterSelec_P1--
		if (CharacterSelec_P1== -1) CharacterSelec_P1= 2

	}
	
if (global.RightMoveP1 )
	{
		if (CharacterSelec_I1 < 3) CharacterSelec_I1++
		if (CharacterSelec_I1 == 3) CharacterSelec_I1 = 0

	}
	
if (global.DownMoveP1 )
	{
		if (CharacterSelec_P1< 3) CharacterSelec_P1++
		if (CharacterSelec_P1== 3) CharacterSelec_P1= 0
	}
	
if (global.LeftMoveP2 && global.Player2_0 == 0)
	{
		
		if (CharacterSelec_I2 > -1) CharacterSelec_I2--
		if (CharacterSelec_I2 == -1) CharacterSelec_I2 = 2
	}
	
if (global.UpMoveP2 && global.Player2_0 == 0)
	{
		if (CharacterSelec_P2> -1) CharacterSelec_P2--
		if (CharacterSelec_P2== -1) CharacterSelec_P2= 2

	}
	
if (global.RightMoveP2 && global.Player2_0 == 0)
	{
		if (CharacterSelec_I2 < 3) CharacterSelec_I2++
		if (CharacterSelec_I2 == 3) CharacterSelec_I2 = 0

	}
	
if (global.DownMoveP2 && global.Player2_0 == 0)
	{
		if (CharacterSelec_P2< 3) CharacterSelec_P2++
		if (CharacterSelec_P2== 3) CharacterSelec_P2= 0
	}	
	
	
	
	
	

if(room == TitleScreen && global.CurrentPlace == "CharacterSelection_PVP") global.CurrentPlace = "TitleScreen";