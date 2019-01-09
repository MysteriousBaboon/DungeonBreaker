#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height);



		var _x = clamp(Player1_0-view_width,0,room_width-view_width)
		var _y = clamp(Player1_0-view_height,0,room_height-view_height)
		
		
		var _cur_x =camera_get_view_x(view);
		var _cur_y =camera_get_view_y(view);
		
		var _spd =-1;
		camera_set_view_pos(view,_x,_y)
						lerp(_cur_x,_x,_spd)
						lerp(_cur_y,_y,_spd)
	