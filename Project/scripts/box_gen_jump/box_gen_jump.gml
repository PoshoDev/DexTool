///box_gen_jump(gen)
function box_gen_jump(argument0) {

	var gen = argument0;

	if (gen==0 || gen==9)
	    gen = array_length_1d(global.gen_header);
    
	global.current_box = global.gen_header[gen - 1];

	scroll_do();


}
