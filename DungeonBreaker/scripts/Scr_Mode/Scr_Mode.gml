draw_sprite(Spr_Mode,image_index , 960 , 700)

if (mode1 == 0) draw_sprite(spr_pointeur,image_index,730,470) 
if (mode1 == 1) draw_sprite(spr_pointeur,image_index,730,620)
if (mode1 == 2) draw_sprite(spr_pointeur,image_index,730,780)
if (mode1 == 3) draw_sprite(spr_pointeur,image_index,730,920)

if (keyboard_check_pressed(ord(DownControlP1)))
{
	if (mode1 ==3) mode1 = -1
	if (mode1 < 3) mode1 += 1; 
}

if (keyboard_check_pressed(ord(UpControlP1)))
{
	if (mode1 == 0) mode1 = 4;
	if (mode1 > 0) mode1 -= 1; 
}

if (keyboard_check_pressed(ord(EntryControlP1)) && mode1 == 0) 
{
room_goto(Prologue_Solo_Character_Selection) 
}

if (keyboard_check_pressed(ord(EntryControlP1)) && mode1 == 3) 
{
room_goto(GameSelection) 
}
