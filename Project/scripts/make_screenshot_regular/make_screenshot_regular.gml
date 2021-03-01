function make_screenshot_regular() {
	var slots_per_line = 32;
	var slots_h = ceil(global.dex_len/slots_per_line);

	var slot_w = 40;
	var slot_h = 30;

	var size_w = slots_per_line * slot_w + slot_w;
	var size_h = slots_h * slot_h;

	var surf = surface_create(size_w, size_h);
	surface_set_target(surf);
	draw_clear(c_white);

	// Slots
	var current = 1;

	for (var i=1; i<=slots_h; i++)
	    for (var j=1; j<slots_per_line; j++)
	        if (current<global.dex_len)
	        {
	            while(!check_skip(current))
	                current++;
            
	            var px = j*slot_w;
	            var py = i*slot_h;
            
	            draw_set_color(get_color3(global.savedata[global.dexdata[current, dex.idno]], false));
	            draw_rectangle(px, py, px+slot_w, py+slot_h, false);
            
	            draw_set_color(c_black);
	            draw_rectangle(px, py, px+slot_w, py+slot_h, true);
            
	            draw_sprite(make_sprite(global.dexdata[current, dex.pokemon], global.dexdata[current, dex.form]), 0, j*slot_w+slot_w/2, i*slot_h+slot_h/2);
            
	            show_debug_message("Snapshot: Drew #"+global.dexdata[current, dex.dexno]+" "+global.dexdata[current, dex.pokemon]+"."); 
            
	            current++;
	        }
	        else
	            break;


	surface_reset_target();
	var sprtemp = sprite_create_from_surface(surf,0,0,size_w,size_h,false,false,0,0)
	surface_free(surf)

	return sprtemp;


}
