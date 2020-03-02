// Set Size

//var size_w = 40*6*6 + 4*7;
//var size_h = ceil(global.box_count-1)/6 * 30 + 4*(ceil(global.box_count-1)+1)

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
            
            if (global.savedata[current])
            {
                draw_set_color(c_red);
                draw_rectangle(px, py, px+slot_w, py+slot_h, false);
            }
            
            draw_set_color(c_black);
            draw_rectangle(px, py, px+slot_w, py+slot_h, true);
            
            draw_sprite(make_sprite(global.dexdata[current, dex.pokemon], global.dexdata[current, dex.form]), 0, j*slot_w+slot_w/2, i*slot_h+slot_h/2);
            
            show_debug_message("Snapshot: Drew #"+global.dexdata[current, dex.dexno]+" "+global.dexdata[current, dex.pokemon]+"."); 
            
            current++;
        }
        else
            break;


// Sprites

/*for (i=1; i<=slots_h; i++)
    for (var j=1; j<slots_per_line; j++)
        if (current<global.dex_len)
        {
            while(!check_skip(current))
                current++;
            
            var px = j*slot_w;
            var py = i*slot_h;

            draw_sprite(make_sprite(global.dexdata[current, dex.pokemon], global.dexdata[current, dex.form]), 0, slot_w/2, slot_h/2);
            
            current++;
            
            show_debug_message("Snapshot: Drew #"+global.dexdata[current, dex.dexno]+" "+global.dexdata[current, dex.pokemon]+".");
        }*/

// Saving

surface_reset_target();
sprtemp = sprite_create_from_surface(surf,0,0,size_w,size_h,false,false,0,0)
surface_free(surf)

var filename = "dex";
var ext = ".png";
sprite_save(sprtemp, 0, filename+ext);

var user = string(environment_get_variable("USERNAME"));
var dir = "C:\\Users\\"+string(user)+"\\Pictures";
var savestring = dir+"\\"+filename+".png";
var fromstring = "C:\\Users\\"+user+"\\AppData\\Local\\LivingDexSS\\"+filename+ext;
//file_move_ns(fromstring, savestring);

show_debug_message("Image exported as '"+savestring+"'.");
