// Buttons

var w = sprite_get_width(spr_source)  * 2 * 0.25;
var h = sprite_get_height(spr_source) * 2;

draw_set_font(global.font)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var charstr = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZéÉ#-'!?():@_.% /♂♀+äöü";

for (var i=0; i<string_length(charstr); i++)
{
    var surf = surface_create(w, h);
    surface_set_target(surf);
    
    draw_sprite_stretched(spr_source, src.black, 0, 0, w, h);
    draw_text_transformed((w/2)+2, (h/2)-2, string_char_at(charstr, i), 3, 3, image_angle);

    surface_reset_target();
    var spr = sprite_create_from_surface(surf, 0, 0, w, h, false, true, 0, 0);
    surface_free(surf);

    sprite_save(spr, 0, working_directory+"Export/icon_button_"+string_char_at(charstr, i)+".png");
}


// Slots

var w = sprite_get_width(spr_slot);
var h = sprite_get_height(spr_slot);

for (var i=0; i<=4; i++)
{
    var surf = surface_create(w, h);
    surface_set_target(surf);
    
    draw_set_color(get_color3(i, false));
    draw_rectangle(1, 1, w-1, h-1, false);
    
    draw_set_color(c_white);
    draw_sprite_stretched(spr_slot, 0, 0, 0, w, h);

    surface_reset_target();
    var spr = sprite_create_from_surface(surf, 0, 0, w, h, false, true, 0, 0);
    surface_free(surf);

    sprite_save(spr, 0, working_directory+"Export/icon_slot_"+string(i)+".png");
}


draw_set_default();


