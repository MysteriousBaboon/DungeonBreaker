/// Initialize Variable
event_inherited()
LeftSpellCd = false;
RightSpellCd = false;
DodgeSpellCd = false;
MainSpellCd = false;
HorizontalSpeed = 3;
VerticalSpeed = 2;
State =  Scr_DarwinP1_Movement;
Turret_list = ds_list_create();
if (global.Player1_0 == Obj_Darwin or global.Player1_1 == Obj_Darwin) Player = 1
if (global.Player2_0 == Obj_Darwin or global.Player2_1 == Obj_Darwin) Player = 2