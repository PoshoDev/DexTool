///draw_pokemon_hud(sprite_index)

var mid_x = global.window_width * 0.75;
var mid_y = global.window_height * global.hud_pokemon_rate + view_yview[0];

if (sprite_exists(argument0))
    draw_sprite_ext(argument0, 0, mid_x, mid_y, global.icon_scale*3, global.icon_scale*3, image_angle, image_blend, image_alpha);
