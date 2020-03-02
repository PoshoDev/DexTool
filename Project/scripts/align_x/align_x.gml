///align_x(region, unit%)

var zone = argument0;
var percent = argument1;

switch(zone)
{
    case region.mid_left:
        var x_start = global.window_width*0.75 - global.window_width*0.25/2;
    break;
    
    case region.mid_right:
    case region.bot_right:
        var x_start = global.window_width*0.75 + global.window_width*0.25/2;
    break;
}

var deplacement = global.unit * percent;

return x_start + deplacement;