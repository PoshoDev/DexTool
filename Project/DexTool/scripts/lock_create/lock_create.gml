///lock_create(obj_id)

global.selecting = argument0;

selected_set(argument0);
    
if (!instance_exists(obj_lock))
    instance_create_depth(x, y, depth-1, obj_lock)