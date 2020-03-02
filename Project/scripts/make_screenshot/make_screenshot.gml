// Set Size

if (!global.show_shiny) // Regulars
{
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
}
else // Shinies
{
    var mult = 2;
    var offset = 40/* * mult / 2*/;
    var slot_w = offset * 5;
    var slot_h = 30 * mult;
    
    var size_w = slot_w + offset*2;
    var size_h = slot_h*global.progress + offset*2;
    
    var surf = surface_create(size_w, size_h);
    surface_set_target(surf);
    draw_clear(c_white);
    
    var current = 1;
    
    for (var i=0; current<global.dex_len; i++)
    {
        while(!check_skip(current))
            current++;
            
        if (global.savedata[global.dexdata[current, dex.idno]])
        {
            var px = offset;
            var py = offset + i*slot_h;
        
            draw_set_color(get_color3(global.savedata[global.dexdata[current, dex.idno]], false));
            draw_rectangle(px, py, px+slot_w, py+slot_h, false);
            
            draw_set_color(c_black);
            draw_rectangle(px, py, px+slot_w, py+slot_h, true);
            
            draw_sprite_ext(make_sprite(global.dexdata[current, dex.pokemon], global.dexdata[current, dex.form]), 0, px+offset*mult/2, offset+i*slot_h+slot_h/2, mult, mult, image_angle, image_blend, image_alpha);
            
            draw_set_font(global.font);
            draw_set_color(c_white);
            draw_set_valign(fa_middle);
            draw_set_halign(fa_center);
            draw_text_transformed(/*px+offset*mult*/px+slot_w*0.7, offset+i*slot_h+slot_h/2, "334", mult*2.5, mult*2.5, image_angle);
            
            show_debug_message("Snapshot: Drew #"+global.dexdata[current, dex.dexno]+" "+global.dexdata[current, dex.pokemon]+"."); 
        }
        else
            i--;
            
        current++;
    }
}

draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_left);


// Saving

surface_reset_target();
sprtemp = sprite_create_from_surface(surf,0,0,size_w,size_h,false,false,0,0)
surface_free(surf)

var filename = "dex";
var ext = ".png";
sprite_save(sprtemp, 0, filename+ext);

var user = string(environment_get_variable("USERNAME"));
show_debug_message("Image exported to C:\Users"+chr(92)+user+"\AppData\Local\DexTool"+filename+ext+".");
