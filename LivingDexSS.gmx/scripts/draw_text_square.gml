///draw_text_square(x, y, string, scale, halign, color)

var px =    argument0;
var py =    argument1;
var str =   argument2;
var sca =   argument3 * global.icon_scale * 2;
var alg =   argument4;
var col =   argument5;

draw_set_font(global.font);
draw_set_halign(alg);
draw_set_color(col);

draw_text_transformed(px, py, str, sca, sca, 0);
