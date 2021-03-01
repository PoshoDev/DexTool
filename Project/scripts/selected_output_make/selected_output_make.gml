///selected_output_make(directory, filename, string)
function selected_output_make(argument0, argument1, argument2) {

	var folder =    argument0;
	var filename =  argument1;
	var str =       argument2;

	var file = file_text_open_write(working_directory+folder+filename+".txt");
	    file_text_write_string(file, str);
	file_text_close(file);


}
