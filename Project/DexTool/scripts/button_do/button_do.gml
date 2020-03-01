///button_do(type)

switch(argument0)
{
    case but.plus:
        global.counter++;
        
        savedata_write(savedata_section_get(global.show_shiny)+" Count", global.selecting.idno, global.counter);
        change_add();
    break;
    
    case but.minus:
        if (global.counter > 0)
            global.counter--;
        
        savedata_write(savedata_section_get(global.show_shiny)+" Count", global.selecting.idno, global.counter);
        change_add();
    break;
}