///hud_draw_progress();

var off = global.icon_scale * 4;
var x_s = align_x(region._50) + off;
var x_f = align_x(region._75) + off/2;
var w = align_x(region._25) - off;
var h = sprite_get_height(spr_source) * global.icon_scale / 1.75;

var percent = global.progress / global.progress_max * 100;

draw_sprite_stretched(spr_source, src.flip,
                      x_s, align_y(region.bot_left, 0 - 0.5),
                      w, h);
                      
draw_sprite_stretched(spr_source, src.green,
                      x_s, align_y(region.bot_left, 0 - 0.5),
                      w*percent/100, h);


// Text
var progress = string(global.progress)+"/"+string(global.progress_max);
var percent_t = string(percent)+"%";

var fh = sprite_get_height(spr_font);
draw_set_font(global.font);
draw_set_valign(fa_top);

draw_set_color(c_white);
draw_set_halign(fa_right);
sca = global.icon_scale * 1.25;
draw_text_transformed(x_f, align_y(region.bot_left, -0.375 - 0.5), progress, sca, sca, image_angle);

draw_set_halign(fa_left);
sca = global.icon_scale * 1.75;
draw_text_transformed(x_s, align_y(region.bot_left, -0.5 - 0.5), percent_t, sca, sca, image_angle);