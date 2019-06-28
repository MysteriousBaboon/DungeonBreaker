/// Initialize Variable
event_inherited()
LeftSpellCd = false;
RightSpellCd = false;
DodgeSpellCd = false;
MainSpellCd = false;
HorizontalSpeed = 3;
VerticalSpeed = 2;
State =  Scr_IvanhoeP1_Movement;

if (global.Player1_0 == Obj_Ivanhoe or global.Player1_1 == Obj_Ivanhoe) Player = 1
if (global.Player2_0 == Obj_Ivanhoe or global.Player2_1 == Obj_Ivanhoe) Player = 2