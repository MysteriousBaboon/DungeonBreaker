//Check Up
if (keyboard_check(vk_up) or keyboard_check(ord("Z")))
MovingUCharacterSelec_P= 1;


if (keyboard_check_released(vk_up) or keyboard_check_released(ord("Z")))
{
MovingUCharacterSelec_P= 0 ;
image_speed = 0;
image_index = 0
}

if (keyboard_check(vk_down) or keyboard_check(ord("S")))
MovingDown = 1;

//Check Down
if (keyboard_check_released(vk_down) or keyboard_check_released(ord("S")))
{
MovingDown =0;
image_speed = 0
image_index = 0;
}
//Check Left
if ( keyboard_check(vk_left) or keyboard_check(ord("Q")))
MovingLeft = 1;
if (keyboard_check_released(vk_left) or keyboard_check_released(ord("Q")))
{
MovingLeft = 0;
image_speed = 0;
image_index = 0
}

//Check Right
if (keyboard_check(vk_right) or keyboard_check(ord("D")))
MovingRight = 1;
if (keyboard_check_released(vk_right) or keyboard_check_released(ord("D")))
{
MovingRight = 0;
image_speed = 0;
image_index = 0
}

// BOouger vers le haut
if (MovingUCharacterSelec_P== 1) 
	{
		image_speed = 1;
	y -= VerticalSpeed
	sprite_index = Spr_Saria_MovingUp;

	}

//Bouger vers le bas
if (MovingDown == 1) 
{
			image_speed = 1;
y += VerticalSpeed
sprite_index = Spr_Saria_MovingDown;

}




//Bouger vers la gauche
if(MovingLeft == 1)
	{
				image_speed = 1;
	x -= HorizontalSpeed
	sprite_index = Spr_Saria_MovingLeft;

	}

//Bouger vers la droite
if (MovingRight == 1) 
	{
				image_speed = 1;
	x += HorizontalSpeed
	sprite_index = Spr_Saria_MovingRight;
	
	}	



