///savedata_load()

if (file_exists("save.ini"))
{
    ini_open("save.ini")
        global.current_box =    ini_read_real("Navigation", "Current Box", 1);
        global.show_galar =     ini_read_real("Display", "Galar Dex", false);
        global.show_shiny =     ini_read_real("Display", "Shiny Mode", false);
        
        var section = savedata_section_get(global.show_shiny);
        global.countdata[0] =0
        for (var i=1; i<=global.dex_len; i++)
        {
            global.savedata[i]  = ini_read_real(section,          string(i), 0);
            global.countdata[i] = ini_read_real(section+" Count", string(i), 0);
            /*
            if (global.savedata[global.dexdata[i, dex.idno]] || global.countdata[global.dexdata[i, dex.idno]])
            show_debug_message( "found: "+global.dexdata[i, dex.pokemon]+
								"\tid: "+string(i)+
								"\town: "+string(global.savedata[global.dexdata[i, dex.idno]])+
								"\tcount: "+global.countdata[global.dexdata[i, dex.idno]]);*/
        }
        
        
        
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