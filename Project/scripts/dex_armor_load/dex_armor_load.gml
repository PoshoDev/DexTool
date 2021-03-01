///dex_armor_load()
function dex_armor_load() {

	// Isle of Armor Dex data loading

	/*enum gdex
	{
	    galarno,
	    dexno,
	    pokemon,
	    type1,
	    type2
	}*/

	//if (global.show_armor)
	    global.armordata = csv_load("armordex");


}
