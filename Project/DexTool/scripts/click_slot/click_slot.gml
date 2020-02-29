/// @description click_slot(value)
/// @param value

own = argument0;

spr_plus = 0.75;
    
color = get_color3(own, true);

global.selected[dex.own] = own;
global.savedata[idno] = own;

// Auto-Saves
if (file_exists("save.ini"))
{
    ini_open("save.ini");
        var section = savedata_section_get(global.show_shiny);
        
        ini_write_real(section, string(idno), own)
        //ini_write_real("Progress","count",global.count)
        show_debug_message("Saved "+pokemon+" as "+string(own)+".");
    ini_close();
}
else
    show_debug_message("ERROR: Save file somehow went missing.");