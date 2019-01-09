speed = 7;
direction = point_direction(x,y ,mouse_x , mouse_y);
image_angle = direction
image_xscale =  0.3
image_yscale = 0.3

if (position_meeting(x,y,obj_Wall or obj_monster)) 
{
instance_destroy(id)
}