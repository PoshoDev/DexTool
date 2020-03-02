///hud_draw_counter()

// The famous counter
if (instance_exists(obj_lock) || global.counter>0)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text_transformed(align_x(region.mid_right, 0), align_y(region.mid_right, 0), global.counter, global.icon_scale*3, global.icon_scale*3, image_angle);
}