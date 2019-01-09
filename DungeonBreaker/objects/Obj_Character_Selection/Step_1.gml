// Joueur 1
if (keyboard_check_pressed(ord(LeftControlP1)))
	{
		if (i > -1) i--
		if (i == -1) i = 2
	}
	
if (keyboard_check_pressed(ord(UpControlP1)))
	{
		if (p > -1) p--
		if (p == -1) p = 2

	}
	
if (keyboard_check_pressed(ord(RightControlP1)))
	{
		if (i < 3) i++
		if (i == 3) i = 0

	}
	
if (keyboard_check_pressed(ord(DownControlP1)))
	{
		if (p < 3) p++
		if (p == 3) p = 0
	}




// Joueur 2
if (keyboard_check_pressed(vk_left))
	{
		if (i2 > -1) i2--
		if (i2 == -1) i2 = 2
	}
	
if (keyboard_check_pressed(vk_up))
	{
		if (p2 > -1) p2--
		if (p2 == -1) p2 = 2

	}
	
if (keyboard_check_pressed(vk_right))
	{
		if (i2 < 3) i2++
		if (i2 == 3) i2 = 0

	}
	
if (keyboard_check_pressed(vk_down))
	{
		if (p2 < 3) p2++
		if (p2 == 3) p2 = 0
	}














// Joueur 3
// Joueur 4
