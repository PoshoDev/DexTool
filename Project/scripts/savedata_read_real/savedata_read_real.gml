///savedata_read_real(section, key, default)
function savedata_read_real(argument0, argument1, argument2) {

	if (file_exists("save.ini"))
	{
	    ini_open("save.ini");
	        var temp = ini_read_real(argument0, argument1, argument2);
	    ini_close();
    
	    return temp;
	}

	show_debug_message("ERROR: Missing save file.");
	return argument2;


}
