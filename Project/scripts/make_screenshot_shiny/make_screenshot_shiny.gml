var mult = 2;

var slots_per_line = 4;
var slots_h = ceil(16/slots_per_line);

var offset = 40;
var slot_w = offset * 5;
var slot_h = 30 * mult;

var size_w = slots_per_line * slot_w + offset*2;
var size_h = slots_h * slot_h + offset*2;

var surf = surface_create(size_w, size_h);
surface_set_target(surf);
draw_clear(c_white);

var current = 1;

for (var i=0; i<slots_h; i++)
	for (var j=0; j<slots_per_line; j++)
		if (current<global.dex_len)
        {
			while(!check_skip(current) || (current<global.dex_len-1 && !global.savedata[global.dexdata[current, dex.idno]]))
                    current++;
                    
            //if ()
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
    			
    			// Text
    			draw_set_font(global.font);
    			draw_set_color(c_white);
    			draw_set_valign(fa_middle);
    			draw_set_halign(fa_center);
    			draw_text_transformed(/*px+offset*mult*/px+slot_w*0.7, offset+i*slot_h+slot_h/2, "334", mult*2.5, mult*2.5, image_angle);
    			
    			// Output
    			show_debug_message("Snapshot: Drew #"+global.dexdata[current, dex.dexno]+" "+global.dexdata[current, dex.pokemon]+".");
    			
    			current++
            }
		}
		else
			break;

surface_reset_target();
var sprtemp = sprite_create_from_surface(surf,0,0,size_w,size_h,false,false,0,0)
surface_free(surf)

return sprtemp;