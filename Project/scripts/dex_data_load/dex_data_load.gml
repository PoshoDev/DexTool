///dex_data_load()

// National Dex data loading

enum dex
{
    idno,
    dexno,
    pokemon,
    form,
    type1,
    type2,
    boxable,
    bankable,
    sprite,
    own
}

global.dexdata = csv_load("pokedata");

// NIDORAN temp fix
global.dexdata[56,2] = "NIDORAN";
global.dexdata[56,3] = "FEMALE";
global.dexdata[59,2] = "NIDORAN";
global.dexdata[59,3] = "MALE";