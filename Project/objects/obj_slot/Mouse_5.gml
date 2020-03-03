/// @description  CLICKEDY CLICK

own_prev = own;

if (++own > 2/*4*/)
    own = 0;
    
progress_update();

global.various_to = own;

click_slot(own);
