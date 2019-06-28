

if(instance_exists(global.Player1_0))
	{
		x = global.Player1_0.x 
		y = global.Player1_0.y
		if(global.SwapP1)
			{
				instance_create_layer(x,y,"Character",global.Player1_1);
				instance_destroy(global.Player1_0);
				global.SwapP1 = false;
			}
		
	}
if(instance_exists(global.Player1_1))
	{
		x = global.Player1_1.x 
		y = global.Player1_1.y
		if(global.SwapP1)
			{
				instance_create_layer(x,y,"Character",global.Player1_0);
				instance_destroy(global.Player1_1);
				global.SwapP1 = false;
			}

	}