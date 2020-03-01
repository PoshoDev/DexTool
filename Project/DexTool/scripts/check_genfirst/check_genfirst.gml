///gen_checkfirst(pkmn, ignoreBULBASAUR?)

var pkmn = argument0;
var ignore = argument1;

// Sanity Check
if (ignore && pkmn=="BULBASAUR")
    return false;

switch(pkmn)
{
    case "BULBASAUR":
    case "CHIKORITA":
    case "TREECKO":
    case "TURTWIG":
    case "VICTINI":
    case "CHESPIN":
    case "ROWLET":
    case "GROOKEY":
        return true;
    break;
    
    default:
        return false;
    break;
}