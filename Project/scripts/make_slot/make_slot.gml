///make_slot(x_index, y_index, Pokémon index)

var px = argument0;
var py = argument1;
var sel = argument2;

with instance_create(px, py, obj_slot)
{
    idno =      global.dexdata[sel, dex.idno];
    dexno =     global.dexdata[sel, dex.dexno];
    pokemon =   global.dexdata[sel, dex.pokemon];
    form =      global.dexdata[sel, dex.form];
    type1 =     global.dexdata[sel, dex.type1];
    type2 =     global.dexdata[sel, dex.type2];
    
    own = global.savedata[sel];
    
    color = get_color3(own, false);
    
    image_speed = 0;
    hover = false;
    spr = make_sprite(pokemon, form);
    
    slot_box =  global.box_count;
    slot_x =    px;
    slot_y =    py;
    
    plus_x = 0;
    plus_y = 0;
    spr_plus = 1;
    
    if (own)
        global.progress++;
    global.progress_max++;
    
    
    //show_debug_message("Spawned #"+dexno+" "+pokemon+" "+form+".");
}
