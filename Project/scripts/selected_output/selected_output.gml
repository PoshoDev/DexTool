///selected_export()
function selected_output() {

	var folder = "Output/";

	if (!directory_exists(folder))
	    directory_create(folder)

	selected_output_make(folder, "dexno",   global.selected[dex.dexno]);
	selected_output_make(folder, "pokemon", global.selected[dex.pokemon]);
	selected_output_make(folder, "form",    global.selected[dex.form]);
	selected_output_make(folder, "own",     global.selected[dex.own]);
	selected_output_make(folder, "count",   global.counter);
	sprite_save(global.selected[dex.sprite], 0, working_directory+folder+"icon.png");
    
	show_debug_message("Output exported.");


}
