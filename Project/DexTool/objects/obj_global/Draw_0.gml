/// @description  DRAW

/// Display Info

var color = get_color3(global.selected[dex.own], false);
draw_set_color(color);

draw_text_hud(global.selected[dex.dexno], 2, -2, color);
draw_pokemon_hud(global.selected[dex.sprite]);
draw_text_hud(global.selected[dex.pokemon], 2, 1, color);
draw_text_hud(global.selected[dex.form], 1.5, 3, color);
draw_type_hud(global.selected[dex.type1], global.selected[dex.type2], 4.5);


// The famous counter
if (instance_exists(obj_lock) || global.counter>0)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text_transformed(align_x(region.mid_right, 0), align_y(region.mid_right, 0), global.counter, global.icon_scale*3, global.icon_scale*3, image_angle);
}

// Debug
draw_guidelines(true);

// Reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
