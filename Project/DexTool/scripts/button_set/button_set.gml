///button_set(x_, y_, type)

x_ = argument0;
y_ = argument1;
type = argument2;

image_speed = 0;

length = 0.25;
scale = global.icon_scale;
color = c_white;
halign = fa_center;
valign = fa_middle;

switch(type)
{
    case but.plus:
        text = "+";
        image_index = 4;
        scale = global.icon_scale * 1.5;
        
        x_ = align_x(region.mid_right, 1.75);
        y_ = align_y(region.mid_right, 0);
    break;
    
    case but.minus:
        text = "-";
        image_index = 4;
        
        x_ = align_x(region.mid_right, -2);
        y_ = align_y(region.mid_right, 0);
    break;
};

x = x_;
y = __view_get(e__VW.YView, 0) + y_;

width =  sprite_get_width(sprite_index)  * scale * length;
height = sprite_get_height(sprite_index) * scale;