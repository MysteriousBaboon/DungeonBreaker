var dir = direction * -1
var angle = image_angle * -1
instance_destroy(id)
var inst = instance_create_layer(x,y,"projectile",Obj_Green_Projectile);
with(inst)direction = dir