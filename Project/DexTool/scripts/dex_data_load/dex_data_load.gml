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