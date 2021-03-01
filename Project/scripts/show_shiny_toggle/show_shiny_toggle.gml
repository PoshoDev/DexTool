///show_shiny_toggle()
function show_shiny_toggle() {
	window_set_cursor(cr_hourglass);

	global.show_shiny = !global.show_shiny

	savedata_write("Display", "Shiny Mode", global.show_shiny);

	room_restart();


}
