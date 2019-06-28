speed = 2;
image_angle = Obj_Saria.image_angle
instance_create_layer(Obj_Cursor1.x,Obj_Cursor1.y,"Projectile",Obj_Saria_Sarment_Goal)
direction = point_direction(x,y,Obj_Saria_Sarment_Goal.x,Obj_Saria_Sarment_Goal.y) 
alarm[0] = 4*room_speed