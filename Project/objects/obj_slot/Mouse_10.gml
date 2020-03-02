
if (mouse_check_button(mb_right))
{
    own_prev = own;
    click_slot(global.various_to);
    progress_update();
}

hover = true;
color = get_color3(own, true);
