///dex_galar_load(bool)

// Galar Dex data loading

enum gdex
{
    galarno,
    dexno,
    pokemon,
    type1,
    type2
}

if (argument0)
    global.galardata = csv_load("galardex");