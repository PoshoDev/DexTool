global.show_galar = !global.show_galar

if (file_exists("save.ini"))
{
    ini_open("save.ini")
        ini_write_real("Display", "Galar Dex", global.show_galar);
    ini_close();
}

room_restart();