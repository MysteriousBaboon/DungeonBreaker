/// Initialize Variable
event_inherited()
LeftSpellCd = false;
RightSpellCd = false;
DodgeSpellCd = false;
MainSpellCd = false;
HorizontalSpeed = 3;
VerticalSpeed = 2;
ChargeMax_Right = room_speed * 5;
Charge_Right = 0;
State =  Scr_SariaP1_Movement;

if (global.Player1_0 == Obj_Saria or global.Player1_1 == Obj_Saria) Player = 1
if (global.Player2_0 == Obj_Saria or global.Player2_1 == Obj_Saria) Player = 2