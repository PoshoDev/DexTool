/// @description  DRAW

/// Display Info

var color = get_color3(global.selected[dex.own], false);
draw_set_color(color);

draw_text_hud(global.selected[dex.dexno], 2, -2, color);
draw_pokemon_hud(global.selected[dex.sprite]);
draw_text_hud(global.selected[dex.pokemon], 2, 1, color);
draw_text_hud(global.selected[dex.form], 1.5, 3, color);
draw_type_hud(global.selected[dex.type1], global.selected[dex.type2], 4.5);


// Debug

//draw_guidelines(false);

