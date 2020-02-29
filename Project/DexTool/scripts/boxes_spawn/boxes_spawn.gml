///boxes_spawn()

/// SPAWN SLOTS

var pos_x = 0;
var pos_y = 0;

global.current = 1;

for (global.box_count=1; global.current<global.dex_len; global.box_count++)
{
    global.box_header[global.box_count] = instance_create(0, 0, obj_header);
    
    with (global.box_header[global.box_count])
    {
        number = global.box_count;
        image_index = get_gen(global.dexdata[global.current, dex.dexno])-1;
        show_debug_message("Spawned Box "+string(global.box_count)+" with PKMN #"+string(global.dexdata[global.current, dex.dexno])+" from Gen "+string(get_gen(global.dexdata[global.current, dex.dexno])))
        image_speed = 0;
    }
    
    var jump = false;
    
    for (var i=0; i<5; i++) // Box Y
        for (var j=0; j<6; j++) // Box X
        {
            if (global.current<global.dex_len && !jump)
            {
                while(!check_skip(global.current) /*|| global.savedata[global.current]*/)
                    global.current++;
                
                if (!check_jump(j, i, global.current))
                {
                    if (check_galar(global.current, global.show_galar))
                        make_slot(j, i, global.current);
                        
                    global.current++;
                }
                else
                    jump = true;
            }
        }
}