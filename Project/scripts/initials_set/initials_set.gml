///initials_set()
function initials_set() {

	enum region { boxes, top, mid_left, mid_right, bot_left, bot_right,
	              _0, _25, _50, _75, _100 };
              
	enum shw { national, galar, armor, LENGTH};

	global.window_width = window_get_width();
	global.window_height = window_get_height();

	scr_window_resize();

	global.window_width = window_get_width();
	global.window_height = window_get_height();
    
	global.box_len = global.window_width/2/7;
	global.icon_scale = 2;

	global.font_str = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZéÉ#-'!?():@_.% /♂♀+äöü↑↓←→";
	global.font = font_add_sprite_ext(spr_font, global.font_str, true, 1);

	global.dex_len = array_height_2d(global.dexdata);

	global.hud_pokemon_rate = 0.225;

	global.mouse_x_prev = mouse_x;
	global.mouse_y_prev = mouse_x;

	global.various =    false;
	global.various_to = 0;

	global.selecting = noone;
	global.counter =   9999;

	global.change = false;

	global.progress =     0;
	global.progress_max = 0;



}
