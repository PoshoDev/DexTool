if ((   window_get_width() != global.window_width ||
        window_get_height() != global.window_height) &&
        !window_get_fullscreen())
{
    view_wport[0] = window_get_width();
    view_hport[0] = window_get_height();
    
    surface_resize(application_surface, view_wport[0], view_hport[0]);  
    
    global.window_width = window_get_width();
    global.window_height = window_get_height();
    
    global.box_len = global.window_width/2/7;
    
    room_width = global.window_width;
    room_height = global.window_height;
    
    // If mult scale is allowed:
    //global.icon_scale = (1 * global.box_len) / 40;
    
    for(var i=2; global.box_len>i*40; i++){}
    global.icon_scale = i-1;
    
    /*global.icon_scale = 2;
    
    while(global.box_len < global.icon_scale*40)
        global.icon_scale++;
    
    global.icon_scale--;*/
    
    with obj_slot
    {
        image_xscale = global.icon_scale;
        image_yscale = global.icon_scale;
        
        x = global.box_len/2 + global.box_len * slot_x;
        y = global.box_len * slot_y;
    }
    
    show_debug_message("Window Resized.");
}
