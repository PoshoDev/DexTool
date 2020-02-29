// Saving

if (file_exists("save.ini"))
{
    ini_open("save.ini")
        ini_write_real("Navigation", "Current Box", global.current_box);
    ini_close();
}
else
    show_debug_message("ERROR: Can't save scrolling. Save file somehow went missing.");

// Warp

scroll_warp();

button_update_all();

show_debug_message("Scrolled to Box "+string(global.current_box));
