event_inherited()
if (instance_exists(obj_player))
{
if (distance_to_object(obj_player) <= 40  or Health < 3)
{
	image_speed = 1
x += sign(obj_player.x -x)*spd;
y += sign(obj_player.y -y)*spd;
}
}
if (sprite_index == spr_GreenSlime_WakinUp  && image_index > image_number - 1) sprite_index =spr_GreenSlime_MoveDown;
if (Health == 0) instance_destroy(id)