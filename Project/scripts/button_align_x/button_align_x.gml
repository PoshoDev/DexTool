///button_align_x(region, unit%)
function button_align_x(argument0, argument1) {

	return align_x(argument0, argument1) - (sprite_get_width(sprite_index)  * scale * length)/2;


}
