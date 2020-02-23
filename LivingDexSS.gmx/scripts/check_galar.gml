///check_galar(id, show?)

var idee =  argument0;
var show =  argument1;

// Sanity Check™
if (!show)
    return true;

var nat = global.dexdata[idee, dex.dexno];

for (var i=1; i<array_height_2d(global.galardata); i++)
{
    //show_debug_message("Comparing "+nat+" to "+global.galardata[i, gdex.galarno]);
    
    if (nat == global.galardata[i, gdex.dexno])
        return true;
}
        
return false;
