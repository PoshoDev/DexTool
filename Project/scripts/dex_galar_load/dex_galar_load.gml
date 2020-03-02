///dex_galar_load()

// Galar Dex data loading

enum gdex
{
    galarno,
    dexno,
    pokemon,
    type1,
    type2
}

//if (global.show_galar)
    global.galardata = csv_load("galardex");