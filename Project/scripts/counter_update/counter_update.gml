global.countdata[global.selecting.idno] = global.counter;
savedata_write(savedata_section_get(global.show_shiny)+" Count", global.selecting.idno, global.counter);
change_add();