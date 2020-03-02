///change_backup_make()

if (file_exists("save.ini"))
{
    if (!directory_exists("Backups"))
        directory_create("Backups")
        
    var filename = "save_"+string(date_get_second_of_year(date_current_datetime()))+".ini";
    
    file_copy("save.ini", working_directory+"/Backups/"+filename);
    
    show_debug_message("Saved Backup as "+filename+".");
}