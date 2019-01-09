
draw_sprite(Spr_ItemCadre,1,252,36)


if(Weapon == "Phase")draw_sprite(Spr_Phase,4,252,38)
if(Weapon == "Mur")draw_sprite(Spr_Weapon_Wall,1,284,38)
if(Weapon == "Shuriken")draw_sprite(Spr_Shuriken,0,284,38)
if(Weapon == "Sword")draw_sprite(Spr_Sword,0,252,38)
if(Weapon == "Gatling")draw_sprite(Spr_Gatling,1,268,38)
if(Weapon == "Mine")draw_sprite(Spr_Mine,0,284,38)
if(Weapon == "Shield")draw_sprite(Spr_Shield,1,268,38)
if(Weapon == "Boomerang")draw_sprite(Spr_Boomerang,1,252,38)
if(Weapon == "Masse")draw_sprite(Spr_Mace,1,268,38)
if(Weapon == "Dague")draw_sprite(Spr_Dague,1,268,38)


draw_sprite_stretched(Spr_Triangle_Number,1,20,500,24,24)
draw_text_colour(30, 225, " = " + string(global.NumberTriangle),c_black,c_white,c_white,c_black,1);
draw_sprite_stretched(Spr_Carre_Number,1,70,220,24,24)
draw_text_colour(100, 225," = " + string(global.NumberCarre),c_black,c_white,c_white,c_black,1);


