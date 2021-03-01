function show_dex_toggle() {
	window_set_cursor(cr_hourglass);

	if (++global.show_dex >= shw.LENGTH)
	    global.show_dex = 0;

	savedata_write("Display", "Galar Dex", global.show_dex);

	room_restart();


}
