camera_set_view_size(view_camera[0],global.view_w,global.view_h);

var _round = global.view_w/surface_get_width(application_surface);
camera_set_view_pos(view_camera[0],round_n(global.view_x,_round),round_n(global.view_y,_round));