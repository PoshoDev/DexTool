///button_create(x, y, type)
function button_create(argument0, argument1, argument2) {

	var hold = instance_create_depth(0, 0, depth-1, obj_button);

	with (hold)
	    button_set(argument0, argument1, argument2);
    
	return hold;


}
