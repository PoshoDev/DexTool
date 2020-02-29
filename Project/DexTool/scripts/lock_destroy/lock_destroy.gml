///lock_destroy()

global.selecting = noone;

with (obj_lock.plus)  { instance_destroy() };
with (obj_lock.minus) { instance_destroy() };

if (instance_exists(obj_lock))
    with (obj_lock)
        instance_destroy();