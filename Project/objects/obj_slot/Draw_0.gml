draw_set_color(color);
draw_rectangle_color(x+1, y+1, x+global.box_scale-1, y+global.box_scale-1, color, color, color, color, false);
draw_set_color(c_white);

draw_self();


sprite_wiggly();

if (spr != -1)
    draw_sprite_ext(spr, 0, x+global.box_scale/2+plus_x, y+global.box_scale/2+plus_y, global.icon_scale*spr_plus, global.icon_scale*spr_plus, image_angle, image_blend, image_alpha);
