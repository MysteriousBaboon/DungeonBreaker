/// @description Afficher la barre de vie
var percent = global.HealthPlayer1 / global.MaxHealthPlayer1
var h = sprite_get_height(Spr_Ui_HealthBlood);
draw_sprite_part_ext(Spr_Ui_HealthBlood,0,0 ,(1-percent)*h,100,percent*h,101,160+(1-percent)*h/2,0.5,0.5,c_white,1);
draw_sprite_stretched(Spr_Ui_HealthCadre,0,100,160,50,50)
draw_sprite_stretched(Spr_Ui_HealthGraal,0,102,195,50,50)
draw_set_font(Font_UI)
draw_text(107,180,string(global.HealthPlayer1) + "/" + string(global.MaxHealthPlayer1))
draw_text(50,50,global.Player1_0)