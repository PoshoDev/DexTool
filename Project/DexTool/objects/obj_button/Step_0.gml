
if (mouse_x>x && mouse_x<x+width && mouse_y>y && mouse_y<y+height)
{
    hover = true;
    color = c_red;
    
    if (mouse_check_button_pressed(mb_left))
        pressed = true;
}
else
{
    hover = false;
    color = c_white;
}

if (mouse_check_button_released(mb_left))
{
    if (hover)
    {
        
    }
    
    pressed = false;
}