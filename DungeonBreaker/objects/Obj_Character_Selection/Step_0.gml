// Gerer les perso et les salles 
if(p  == 2 && keyboard_check(ord(EntryControlP1)))room_goto(TitleScreen)
if(p2 == 2 && keyboard_check(ord(EntryControlP2)))room_goto(TitleScreen)


//script pour le solo
if (room == Prologue_Solo_Character_Selection)
{
	if (i == 0 && p == 0 && keyboard_check(ord(EntryControlP1)))	
		{
		  Player1_0 = Obj_Darwin
			 
		}


	if (i == 1 && p == 0 && keyboard_check(ord(EntryControlP1))) 
		{
			 Player1_0 = Obj_Ivanhoe 
			
		}
		
		
	if (i == 2 && p == 0 && keyboard_check(ord(EntryControlP1))) 
		{
			 Player1_0 = Obj_Saria
			 
		}
	
	if(Player1_0 != 0)room_goto(Forest);
}
	
//Script pour la campagne Multi
	
	
// script pour le pvp
if (room == Pvp_Character_Selection)
{	
	if (i == 0 && p == 0 && keyboard_check(ord(EntryControlP1)))	
		{
		  Player1_0 = Obj_Darwin		 
		}
		
	if (i2 == 0 && p2 == 0 && keyboard_check(ord(EntryControlP2)))
		{
		  Player2_0 = Obj_Darwin
		}


	if (i == 1 && p == 0 && keyboard_check(ord(EntryControlP1))) 
		{
			  Player1_0 = Obj_Ivanhoe 
			
		}
		
	if (i2 == 1 && p2 == 0 && keyboard_check(ord(EntryControlP2)))
		{
			  Player2_0 = Obj_Ivanhoe 
			
		}
		
		
	if (i == 2 && p == 0 && keyboard_check(ord(EntryControlP1)))	
		{
		  Player1_0 = Obj_Saria
		 
		}	
		
	if (i2 == 2 && p2 == 0 && keyboard_check(ord(EntryControlP2)))	
		{
		  Player2_0 = Obj_Saria
		 
		}	
		
		
	if( Player1_0 != 0 && Player2_0 != 0)room_goto(Pvp_Lvl);
}

