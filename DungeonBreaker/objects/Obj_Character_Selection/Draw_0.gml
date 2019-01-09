if (p != 2 && p2 !=2) draw_sprite(Spr_Leave,1 ,300,500,)
if (p == 2 or p2 ==2) draw_sprite(Spr_Leave,2 ,300,500,)
draw_sprite_stretched(Spr_Darwin_Icon,image_index,300,300,100,100)
draw_sprite_stretched(Spr_Ivanhoe_Icon,image_index,400,300,100,100)
draw_sprite_stretched(Spr_Saria_Icon,image_index,500,300,100,100)




if (i == 0 && p == 0) draw_sprite_stretched(Spr_1B,image_index,300,300,100,100)
if (i == 1 && p == 0) draw_sprite_stretched(Spr_1B,image_index,400,300,100,100)
if (i == 2 && p == 0) draw_sprite_stretched(Spr_1B,image_index,500,300,100,100) 
if (i == 0 && p == 1) draw_sprite_stretched(Spr_1B,image_index,300,400,100,100)
if (i == 1 && p == 1) draw_sprite_stretched(Spr_1B,image_index,400,400,100,100)
if (i == 2 && p == 1) draw_sprite_stretched(Spr_1B,image_index,500,400,100,100)

if (room == Pvp_Character_Selection or Prologue_Local_Character_Selection or Prologue_Online_Character_Selection)
	{
		if (i2 == 0 && p2 == 0) draw_sprite_stretched(Spr_1R,image_index,300,300,100,100)
		if (i2 == 1 && p2 == 0) draw_sprite_stretched(Spr_1R,image_index,400,300,100,100)
		if (i2 == 2 && p2 == 0) draw_sprite_stretched(Spr_1R,image_index,500,300,100,100) 
		if (i2 == 0 && p2 == 1) draw_sprite_stretched(Spr_1R,image_index,300,400,100,100)
		if (i2 == 1 && p2 == 1) draw_sprite_stretched(Spr_1R,image_index,400,400,100,100)
		if (i2 == 2 && p2 == 1) draw_sprite_stretched(Spr_1R,image_index,500,400,100,100)
	}







