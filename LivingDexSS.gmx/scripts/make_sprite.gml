///make_sprite(pokemon, form)

var pkmn = argument0;
var form = argument1;

var sprtemp;
var str = pkmn;

if (form != "")
{
    str = string_insert("-"+form, pkmn, string_length(pkmn)+1);
    show_debug_message(str);   
}

sprtemp = sprite_add("Icons\Regular\"+string(str)+".png",0,false,false,19,14);

if (sprite_get_width(sprtemp) > 40 || sprite_get_height(sprtemp) > 30 || sprite_get_height(sprtemp) == 29)
    sprite_set_offset(sprtemp, sprite_get_width(sprtemp)/2, sprite_get_height(sprtemp)/2);
    
return sprtemp;
