/// @description get_color(value, hover?)
/// @param value
/// @param  hover?
function get_color3(argument0, argument1) {

	if (!argument1)
	    switch(argument0)
	    {
	        case 0: return c_white;
	        case 1: return c_red;
	        case 2: return c_blue;
	        case 3: return c_yellow;
	        case 4: return c_aqua;
	    }
	else
	    switch(argument0)
	    {
	        case 0: return c_gray;
	        case 1: return c_maroon;
	        case 2: return c_navy;
	        case 3: return c_dkgray;
	        case 4: return c_dkgray;
	    }



}
