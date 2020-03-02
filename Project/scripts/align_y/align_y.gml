///button_align_y(region, unit%)

var zone = argument0;
var percent = argument1;

switch(zone)
{
    case region.mid_left:
    case region.mid_right:
        var y_start = global.window_height * 0.7;
    break;
}

var deplacement = global.unit * percent;

return y_start + deplacement + __view_get(e__VW.YView, 0);