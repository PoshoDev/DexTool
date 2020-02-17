var mx = mouse_x - dx, my = mouse_y - dy;
var mw = dw - 2, mh = dh - 2;
var mq = mx >= 0 && my >= 0 && mx < mw && my < mh;
var r = mq && mouse_check_button_released(mb_left);
var s = argument0;
draw_sprite_stretched_ext(spr_nsfs_demo_white32, 0, dx, dy, mw, mh, -1, 0.1 + mq * 0.2);
draw_set_color(0);
draw_set_alpha(0.3);
draw_text(dx + 3, dy + 1, s);
draw_set_color(-1);
draw_set_alpha(1);
draw_text(dx + 2, dy, argument0);
//
dy += dh;
if (dy >= room_height - dh) {
    dy -= floor(dy / dh) * dh;
    dx += dw;
}
if (r) {
    __button = s;
    if (!ds_map_exists(inputs, s)) inputs[?s] = ds_map_create();
    return true;
} else return false;
