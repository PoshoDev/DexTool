/// @description form_get_string(Pokémon, form)
function form_get_string(argument0, argument1) {

	var pkmn = argument0;
	var form = form_get_exceptions(argument1);

	if (form != "")
	    return string_insert("-"+form, pkmn, string_length(pkmn)+1);
	else
	    return pkmn;


}
