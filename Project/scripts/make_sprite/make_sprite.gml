///make_sprite(pokemon, form)
function make_sprite(argument0, argument1) {

	var pkmn = argument0;
	var form = argument1;

	var str = pkmn;

	if (form != "")
	    str = form_get_string(pkmn, form);

	var path = icon_path_get(str, global.show_shiny);
	var sprtemp = sprite_add(path, 0, false, false, 19, 14);

	if (sprite_get_width(sprtemp) > 40 || sprite_get_height(sprtemp) > 30 || sprite_get_height(sprtemp) == 29 || pkmn=="ALCREMIE")
	    sprite_set_offset(sprtemp, sprite_get_width(sprtemp)/2, sprite_get_height(sprtemp)/2);
    
	return sprtemp;


}
