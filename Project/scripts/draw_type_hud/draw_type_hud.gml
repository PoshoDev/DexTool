/// @description draw_type_hud(type1, type2, position)
/// @param type1
/// @param  type2
/// @param  position

var t1 = argument0;
var t2 = argument1;
var pos = argument2;

if (global.selected[dex.form] == "")
    pos -= 1.5;

    
// What a fucking mess...
var mid_x = global.window_width * 0.75;
var mid_y = global.window_height * global.hud_pokemon_rate + __view_get( e__VW.YView, 0 );
var sh = sprite_get_height(global.selected[dex.sprite])/2;
var start = sh * global.icon_scale * 3;
var extra = -1;
var len = sprite_get_height(spr_font)*global.icon_scale*2*(pos+extra) + 4*(pos+extra);
var hal = global.box_len/16;


if (t2 == "")
{
    draw_sprite_ext(spr_type, scr_typeget(t1), mid_x-(sprite_get_width(spr_type)*hal/2), mid_y+start+len, hal, hal, image_angle, image_blend, image_alpha);
}
else
{
    draw_sprite_ext(spr_type, scr_typeget(t1), mid_x-(sprite_get_width(spr_type)*hal)-hal, mid_y+start+len, hal, hal, image_angle, image_blend, image_alpha);
    draw_sprite_ext(spr_type, scr_typeget(t2), mid_x+hal, mid_y+start+len, hal, hal, image_angle, image_blend, image_alpha);
}
