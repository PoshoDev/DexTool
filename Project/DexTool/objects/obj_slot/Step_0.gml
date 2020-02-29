
if (hover)
    if (mouse_check_button_pressed(mb_left))
        if (global.selecting==self && instance_exists(obj_lock))
            lock_destroy();
        else lock_create(self);
    else if (global.selecting == noone)
        selected_set(self);
    