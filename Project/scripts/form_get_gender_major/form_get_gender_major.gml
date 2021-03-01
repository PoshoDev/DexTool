/// @description form_get_gender_major(Pokémon)
/// @param Pokémon
function form_get_gender_major(argument0) {

	switch(argument0)
	{
	    case "NIDORAN": //temp
	    case "HIPPOPOTAS":
	    case "HIPPOWDON":
	    case "UNFEZANT":
	    case "FRILLISH":
	    case "JELLICENT":
	    case "PYROAR":
	    case "MEOWSTIC":
	    case "INDEEDEE":
	        return true;
	    break;
    
	    default:
	        return false;
	    break;    
	}



}
