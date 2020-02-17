///draw_guidelines(debug only?)

if (!argument0 || debug_mode)
{
    draw_rectangle(global.window_width/2, view_yview[0], global.window_width-1, global.window_height*0.6+view_yview[0], true)
    draw_rectangle(global.window_width/2, global.window_height*0.6+view_yview[0], global.window_width-1, global.window_height*0.8+view_yview[0], true)
    draw_rectangle(global.window_width/2, global.window_height*0.8+view_yview[0], global.window_width-1, global.window_height-1+view_yview[0], true)
    
    if (sprite_exists(global.selected[dex.sprite]))
        draw_rectangle( global.window_width*0.75 - sprite_get_width(global.selected[dex.sprite])/2  * global.icon_scale*3,
                        global.window_height*global.hud_pokemon_rate - sprite_get_height(global.selected[dex.sprite])/2 * global.icon_scale*3 + view_yview[0],
                        global.window_width*0.75 + sprite_get_width(global.selected[dex.sprite])/2  * global.icon_scale*3,
                        global.window_height*global.hud_pokemon_rate + sprite_get_height(global.selected[dex.sprite])/2 * global.icon_scale*3 + view_yview[0],
                        true);
}
