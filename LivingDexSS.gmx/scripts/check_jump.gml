var px = argument0;
var py = argument1;
var pkmn = global.dexdata[argument2, dex.pokemon];
var form = global.dexdata[argument2, dex.form];

if (px || py)
{
    switch(pkmn)
    {
        // Starters
        case "CHIKORITA":
        case "TREECKO":
        case "TURTWIG":
        case "VICTINI":
        case "CHESPIN":
        case "ROWLET":
        case "GROOKEY":
            return true;
        break;
        
        /*
        // Formies
        case "UNOWN":
            if (form == "A")
                return true;
        break;
        
        case "FLABÉBÉ":
            if (form == "RED FLOWER")
                return true;
        break;
        
        case "PUMPKABOO":
            if (form == "SMALL SIZE")
                return true;
        break;
        
        case "MINIOR":
            if (form == "BLUE CORE")
                return true;
        break;
                
        case "SCATTERBUG":   
        case "MILCERY":
            return true;
        break;
        */
    }
}

return false;
