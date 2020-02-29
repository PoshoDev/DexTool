/// @description form_get_string(Pokémon, form)
/// @param Pokémon
/// @param  form

var pkmn = argument0;
var form = argument1;

var field = form;

if (pkmn == "ALCREMIE")
    form = form_get_alcremie(form);
else
{
    switch(form)
    {
        case "FEMALE":
        case "MALE":
            if (form="MALE" || !form_get_gender_major(pkmn))
                form = "";
        break;
        
        case "!":
            form = "EXCLAMATION";
        break;
        
        case "?":
            form = "QUESTION";
        break;
        
        case "SMALL SIZE":
        case "AVERAGE SIZE":
        case "LARGE SIZE":
        case "SUPER SIZE":
            form = "";
        break;
    }
}


if (form != "")
    return string_insert("-"+form, pkmn, string_length(pkmn)+1);
else
    return pkmn;
