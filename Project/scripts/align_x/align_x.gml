///align_x(region, _unit%)
function align_x() {

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
	    case region.bot_left:
	        var x_start = global.window_width*0.75 - global.window_width*0.25/2;
	    break;
    
	    case region.mid_right:
	    case region.bot_right:
	        var x_start = global.window_width*0.75 + global.window_width*0.25/2;
	    break;
    
	    case region._25:
	        var x_start = global.window_width * 0.25;
	    break;
    
	    case region._50:
	        var x_start = global.window_width * 0.50;
	    break;
    
	    case region._75:
	        var x_start = global.window_width * 0.75;
	    break;
	}

	return x_start + deplacement;


}
