///button_align_y(region, unit%)
function button_align_y(argument0, argument1) {

	return align_y(argument0, argument1) - (sprite_get_height(sprite_index)  * scale)/2;


}
