///button_do(type)

switch(argument0)
{
    case but.info:
        url_get(false);
    break;
    
    case but.area:
        url_get(true);
    break;
    
    case but.plus:
        global.counter++;
        counter_update();
    break;
    
    case but.minus:
        if (global.counter > 0)
            global.counter--;
        counter_update();
    break;
    
    case but.image:
        make_screenshot();
    break;
    
    case but.national:
        show_dex_toggle();
    break;
    
    case but.shiny:
        show_shiny_toggle();
    break;
}