draw_sprite(spr_Titlescreen_Selection , 1 ,960 ,700)
draw_sprite(spr_Titlescreen_Selection , 2 ,960 ,700)
draw_sprite(spr_Titlescreen_Selection , 3 ,960 ,700)
draw_sprite(spr_Titlescreen_Selection , 4 ,960 ,700)

if (title_screen == 0) draw_sprite(spr_pointeur,image_index,730,470) 
if (title_screen == 1) draw_sprite(spr_pointeur,image_index,730,620)
if (title_screen == 2) draw_sprite(spr_pointeur,image_index,730,780)
if (title_screen == 3) draw_sprite(spr_pointeur,image_index,730,920)


if (keyboard_check_pressed(ord(DownControlP1)))
{
	if (title_screen ==3) title_screen = -1
	if (title_screen < 3) title_screen += 1; 
}

if (keyboard_check_pressed(ord(UpControlP1)))
{
	if (title_screen == 0) title_screen = 4
	if (title_screen > 0) title_screen -= 1; 
}

if (keyboard_check_pressed(ord(EntryControlP1)) && title_screen == 0) 
{
room_goto(GameSelection) 
}
if (keyboard_check_pressed(ord(EntryControlP1)) && title_screen == 1 ) 
{
room_goto(Pvp_Character_Selection) 
}
if (keyboard_check_pressed(ord(EntryControlP1)) && title_screen == 2 ) room_goto(Settings)
if (keyboard_check_pressed(ord(EntryControlP1)) && title_screen == 3 ) game_end()