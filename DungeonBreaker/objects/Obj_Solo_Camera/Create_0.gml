global.Player1_0 = Obj_Darwin;
var _w = 960;
var _h = 540;

// Set uCharacterSelec_Pcamera for view[0] (player 1)
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = _w / 2; // We want the window to be 960x540 so set the view port to half the width
view_hport[0] = _h;
view_camera[0] = camera_create_view(0, 0, _w , _h, 0, Obj_Darwin, -1, -1, _w, _h);


// Resize the game window and the apCharacterSelec_Psurface to accomodate both view ports
var _dx = display_get_width() ;
var _dy = display_get_height() ;
window_set_rectangle(_dx - (_w), _dy - (_h ), _w, _h);
surface_resize(application_surface, _w, _h);

