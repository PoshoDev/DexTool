// Saving

if (!savedata_write("Navigation", "Current Box", global.current_box))
    show_debug_message("ERROR: Can't save scrolling. Save file somehow went missing.");

// Warp

scroll_warp();

button_update_all();

show_debug_message("Scrolled to Box "+string(global.current_box));
