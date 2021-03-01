///change_backup()
function change_backup() {

	var timeto = 300000;

	if (global.change && current_time>global.change_time+timeto)
	{
	    global.change = false;
	    global.change_time = current_time;
    
	    change_backup_make();
	}


}
