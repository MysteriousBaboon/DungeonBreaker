/// Spell Invocation de tourelle
ds_list_add(Turret_list, instance_create_layer(x, y,"Character_Item", Obj_Turret)); 
if (ds_list_size(Turret_list) == 3)
	{
		with (Turret_list[| 0])
			{
				instance_destroy();
			}
		 ds_list_delete(Turret_list, 0);
	}
LeftSpellCd = true;
alarm[0] = 3*room_speed
State = Scr_DarwinP1_Movement;
	
	