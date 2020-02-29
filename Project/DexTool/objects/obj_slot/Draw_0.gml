draw_set_color(color);
draw_rectangle_color(x+1, y+1, x+global.box_scale-1, y+global.box_scale-1, color, color, color, color, false);
draw_set_color(c_white);

draw_self();

// Scaling
//image_xscale = global.icon_scale;
//image_yscale = global.icon_scale;


/// DRAW
/*
// Slot + Color

draw_set_color(color);
draw_rectangle(x+1, y+1, x+global.box_scale-1, y+global.box_scale-1, false);
draw_set_color(c_white);

draw_self();
*/

// Sprite



sprite_wiggly();

if (spr != -1)
    draw_sprite_ext(spr, 0, x+global.box_scale/2+plus_x, y+global.box_scale/2+plus_y, global.icon_scale*spr_plus, global.icon_scale*spr_plus, image_angle, image_blend, image_alpha);

/* */
/*  */
