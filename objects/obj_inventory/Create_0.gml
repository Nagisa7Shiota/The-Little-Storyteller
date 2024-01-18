/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

inventory_player = new Inventory();
inventory = new Inventory();

inventory.item_add("rock",spr_elements_rock);
inventory_player.item_add("tree",spr_elements_tree);

gui_visible = false;
global.gui_open = false;
key_released = true;

display_set_gui_size(720,720);

inventory_columns = 2;
inventory_rows = 6;

ui_padding_x = 64;
ui_padding_y = 64;
ui_panel_left = 260;
ui_border_size =  8;
ui_inventory_padding = 48;
ui_inventory_box = 64;
ui_inventory_margin = 16;