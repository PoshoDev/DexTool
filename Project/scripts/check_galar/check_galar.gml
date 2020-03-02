/// @description check_galar(id, _show?)
/// @param idee
/// @param ...
// Checks if the Pokémon can move to Sword/Shield.

var idee = argument[0];

// Sanity Check™
if (argument_count>1 && !argument[1])
    return true;

var nat = global.dexdata[idee, dex.dexno];

for (var i=1; i<array_height_2d(global.galardata); i++)
{
    //show_debug_message("Comparing "+nat+" to "+global.galardata[i, gdex.galarno]);
    
    if (nat == global.galardata[i, gdex.dexno])
        return true;
}
        
return false;
