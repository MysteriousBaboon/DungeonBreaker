keyboard_check_pressed(vk_space)
	{
		if(page+1 < array_length_1d(text)) page++;
		else instance_destroy();
	}
	