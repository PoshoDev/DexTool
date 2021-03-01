/// @description  DRAW

hud_draw_selected();
hud_draw_counter();
hud_draw_progress();

// Debug
draw_guidelines(false);

draw_reset();

draw_sprite_ext(spr_badge, 0, 452, 84, 4, 4, image_angle, image_blend, image_alpha);