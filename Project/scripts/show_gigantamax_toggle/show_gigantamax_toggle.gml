function show_gigantamax_toggle() {
	window_set_cursor(cr_hourglass);

	global.show_gigantamax = !global.show_gigantamax;
	savedata_write("Display", "Gigantamax", global.show_gigantamax);

	room_restart();
}