/// @description draw_text_square(x, y, string, scale, halign, color)
/// @param x
/// @param  y
/// @param  string
/// @param  scale
/// @param  halign
/// @param  color
function draw_text_square(argument0, argument1, argument2, argument3, argument4, argument5) {

	var px =    argument0;
	var py =    argument1;
	var str =   argument2;
	var sca =   argument3 * global.icon_scale * 2;
	var alg =   argument4;
	var col =   argument5;

	draw_set_font(global.font);
	draw_set_halign(alg);
	draw_set_color(col);

	draw_text_transformed(px, py, string_hash_to_newline(str), sca, sca, 0);



}
