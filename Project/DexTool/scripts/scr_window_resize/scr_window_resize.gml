// Views and that.

window_set_min_width(470);

global.window_width = window_get_width();
global.window_height = window_get_height();

__view_set( e__VW.WPort, 0, global.window_width );
__view_set( e__VW.HPort, 0, global.window_height );

__view_set( e__VW.WView, 0, global.window_width );
__view_set( e__VW.HView, 0, global.window_height );

surface_resize(application_surface, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));  


// Slots

var spr_size = sprite_get_width(spr_slot);

for(var i=2; i*spr_size<global.window_width/2/6; i++){}

global.icon_scale = i-1;
global.box_len = spr_size*global.icon_scale;

with (obj_header)
{
    image_xscale = 3.25 * global.icon_scale;
    image_yscale = global.icon_scale;    

    x = global.window_width/4 - global.box_len*3 + global.icon_scale*3;
    y = global.box_len + (global.box_len*6)*(number-1);
}

with (obj_slot)
{
    image_xscale = global.icon_scale;
    image_yscale = global.icon_scale;
    
    x = global.window_width/4 - global.box_len*3 + global.box_len*slot_x;
    y = global.box_header[slot_box].y+24*global.icon_scale + global.box_len*slot_y;
    
    scroll_warp();
}

unit_update();
button_update_all();


room_width = global.window_width;
room_height = global.window_height;

//


show_debug_message("Window Resized to "+string(window_get_width())+"x"+string(window_get_height())+".");
