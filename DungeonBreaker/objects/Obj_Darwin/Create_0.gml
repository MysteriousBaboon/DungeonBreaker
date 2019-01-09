/// Initialize Variable
event_inherited()
MovingUp = 0;
MovingDown = 0;
MovingLeft = 0;
MovingRight = 0;

HorizontalSpeed = 3;
VerticalSpeed = 2;
Turret_list = ds_list_create();

if (Player1_0 == Obj_Darwin) Player = 1
if (Player2_0 == Obj_Darwin) Player = 2