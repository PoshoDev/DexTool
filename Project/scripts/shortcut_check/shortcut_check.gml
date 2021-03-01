///shortcut_check()
function shortcut_check() {

	// Letters
	     if (keyboard_check_pressed(ord("G")))  show_dex_toggle();
	else if (keyboard_check_pressed(ord("I")))  make_screenshot();
	else if (keyboard_check_pressed(ord("S")))  show_shiny_toggle();
	else if (keyboard_check_pressed(ord("C")))  counter_set();

	// Plus and Minus
	var key_plus =  107;
	var key_minus = 109;

	     if (keyboard_check_pressed( key_plus))  button_plusminus_shortcut(but.plus, true);
	else if (keyboard_check_released(key_plus))  button_plusminus_shortcut(but.plus, false);

	     if (keyboard_check_pressed( key_minus)) button_plusminus_shortcut(but.minus, true);
	else if (keyboard_check_released(key_minus)) button_plusminus_shortcut(but.minus, false);

	// Numbers 0-9
	for (var i=ord("0"); i<=ord("9"); i++)
	    if (keyboard_check_pressed(i))
	        box_gen_jump(i - ord("0"));


}
