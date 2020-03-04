/// @description click_slot(value)
/// @param value

own = argument0;

spr_plus = 0.75;
    
color = get_color3(own, true);

if (global.selected[dex.idno] == idno)
    global.selected[dex.own] = own;
    
global.savedata[idno] = own;
//global.countdata[idno] = own;

// Auto-Saves
if (savedata_write(savedata_section_get(global.show_shiny), string(idno), own))
    show_debug_message("Saved "+pokemon+" as "+string(own)+".");
else
    show_debug_message("ERROR: Save file somehow went missing.");

change_add();