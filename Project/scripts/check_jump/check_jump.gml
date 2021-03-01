function check_jump(argument0, argument1, argument2) {
	var px = argument0;
	var py = argument1;
	var pkmn = global.dexdata[argument2, dex.pokemon];
	var form = global.dexdata[argument2, dex.form];

	if (px || py)
	    return check_genfirst(pkmn, true);

	return false;



}
