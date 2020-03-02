///hud_draw_progress();

//var scale = global.icon_scale * 2;
var h = sprite_get_height(spr_source) * global.icon_scale / 1.75;

draw_sprite_stretched(spr_source, src.flip,
                      align_x(region._50), align_y(region.bot_left, 0),
                      align_x(region._25), h);

/*draw_sprite_ext(spr_source, src.white,
                align_x(region.bot_left, 0),
                align_y(region.bot_left, 0),
                scale, -scale, image_angle, image_blend, image_alpha);
                
draw_sprite_ext(spr_source, src.green,
                align_x(region.bot_left, 0),
                align_y(region.bot_left, 0),
                scale/2, scale, image_angle, image_blend, image_alpha);*/