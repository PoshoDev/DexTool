///savedata_load()
function savedata_load() {

	if (file_exists("save.ini"))
	{
	    ini_open("save.ini")
	        global.current_box =	 ini_read_real("Navigation", "Current Box", 1);
	        global.show_dex =		 ini_read_real("Display", "Galar Dex", shw.national);
	        global.show_shiny = 	 ini_read_real("Display", "Shiny Mode", false);
	        global.show_gigantamax = ini_read_real("Display", "Gigantamax", false);
        
	        var section = savedata_section_get(global.show_shiny);
	        global.countdata[0] =0
	        for (var i=1; i<=global.dex_len; i++)
	        {
	            global.savedata[i]  = ini_read_real(section,          string(i), 0);
	            global.countdata[i] = ini_read_real(section+" Count", string(i), 0);
	        }
        
        
        
	    ini_close();
	    show_debug_message("LOADED SAVE FILE.");
	}
	else
	{
	    ini_open("save.ini");
	        ini_write_real("Info", "Number", version_get());
	    ini_close();
    
	    global.current_box =	 1;
	    global.show_dex =		 0;
	    global.show_shiny = 	 false;
	    global.show_gigantamax = false;
    
	    for (var i=0; i<=global.dex_len; i++)
	        global.savedata[i] = 0;
    
	    show_debug_message("CREATED SAVE FILE.");
	}


}
