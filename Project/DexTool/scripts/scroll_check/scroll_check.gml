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