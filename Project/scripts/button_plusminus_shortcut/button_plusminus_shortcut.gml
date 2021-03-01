///button_plusminus_shortcut(button, pressed?)
function button_plusminus_shortcut(argument0, argument1) {

	var button = argument0;
	var pressed = argument1;

	if (instance_exists(obj_lock))
	{
	    switch(button)
	    {
	        case but.plus:  var hold = obj_lock.plus;  break;
	        case but.minus: var hold = obj_lock.minus; break;
        
	        default:
	            show_debug_message("ERROR: Wrong parameter assignment.");
	            return;
	        break;
	    }
    
	    hold.hover = true;
	    hold.pressed = pressed;
    
	    if (pressed)
	        with (hold)
	            button_do(type);
	}


}
