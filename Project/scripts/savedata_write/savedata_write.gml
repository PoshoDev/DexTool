///savedata_write(section, key, value)

if (file_exists("save.ini"))
{
    ini_open("save.ini");
        if (typeof(argument2) == "string")
            ini_write_string(argument0, argument1, argument2);
        else
            ini_write_real(argument0, argument1, argument2);
    ini_close();
    
    return true;
}

show_debug_message("ERROR: Missing save file.");
return false;