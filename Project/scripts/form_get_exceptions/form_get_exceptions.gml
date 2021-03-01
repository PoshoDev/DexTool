///form_get_exceptions(form)
function form_get_exceptions(argument0) {

	switch(argument0)
	{
	    case "!":   return "EXCLAMATION";
	    case "?":   return "QUESTION";
	    default:    return argument0;
	}


}
