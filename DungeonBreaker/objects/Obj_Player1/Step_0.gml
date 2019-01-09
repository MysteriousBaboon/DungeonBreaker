//if(collision_circle(Player1_0.x ,Player1_1.y,100,Obj_Cursor1,true,true)

//Joueur
if (keyboard_check_direct(ord(LeftControlP1))) LeftMoveP1 = true
else LeftMoveP1 = false
if(keyboard_check_direct(ord(UpControlP1))) UpMoveP1 = true
else UpMoveP1 = false
if(keyboard_check_direct(ord(DownControlP1)))  DownMoveP1 = true
else DownMoveP1 = false
if(keyboard_check_direct(ord(RightControlP1)))  RightMoveP1 = true
else RightMoveP1 = false
if(keyboard_check_direct(ord(EntryControlP1)))  EntryP1 = true
else EntryP1 = false

// Curseur 
if (keyboard_check_direct(ord(LeftControlC1))) LeftMoveC1 = true
else LeftMoveC1 = false
if(keyboard_check_direct(ord(UpControlC1))) UpMoveC1 = true
else UpMoveC1 = false
if(keyboard_check_direct(ord(DownControlC1)))  DownMoveC1 = true
else DownMoveC1 = false
if(keyboard_check_direct(ord(RightControlC1)))  RightMoveC1 = true
else RightMoveC1 = false
//Spell
if(keyboard_check_direct(ord(LeftSpellControlP1))) LeftSpellP1 = true;
else LeftSpellP1 = false;
if(keyboard_check_direct(ord(RightSpellControlP1))) RightSpellP1 = true;
else RightSpellP1 = false;