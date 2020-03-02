///button_align_y(region, _unit%)

var zone = argument[0];

if (argument_count > 1)
{
    var percent = argument[1];
    var deplacement = global.unit * percent;
}
else
    var deplacement = 0;

switch(zone)
{
    case region.mid_left:
    case region.mid_right:
        var y_start = global.window_height * 0.7;
    break;
    
    case region.bot_left:
    case region.bot_right:
        var y_start = global.window_height * 0.9;
    break;
    
    case region._100:
        var y_start = global.window_height;
    break;
}

return y_start + deplacement + __view_get(e__VW.YView, 0);