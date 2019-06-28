/// Initialize Variable
event_inherited()
LeftSpellCd = false;
RightSpellCd = false;
DodgeSpellCd = false;
MainSpellCd = false;
HorizontalSpeed = 3;
VerticalSpeed = 2;
State =  Scr_RenaudP1_Movement;

if (global.Player1_0 == Obj_Renaud or global.Player1_1 == Obj_Renaud) Player = 1
if (global.Player2_0 == Obj_Renaud or global.Player2_1 == Obj_Renaud) Player = 2