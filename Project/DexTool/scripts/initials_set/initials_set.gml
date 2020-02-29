///initials_set()

global.window_width = window_get_width();
global.window_height = window_get_height();

scr_window_resize();

global.window_width = window_get_width();
global.window_height = window_get_height();
    
global.box_len = global.window_width/2/7;
global.icon_scale = 2;

global.font = font_add_sprite_ext(spr_font,"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZéÉ#-'!?():@_.% /♂♀+", true, 1);

global.selected[dex.dexno] = "001";
global.selected[dex.pokemon] = "BULBASAUR";
global.selected[dex.form] = "";
global.selected[dex.type1] = "Grass";
global.selected[dex.type2] = "Poison";
global.selected[dex.sprite] = -1;
global.selected[dex.own] = 0;

global.dex_len = array_height_2d(global.dexdata);

global.hud_pokemon_rate = 0.225;

global.mouse_x_prev = mouse_x;
global.mouse_y_prev = mouse_x;

global.various = false;
global.various_to = 0;

enum region { boxes, top, mid_left, mid_right, bottom }