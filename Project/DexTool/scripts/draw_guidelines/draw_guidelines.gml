/// @description draw_guidelines(debug only?)
/// @param debug only?

if (argument0 || debug_mode)
{
    // Upper
    draw_rectangle(global.window_width/2, __view_get( e__VW.YView, 0 ), global.window_width-1, global.window_height*0.6+__view_get( e__VW.YView, 0 ), true)
    
    // Mid-Left
    draw_rectangle(global.window_width/2, global.window_height*0.6+__view_get( e__VW.YView, 0 ), global.window_width*0.75-1, global.window_height*0.8+__view_get( e__VW.YView, 0 ), true)
    
    // Mid-Right
    draw_rectangle(global.window_width*0.75, global.window_height*0.6+__view_get( e__VW.YView, 0 ), global.window_width-1, global.window_height*0.8+__view_get( e__VW.YView, 0 ), true)
    draw_line_color(global.window_width*0.75 + global.window_width*0.25/2, global.window_height*0.6+__view_get( e__VW.YView, 0 ), global.window_width*0.75 + global.window_width*0.25/2, global.window_height*0.8+__view_get( e__VW.YView, 0 ), c_green, c_green)
    draw_line_color(global.window_width*0.75, global.window_height * 0.7+__view_get( e__VW.YView, 0 ), global.window_width, global.window_height * 0.7+__view_get( e__VW.YView, 0 ), c_green, c_green)
    
    // Bottom
    draw_rectangle(global.window_width/2, global.window_height*0.8+__view_get( e__VW.YView, 0 ), global.window_width-1, global.window_height-1+__view_get( e__VW.YView, 0 ), true)
    
    // Pokémon
    if (sprite_exists(global.selected[dex.sprite]))
        draw_rectangle( global.window_width*0.75 - sprite_get_width(global.selected[dex.sprite])/2  * global.icon_scale*3,
                        global.window_height*global.hud_pokemon_rate - sprite_get_height(global.selected[dex.sprite])/2 * global.icon_scale*3 + __view_get( e__VW.YView, 0 ),
                        global.window_width*0.75 + sprite_get_width(global.selected[dex.sprite])/2  * global.icon_scale*3,
                        global.window_height*global.hud_pokemon_rate + sprite_get_height(global.selected[dex.sprite])/2 * global.icon_scale*3 + __view_get( e__VW.YView, 0 ),
                        true);
}
