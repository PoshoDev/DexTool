/// @description  WINDOW RESIZE CHECK

if ((window_get_width()!=global.window_width || window_get_height()!=global.window_height) && window_get_width()>2)
    scr_window_resize();

global.box_scale = sprite_get_width(spr_slot)*global.icon_scale;

/// SCROLLING

if (mouse_wheel_up() || keyboard_check_pressed(vk_up))
{
    global.current_box--;
    
    if (global.current_box < 1)
        global.current_box = 1;
    else  
        scroll_do();
}
else if (mouse_wheel_down() || keyboard_check_pressed(vk_down))
{
    global.current_box++;
    
    if (global.current_box > global.box_count-1)
        global.current_box = global.box_count-1;
    else
        scroll_do();
}
    


