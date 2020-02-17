///draw_text_hud(string, size, position, color)

/* Text Size Guide
1.0 Small
1.5 Form
2.0 Pokemon Name & No.
-------- */


var str = argument0;
var size = argument1;
var pos = argument2;
var col = argument3;

if (sprite_exists(global.selected[dex.sprite]))
{
    var sh = sprite_get_height(global.selected[dex.sprite])/2;
    
    if (pos < 0)
    {
        var start = sh * global.icon_scale * 3 * (-1) - sprite_get_height(spr_font) * global.icon_scale * 2;
        var extra = 1;
    }
    else if (pos > 0)
    {
        var start = sh * global.icon_scale * 3;
        var extra = -1;
    }
    else
    {
        var start = 0;
        var extra = 0;
    }
}
else
{
    var start = 0;
    var extra = 0;
}

var len = sprite_get_height(spr_font)*global.icon_scale*2*(pos+extra) + 4*(pos+extra);
var sca = global.icon_scale * size * 2;

var mid_x = global.window_width * 0.75;
var mid_y = global.window_height * global.hud_pokemon_rate + view_yview[0];

draw_set_font(global.font);
draw_set_halign(fa_middle);
draw_set_color(col);

draw_text_transformed(mid_x, mid_y+start+len, str, sca, sca, 0);

draw_set_color(c_white);
