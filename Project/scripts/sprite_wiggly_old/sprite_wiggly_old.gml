/// @description sprite_wiggly() >> returns extra
function sprite_wiggly_old() {



	var st_x = x+(19*global.icon_scale);
	var st_y = y+(14*global.icon_scale);

	if (point_distance(st_x, st_y, mouse_x, mouse_y) <= 19*global.icon_scale)
	{
	    plus_x += (mouse_x-(st_x+plus_x))/room_speed*4;
	    plus_y += (mouse_y-(st_y+plus_y))/room_speed*4;
	    show_debug_message(point_distance(st_x, st_y, mouse_x, mouse_y))
	}
	else
	{
	    plus_x += (st_x-(st_x+plus_x))/room_speed*2;
	    plus_y += (st_y-(st_y+plus_y))/room_speed*2;
	}



}
