///sprite_wiggly() >> returns extra

/// Mouse Speed & Direction
//var mouse_dir_x = 

var st_x = x+(19*global.icon_scale);
var st_y = y+(14*global.icon_scale);

if (point_distance(st_x, st_y, mouse_x, mouse_y) <= 20*global.icon_scale)
{
    if (global.mouse_dir_x !=0)
        plus_x += global.mouse_dir_x/8
    else
        plus_x += (st_x-(st_x+plus_x))/room_speed*2;
        
    if (global.mouse_dir_y !=0)
        plus_y += global.mouse_dir_y/8
    else
        plus_y += (st_y-(st_y+plus_y))/room_speed*2;
}
else
{
    plus_x += (st_x-(st_x+plus_x))/room_speed*8;
    plus_y += (st_y-(st_y+plus_y))/room_speed*8;
}



