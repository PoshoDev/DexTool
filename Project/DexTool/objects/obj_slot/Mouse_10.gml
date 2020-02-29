/// @description  MOUSE ENTER

if (mouse_check_button(mb_right))
    click_slot(global.various_to);

hover = true;

global.selected[dex.dexno] = dexno;
global.selected[dex.pokemon] = pokemon;
global.selected[dex.form] = form;
global.selected[dex.type1] = type1;
global.selected[dex.type2] = type2;
global.selected[dex.sprite] = spr;
global.selected[dex.own] = own;

color = get_color3(own, true);

