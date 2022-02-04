///button_set(x_, y_, type)
function button_set(argument0, argument1, argument2) {

	x_ = argument0;
	y_ = argument1;
	type = argument2;

	image_index = src.black;
	image_speed = 0;

	length = 1;
	scale = global.icon_scale;
	textsize = 1.5;
	color = c_white;
	halign = fa_center;
	valign = fa_middle;

	switch(type)
	{
	    case but.info:
	        text = "INFO";
	        scale = global.icon_scale * 1.25;
	        x_ = button_align_x(region.mid_left, 0);
	        y_ = button_align_y(region.mid_left, -0.7);
	    break;
    
	    case but.area:
	        text = "AREA";
	        scale = global.icon_scale * 1.25;
	        x_ = button_align_x(region.mid_left, 0);
	        y_ = button_align_y(region.mid_left, 0.7);
	    break;
    
	    case but.plus:
	        text = "+";
	        scale = global.icon_scale * 1.5;
	        length = 0.25;
	        textsize = 2;
	        x_ = button_align_x(region.mid_right, 1.5);
	        y_ = button_align_y(region.mid_right, 0);
	    break;
    
	    case but.minus:
	        text = "-";
	        length = 0.25;
	        textsize = 2;
	        x_ = button_align_x(region.mid_right, -1.5);
	        y_ = button_align_y(region.mid_right, 0);
	    break;
    
	    case but.image:
	        text = "IMAGE ö";
	        scale = global.icon_scale * 1.25;
	        x_ = button_align_x(region.bot_right, 0);
	        y_ = button_align_y(region.bot_right, 0);
	    break;
    
	    case but.national:
	        switch(global.show_dex)
	        {
	            case shw.national: text="NATIONAL"; break;
	            case shw.galar:    text="GALAR";    break;
	            case shw.armor:    text="ARMOR";    break;
	            case shw.hisui:    text="HISUI";    break;
	        }
        
	        scale = global.icon_scale * 0.75;
	        x_ = button_align_x(region.bot_left, -1.25);
	        y_ = button_align_y(region._100, -0.5 - 0.5);
	    break;
    
	    case but.shiny:
	        if (!global.show_shiny)
	            text = "REGULAR";
	        else
	            text = "SHINY";
	        scale = global.icon_scale * 0.75;
	        x_ = button_align_x(region.bot_left, 1.25);
	        y_ = button_align_y(region._100, -0.5 - 0.5);
	    break;
	};

	x = x_;
	y = y_;

	width =  sprite_get_width(sprite_index)  * scale * length;
	height = sprite_get_height(sprite_index) * scale;


}
