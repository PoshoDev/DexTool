///window_resize_check()

if ((window_get_width()!=global.window_width || window_get_height()!=global.window_height) && window_get_width()>2)
    scr_window_resize();