/// @description check_galar(id, _show?)
/// @param idee
/// @param ...
function show_check() {
	// Checks if the Pokémon can move to Sword/Shield.

	var idee = argument[0];

	// Sanity Check™
	if (argument_count>1 && argument[1]==shw.national)
	    return true;

	var nat = global.dexdata[idee, dex.dexno];

	switch(global.show_dex)
	{
	    case shw.galar:
	        for (var i=1; i<array_height_2d(global.galardata); i++)
	            if (nat == global.galardata[i, gdex.dexno])
	                return true;
	    break;
    
	    case shw.armor:
	        for (var i=1; i<array_height_2d(global.armordata); i++)
	            if (nat == global.armordata[i, gdex.dexno])
	                return true;
	    break;
	}
        
	return false;



}
