///make_screenshot()
function make_screenshot() {

	if (!global.show_shiny)
	    var sprtemp = make_screenshot_regular();
	else
	    var sprtemp = make_screenshot_shiny();

	draw_set_default();


	// Saving
	var filename = "dex";
	var ext = ".png";
	sprite_save(sprtemp, 0, filename+ext);

	var user = string(environment_get_variable("USERNAME"));
	show_debug_message("Image exported to C:\Users"+chr(92)+user+"\AppData\Local\DexTool"+filename+ext+".");


}
