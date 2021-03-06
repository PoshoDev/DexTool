///make_screenshot_shiny()
function make_screenshot_shiny() {
	// Easily the ugliest code in the whole project. Sorry, whoever might be looking!

	// Count Data

	if (!global.show_shiny)
		var look = "Pokemon Count";
	else
		var look = "Shiny Count";
	
	show_debug_message("Loading count data...");

	var count_total = 0;

	//ini_open("save.ini")
		for (var i=1; i<global.dex_len; i++)
		{
		//	global.countdata[i] = ini_read_real(look, string(i), 0);
		
			if (global.savedata[global.dexdata[i, dex.idno]] || global.countdata[global.dexdata[i, dex.idno]])
				count_total++;
		}
	//ini_close();


	// Sanity Check

	var mult = 2;
	var unit_w = 5;
	var unit_h = 2;

	if (count_total == 0)
	{
		show_debug_message("No Pokémon to print.")
		return spr_piketch;
	}
	else if (count_total == 1)
	{
		var slots_per_row = 1;
		var slots_per_col = 1;
	}
	else if (count_total == 2)
	{
		var slots_per_row = 1;
		var slots_per_col = 2;
	}
	else if (count_total <= 4)
	{
		var slots_per_row = 2;
		var slots_per_col = 2;
	}
	else if (count_total <= 10)
	{
		var slots_per_row = 2;
		var slots_per_col = 5;
	}
	else
	{
		for (var i=1; i<(global.dex_len/10)+1; i++)
			if (10*(i-1) < count_total && count_total <= 10*(i))
				break;
	
		var fit = 10*(i);
			
		var slots_per_row = round((fit*(1/unit_w))/unit_h) //round(fit / (unit_w/* * mult*/));
		var slots_per_col = round((fit*(unit_w/slots_per_row))/unit_w) //round(fit / (unit_h/* * mult*/));
	}


	// Initials

	var offset = 40;
	var slot_w = offset * unit_w;
	var slot_h = 30 * unit_h;

	var size_w = slots_per_row * slot_w + offset*2;
	var size_h = slots_per_col * slot_h + offset*2;

	var surf = surface_create(size_w, size_h);
	surface_set_target(surf);
	draw_clear(c_white);


	// Draw Loop

	var current = 1;

	for (var i=0; i<slots_per_col; i++)
		for (var j=0; j<slots_per_row; j++)
			if (current<global.dex_len)
	        {
				while(!check_skip(current) || (current<global.dex_len-1 && !(global.savedata[global.dexdata[current, dex.idno]] || global.countdata[global.dexdata[current, dex.idno]])))
	                    current++;
            
	            if (global.dexdata[current, dex.pokemon] != "ETERNATUS") // This is a line of code from a man who has given up.
	            {
		            var px = j*slot_w + offset;
		            var py = i*slot_h + offset;
				
					// Slot color
					draw_set_color(get_color3(global.savedata[global.dexdata[current, dex.idno]], false));
					draw_rectangle(px, py, px+slot_w, py+slot_h, false);
				
					// Slot outline
					draw_set_color(c_black);
					draw_rectangle(px, py, px+slot_w, py+slot_h, true);
				
					// Pokémon
					draw_sprite_ext(make_sprite(global.dexdata[current, dex.pokemon], global.dexdata[current, dex.form]), 0, px+offset*mult/2, offset+i*slot_h+slot_h/2, mult, mult, image_angle, image_blend, image_alpha);
				
					// Prettying up for biggies
					draw_set_color(c_white);
					draw_rectangle(px+1, py+slot_h+1, px+slot_w, py+slot_h*2, false);
					draw_set_color(c_black);
					draw_line(px, py+slot_h, px+slot_w, py+slot_h);
				
					// Text
					if (global.savedata[global.dexdata[current, dex.idno]])
						draw_set_color(c_white);
					else
						draw_set_color(c_dkgray);
					
					draw_set_font(global.font);
					draw_set_valign(fa_middle);
					draw_set_halign(fa_center);
				
					if (global.countdata[global.dexdata[current, dex.idno]] != 0)
						var txt = string(global.countdata[global.dexdata[current, dex.idno]]);
					else
						var txt = "-";
				
					draw_text_transformed(px+slot_w*0.7, offset+i*slot_h+slot_h/2, txt, mult*2.5, mult*2.5, image_angle);
				
					// Output
					show_debug_message("Snapshot: Drew #"+global.dexdata[current, dex.dexno]+" "+global.dexdata[current, dex.pokemon]+".");
	            }
				current++
			}
			else
				break;

	surface_reset_target();
	var sprtemp = sprite_create_from_surface(surf,0,0,size_w,size_h,false,false,0,0)
	surface_free(surf)

	/*show_debug_message("count: "+string(count_total));
	show_debug_message("fit: "+string(fit));
	show_debug_message("slots_per_row: "+string(slots_per_row));
	show_debug_message("slots_per_col: "+string(slots_per_col));*/

	return sprtemp;


}
