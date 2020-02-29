/// @description  WINDOW RESIZE CHECK

if ((window_get_width()!=global.window_width || window_get_height()!=global.window_height) && window_get_width()>2)
    scr_window_resize();

global.box_scale = sprite_get_width(spr_slot)*global.icon_scale;

scroll_check();
    