global.show_shiny = !global.show_shiny

if (file_exists("save.ini"))
{
    ini_open("save.ini")
        ini_write_real("Display", "Shiny Mode", global.show_shiny);
    ini_close();
}

room_restart();
