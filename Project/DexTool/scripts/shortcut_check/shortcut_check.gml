///shortcut_check()

     if (keyboard_check_pressed(ord("G")))  show_galar_toggle();
else if (keyboard_check_pressed(ord("I")))  make_screenshot();
else if (keyboard_check_pressed(ord("S")))  show_shiny_toggle();

else for (var i=ord("0"); i<=ord("9"); i++)
    if (keyboard_check_pressed(i))
        box_gen_jump(i - ord("0"));