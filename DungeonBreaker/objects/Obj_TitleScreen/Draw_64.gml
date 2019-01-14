draw_text(10,10,global.CurrentPlace)
draw_text(20,20,global.Player1_0)

///////////////////////////////CharacterSelection
if(room == CharacterSelection )
	{
		if (CharacterSelec_P1 != 2 && CharacterSelec_P2 != 2) draw_sprite(Spr_Leave,1 ,800,900)
		if (CharacterSelec_P1 == 2 or CharacterSelec_P2 == 2) draw_sprite(Spr_Leave,2 ,800,900)
		if (CharacterSelec_I1 == 0 && CharacterSelec_P1 == 0) draw_sprite_stretched(Spr_1B,image_index,480,120,320,320)
		if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 0) draw_sprite_stretched(Spr_1B,image_index,800,120,320,320)
		if (CharacterSelec_I1 == 2 && CharacterSelec_P1 == 0) draw_sprite_stretched(Spr_1B,image_index,1120,120,320,320) 
		if (CharacterSelec_I1 == 0 && CharacterSelec_P1 == 1) draw_sprite_stretched(Spr_1B,image_index,480,480,320,320)
		if (CharacterSelec_I1 == 1 && CharacterSelec_P1 == 1) draw_sprite_stretched(Spr_1B,image_index,800,480,320,320)
		if (CharacterSelec_I1 == 2 && CharacterSelec_P1 == 1) draw_sprite_stretched(Spr_1B,image_index,1120,480,320,320)
		
		if (CharacterSelec_I2 == 0 && CharacterSelec_P2 == 0) draw_sprite_stretched(Spr_1R,image_index,480,120,320,320)
		if (CharacterSelec_I2 == 1 && CharacterSelec_P2 == 0) draw_sprite_stretched(Spr_1R,image_index,800,120,320,320)
		if (CharacterSelec_I2 == 2 && CharacterSelec_P2 == 0) draw_sprite_stretched(Spr_1R,image_index,1120,120,320,320) 
		if (CharacterSelec_I2 == 0 && CharacterSelec_P2 == 1) draw_sprite_stretched(Spr_1R,image_index,480,480,320,320)
		if (CharacterSelec_I2 == 1 && CharacterSelec_P2 == 1) draw_sprite_stretched(Spr_1R,image_index,800,480,320,320)
		if (CharacterSelec_I2 == 2 && CharacterSelec_P2 == 1) draw_sprite_stretched(Spr_1R,image_index,1120,480,320,320)			
	}




