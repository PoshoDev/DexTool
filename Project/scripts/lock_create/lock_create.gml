///lock_create(obj_id)
function lock_create(argument0) {

	global.selecting = argument0;

	selected_set(argument0);
    
	if (!instance_exists(obj_lock))
	    with (instance_create_depth(x, y, depth-1, obj_lock))
	    {
	        plus = button_create(0, 0, but.plus);
	        minus = button_create(0, 0, but.minus);
        
	        info = button_create(0, 0, but.info);
	        area = button_create(0, 0, but.area);
	    }

	button_update_all();

	selected_output();


}
