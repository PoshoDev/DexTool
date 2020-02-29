///lock_destroy()

global.selecting = noone;

if (instance_exists(obj_lock))
    with (obj_lock)
        instance_destroy();