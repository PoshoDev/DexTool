/// @description  DRAW

draw_self();

var px = x+global.icon_scale*4;
var py = y + (sprite_get_height(sprite_index)*global.icon_scale/2*0.8333) - sprite_get_height(spr_font)*global.icon_scale;
draw_text_square(px, py, "BOX "+string(number), 1, fa_left, c_white);

