/// @description  DEX LOAD & ENUM (+GALAR DEX)
/// @param +GALAR DEX

// National Dex data loading

enum dex
{
    idno,
    dexno,
    pokemon,
    form,
    type1,
    type2,
    boxable,
    bankable,
    sprite,
    own
}

global.dexdata = csv_load("pokedata");


// Galar Dex data loading

enum gdex
{
    galarno,
    dexno,
    pokemon,
    type1,
    type2
}

global.galardata = csv_load("galardex");


/// INITIALS

global.window_width = window_get_width();
global.window_height = window_get_height();

scr_window_resize();

global.window_width = window_get_width();
global.window_height = window_get_height();
    
global.box_len = global.window_width/2/7;
global.icon_scale = 2;

global.font = font_add_sprite_ext(spr_font,"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZéÉ#-'!?():@_.% /♂♀",true,1)

global.selected[dex.dexno] = "001";
global.selected[dex.pokemon] = "BULBASAUR";
global.selected[dex.form] = "";
global.selected[dex.type1] = "Grass";
global.selected[dex.type2] = "Poison";
global.selected[dex.sprite] = -1;
global.selected[dex.own] = 0;

global.dex_len = array_height_2d(global.dexdata);

global.hud_pokemon_rate = 0.225;

global.mouse_x_prev = mouse_x;
global.mouse_y_prev = mouse_x;

global.various = false;
global.various_to = 0;

/// SAVE DATA

if (file_exists("save.ini"))
{
    ini_open("save.ini")
        global.current_box =    ini_read_real("Navigation", "Current Box", 1);
        global.show_galar =     ini_read_real("Display", "Galar Dex", false);
        global.show_shiny =     ini_read_real("Display", "Shiny Mode", false);
    
        for (var i=0; i<=global.dex_len; i++)
            global.savedata[i] = ini_read_real("Pokemon", string(i), 0);
        
    ini_close();
    show_debug_message("LOADED SAVE FILE.");
}
else
{
    ini_open("save.ini");
        ini_write_real("Info", "Number", 0.2);
    ini_close();
    
    global.current_box = 1;
    global.show_galar = false;
    global.show_shiny = false;
    
    for (var i=0; i<=global.dex_len; i++)
        global.savedata[i] = 0;
    
    show_debug_message("CREATED SAVE FILE.");
}

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

/* */
script_execute(scr_window_resize,0,0,0,0,0);
/*  */
