/// @description array_draw_debug(array,x,y,x_space,y_space)
/// @param array
/// @param x
/// @param y
/// @param x_space
/// @param y_space
/***************************************************
  Quickly check if a .csv has been loaded correctly
  
  argument0 - The array you want to display
  argument1 - The x position that you want to draw the array
  argument1 - The y position that you want to draw the array
 ***************************************************/
var arr = argument[0];
var xx = argument[1];
var yy = argument[2];
var xx_sep = argument[3];
var yy_sep = argument[4];

draw_set_color(c_white);

for (var i = 0; i < array_height_2d(arr); i++) {
    for (var j = 0; j < array_length_2d(arr, i); j++) {
        draw_text(xx + (xx_sep * j), yy + (yy_sep * i), string_hash_to_newline(string(arr[i, j])));
    }
}

draw_set_color(c_black);
