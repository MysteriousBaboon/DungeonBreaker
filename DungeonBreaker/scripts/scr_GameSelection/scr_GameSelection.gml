draw_sprite(Spr_Prologue,image_index,960,700)


if (Game_Selection == 0) draw_sprite(spr_pointeur,image_index,730,507)
if (Game_Selection == 1) draw_sprite(spr_pointeur,image_index,730,662)
if (Game_Selection == 2) draw_sprite(spr_pointeur,image_index,730,823)

if (keyboard_check_pressed(ord(DownControlP1)))
{
	if (Game_Selection ==2) Game_Selection = -1;
	if (Game_Selection < 2) Game_Selection += 1; 
}

if (keyboard_check_pressed(ord(UpControlP1)))
{
	if (Game_Selection == 0) Game_Selection = 3;
	if (Game_Selection > 0) Game_Selection -= 1; 
}
if (Game_Selection == 2 && keyboard_check_pressed(vk_enter)) room_goto(TitleScreen);
if (Game_Selection == 0 && keyboard_check_pressed(vk_enter)) room_goto(Mode)