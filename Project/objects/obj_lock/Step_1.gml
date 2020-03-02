
if (global.selecting != noone)
{
    x = global.selecting.x;
    y = global.selecting.y;
    
    image_xscale = global.icon_scale;
    image_yscale = global.icon_scale;
}
else
    lock_destroy();
    
if (keyboard_check_pressed(vk_escape))
    lock_destroy();