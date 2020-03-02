
if (!pressed)
{
    var plus = 0;
    var inverse = 1;
}
else
{
    var plus = height;
    var inverse = -1;
}
    
draw_sprite_ext(sprite_index, image_index, x, y+plus, scale*length, scale*inverse, image_angle, image_blend, image_alpha);

draw_set_font(global.font)
draw_set_color(color)
draw_set_halign(halign);
draw_set_valign(valign);

draw_text_transformed(x+width/2, y+height/2+plus/6, text, scale*textsize, scale*textsize, image_angle);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
