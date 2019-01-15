event_inherited()
if (instance_exists(Obj_Player))
{
if (distance_to_object(Obj_Player) <= 40  or Health < 3)
{
	image_speed = 1
x += sign(Obj_Player.x -x)*spd;
y += sign(Obj_Player.y -y)*spd;
}
}
if (sprite_index == spr_GreenSlime_WakinUp && image_index > image_number - 1) sprite_index =spr_GreenSlime_MoveDown;
if (Health == 0) instance_destroy(id)