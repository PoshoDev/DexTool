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
        
        global.countdata[global.selecting.idno] = global.counter;
        savedata_write(savedata_section_get(global.show_shiny)+" Count", global.selecting.idno, global.counter);
        change_add();
    break;
    
    case but.minus:
        if (global.counter > 0)
            global.counter--;
        
        global.countdata[global.selecting.idno] = global.counter;
        savedata_write(savedata_section_get(global.show_shiny)+" Count", global.selecting.idno, global.counter);
        change_add();
    break;
    
    case but.image:
        make_screenshot();
    break;
    
    case but.national:
        show_galar_toggle();
    break;
    
    case but.shiny:
        show_shiny_toggle();
    break;
}