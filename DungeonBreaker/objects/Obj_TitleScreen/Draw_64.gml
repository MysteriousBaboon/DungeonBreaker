

///////////////////////////////CharacterSelection
if(room == CharacterSelection )
	{
	// Character's Icon
		draw_sprite_stretched(Spr_Darwin_Icon,image_index,147,40,64,64)
		draw_sprite_stretched(Spr_Ivanhoe_Icon,image_index,211,40,64,64) 
		draw_sprite_stretched(Spr_Renaud_Icon,image_index,275,40,64,64)
		draw_sprite_stretched(Spr_Saria_Icon,image_index,147,124,64,64)
		draw_sprite_stretched(Spr_Ashlae_Icon,image_index,211,124,64,64) 
		draw_sprite_stretched(Spr_Random_Icon,image_index,275,124,64,64)
		
	//P1 Character Display
		if(global.Player1_0 == Obj_Darwin)draw_sprite_stretched(Spr_Darwin_Icon,image_index,12,62,64,64)
		if(global.Player1_0 == Obj_Ivanhoe)draw_sprite_stretched(Spr_Ivanhoe_Icon,image_index,12,62,64,64)
		if(global.Player1_0 == Obj_Renaud)draw_sprite_stretched(Spr_Renaud_Icon,image_index,12,62,64,64)
		if(global.Player1_0 == Obj_Saria)draw_sprite_stretched(Spr_Saria_Icon,image_index,12,62,64,64)
		if(global.Player1_0 == Obj_Ashlae)draw_sprite_stretched(Spr_Ashlae_Icon,image_index,12,62,64,64)
		draw_sprite_stretched(Spr_CharacterSelectionP1,image_index,0,50,84,176)
	//P1 Cursor	
		if (CharacterSelec_P1 != 2 && CharacterSelec_P2 != 2) draw_sprite(Spr_Leave,1 ,800,900)
		if (CharacterSelec_P1 == 2 or CharacterSelec_P2 == 2) draw_sprite(Spr_Leave,2 ,800,900)
		if (CharacterSelec_I1 == 0 && CharacterSelec_P1 == 0) draw_sprite_stretched(Spr_1B,image_index,147,40,64,64)
		if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 0) draw_sprite_stretched(Spr_1B,image_index,211,40,64,64)
		if (CharacterSelec_I1 == 2 && CharacterSelec_P1 == 0) draw_sprite_stretched(Spr_1B,image_index,275,40,64,64) 
		if (CharacterSelec_I1 == 0 && CharacterSelec_P1 == 1) draw_sprite_stretched(Spr_1B,image_index,147,124,64,64)
		if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 1) draw_sprite_stretched(Spr_1B,image_index,211,124,64,64)
		if (CharacterSelec_I1 == 2 && CharacterSelec_P1 == 1) draw_sprite_stretched(Spr_1B,image_index,275,124,64,64)			
	// If 2 Players
		if(global.MultiplayerType == 2)
		{
	//P2 Character Display
			if(global.Player2_0 == Obj_Darwin)draw_sprite_stretched(Spr_Darwin_Icon,image_index,406,62,64,64)
			if(global.Player2_0 == Obj_Ivanhoe)draw_sprite_stretched(Spr_Ivanhoe_Icon,image_index,406,62,64,64)
			if(global.Player2_0 == Obj_Renaud)draw_sprite_stretched(Spr_Renaud_Icon,image_index,406,62,64,64)
			if(global.Player2_0 == Obj_Saria)draw_sprite_stretched(Spr_Saria_Icon,image_index,406,62,64,64)
			if(global.Player2_0 == Obj_Ashlae)draw_sprite_stretched(Spr_Ashlae_Icon,image_index,406,62,64,64)		
			draw_sprite_stretched(Spr_CharacterSelectionP2,image_index,397,50,84,176)
				
	//P2 Cursor
			if (CharacterSelec_I2 == 0 && CharacterSelec_P2 == 0) draw_sprite_stretched(Spr_1R,image_index,147,40,64,64)
			if (CharacterSelec_I2 == 1 && CharacterSelec_P2 == 0) draw_sprite_stretched(Spr_1R,image_index,211,40,64,64)
			if (CharacterSelec_I2 == 2 && CharacterSelec_P2 == 0) draw_sprite_stretched(Spr_1R,image_index,275,40,64,64) 
			if (CharacterSelec_I2 == 0 && CharacterSelec_P2 == 1) draw_sprite_stretched(Spr_1R,image_index,147,124,64,64)
			if (CharacterSelec_I2 == 1 && CharacterSelec_P2 == 1) draw_sprite_stretched(Spr_1R,image_index,211,124,64,64)
			if (CharacterSelec_I2 == 2 && CharacterSelec_P2 == 1) draw_sprite_stretched(Spr_1R,image_index,275,124,64,64)
	//P1/2 Cursor		
			if (CharacterSelec_I1 == 0 && CharacterSelec_P1 == 0 && CharacterSelec_I2 == 0 && CharacterSelec_P2 == 0) draw_sprite_stretched(Spr_1BR,image_index,147,40,64,64)
			if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 0 && CharacterSelec_I2 == 1 && CharacterSelec_P2 == 0) draw_sprite_stretched(Spr_1BR,image_index,211,40,64,64)
			if (CharacterSelec_I1 == 2 && CharacterSelec_P1 == 0 && CharacterSelec_I2 == 2 && CharacterSelec_P2 == 0) draw_sprite_stretched(Spr_1BR,image_index,275,40,64,64) 
			if (CharacterSelec_I1 == 0 && CharacterSelec_P1 == 1 && CharacterSelec_I2 == 0 && CharacterSelec_P2 == 1) draw_sprite_stretched(Spr_1BR,image_index,147,124,64,64)
			if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 1 && CharacterSelec_I2 == 1 && CharacterSelec_P2 == 1) draw_sprite_stretched(Spr_1BR,image_index,211,124,64,64)
			if (CharacterSelec_I1 == 2 && CharacterSelec_P1 == 1 && CharacterSelec_I2 == 2 && CharacterSelec_P2 == 1) draw_sprite_stretched(Spr_1BR,image_index,275,124,64,64)
			
		}
		
	
	
		
	}



