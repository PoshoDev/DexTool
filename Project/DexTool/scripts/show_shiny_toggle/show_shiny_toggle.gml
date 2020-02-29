///show_shiny_toggle()

global.show_shiny = !global.show_shiny

savedata_write("Display", "Shiny Mode", global.show_shiny);

room_restart();