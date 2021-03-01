///url_get(area?)
function url_get(argument0) {

	var location = argument0;

	if (check_galar(real(global.selected[dex.idno])))
	{
	    var pkmn = string_lower(global.selected[dex.pokemon]);
	    var url = "https://www.serebii.net/pokedex-swsh/"+pkmn+"/";

	    if (location)
	        url = string_insert("/locations.shtml", url, string_length(url)+1);
	}
	else
	{
	    var dexno = global.selected[dex.dexno];
	    var url = "https://www.serebii.net/pokedex-sm/"+dexno+".shtml";

	    if (location)
	        url = string_replace(url, "sm/", "sm/location/");
	}

	url_open(url);


}
