/// @param hold
/// @param ...
///selected_set(_id)
function selected_set() {

	if (argument_count < 1)
	    var hold = instance_find(obj_slot, 0);
	else
	    var hold = argument[0];

	global.selected[dex.idno] =     hold.idno;
	global.selected[dex.dexno] =    hold.dexno;
	global.selected[dex.pokemon] =  hold.pokemon;
	global.selected[dex.form] =     hold.form;
	global.selected[dex.type1] =    hold.type1;
	global.selected[dex.type2] =    hold.type2;
	global.selected[dex.sprite] =   hold.spr;
	global.selected[dex.own] =      hold.own;

	global.counter = savedata_read_real(savedata_section_get(global.show_shiny)+" Count", hold.idno, 0);


}
