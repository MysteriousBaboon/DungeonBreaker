

var _w = 960;
var _h = 540;

// Set up camera for view[0] (player 1)
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = _w / 2; // We want the window to be 960x540 so set the view port to half the width
view_hport[0] = _h;
view_camera[0] = camera_create_view(0, 0, _w / 2, _h, 0, Player1_0, -1, -1, _w, _h);

// Set up camera for view[0] (player 2)
view_visible[1] = true;
view_xport[1] = _w / 2; // Offset the second view for player two within the game window
view_yport[1] = 0;
view_wport[1] = _w / 2;
view_hport[1] = _h;
view_camera[1] = camera_create_view(0, 0, _w / 2, _h, 0, Player2_0, -1, -1, _w, _h);

// Resize the game window and the app surface to accomodate both view ports
var _dx = display_get_width() / 2;
var _dy = display_get_height() / 2;
window_set_rectangle(_dx - (_w / 2), _dy - (_h / 2), _w, _h);
surface_resize(application_surface, _w, _h);

