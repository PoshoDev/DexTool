var pkmn = global.dexdata[argument0, dex.pokemon];
var form = global.dexdata[argument0, dex.form];
var bank = global.dexdata[argument0, dex.bankable];

if (bank == "FALSE")
    return false;

switch(form)
{
    case "MEGA":
    case "MEGA (X)":
    case "MEGA (Y)":
    case "PRIMAL":
        return false;
    break;
}

switch(pkmn)
{
    case "ARCEUS":
    case "SILVALLY":
        if (form != "NORMAL")
            return false;
    break;
}

return true;
