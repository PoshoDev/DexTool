///icon_path_get(str[pkmn+form], shiny?)

var str = argument0;
var shiny = argument1;

if (!shiny)
    var folder = "Regular";
else
    var folder = "Shiny";
    
var filename = "Icons\\"+folder+"\\"+string(str)+".png";

if (!file_exists(filename))
{
    if (!directory_exists("Logs"))
        directory_create("Logs")
        
    var log = file_text_open_append(working_directory+"/Logs/MissingSprites.log")
        file_text_write_string(log, str+" ("+folder+")");
        file_text_writeln(log);
    file_text_close(log);
    
    //show_debug_message("Missing Icon: "+str+" ("+folder+")");
    
    if (shiny)
        return icon_path_get(str, false);
}

return filename;