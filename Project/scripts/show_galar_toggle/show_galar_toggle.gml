global.show_galar = !global.show_galar

savedata_write("Display", "Galar Dex", global.show_galar);

room_restart();