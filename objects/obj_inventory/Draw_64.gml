/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

var g_width = display_get_gui_width();
var g_height = display_get_gui_height();

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var inventory_item = inventory.item_get();
var inventory_player_item = inventory_player.item_get();

if gui_visible and !obj_tls.tls_stop{
draw_set(c_black, 0.2);
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	(g_width - ui_padding_x) + ui_border_size,
	(g_height - ui_padding_y) + ui_border_size,
	false
);

draw_set(make_colour_rgb(112, 41, 5), 1);
draw_rectangle(
	ui_padding_x,
	ui_padding_y,
	(g_width - ui_padding_x),
	(g_height - ui_padding_y),
	false
);

draw_set(make_colour_rgb(96, 38, 7), 1);
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	(g_width - ui_padding_x) - ui_border_size,
	(g_height - ui_padding_y) - ui_border_size,
	false
);

draw_set(c_maroon, 1);
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	ui_padding_x + ui_panel_left + ui_border_size,
	g_height - ui_padding_y - ui_border_size,
	false
);

draw_set_font(fn_Arial);
text_align(fa_left, fa_top);

draw_set(c_black, 0.5);
draw_text(
	ui_padding_x + (ui_border_size * 3) + 4,
	ui_padding_y + (ui_border_size * 4) + 4,
	"Player"
);

draw_set(c_white, 1);
draw_text(
	ui_padding_x + (ui_border_size * 3),
	ui_padding_y + (ui_border_size * 4),
	"Player"
);

draw_set(c_black, 0.5);
draw_text_ext_transformed(
ui_padding_x + (ui_border_size * 3) + 4 + 150, 
ui_padding_y + (ui_border_size * 4) + 4,
"Hover with the mouse",
20,
99,
0.7,
0.7,
0);

draw_set(c_white, 1);
draw_text_ext_transformed(
ui_padding_x + (ui_border_size * 3) + 150, 
ui_padding_y + (ui_border_size * 4),
"Hover with the mouse",
20,
99,
0.7,
0.7,
0);

draw_set(c_black, 0.5);
draw_text(
	ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin + 4,
	ui_padding_y + (ui_border_size * 4) + 4,
	"Table"
);

draw_set(c_white, 1);
draw_text(
	ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin,
	ui_padding_y + (ui_border_size * 4),
	"Table"
);

draw_set(c_black, 0.5);
draw_text_ext_transformed(
ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin + 4 + 150, 
ui_padding_y + (ui_border_size * 4) + 4,
"Press C to create",
0,
9999,
0.7,
0.7,
0);

draw_set(c_white, 1);
draw_text_ext_transformed(
ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin + 150, 
ui_padding_y + (ui_border_size * 4),
"Press C to create",
0,
9999,
0.7,
0.7,
0);

draw_set(c_black, 0.5);
draw_text_ext_transformed(
ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin + 4 + 150, 
ui_padding_y + (ui_border_size * 4) + 4 + 30,
"Press T to tell",
0,
9999,
0.7,
0.7,
0);

draw_set(c_white, 1);
draw_text_ext_transformed(
ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin + 150, 
ui_padding_y + (ui_border_size * 4) + 30,
"Press T to tell",
0,
9999,
0.7,
0.7,
0);

for (var row = 0; row < inventory_rows; row++){
	var pos_y = ui_padding_y + (ui_border_size * 13) + (row * (ui_inventory_margin + ui_inventory_box));
	for(var column = 0; column < inventory_columns; column++){
		var pos_x = ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_padding + (column * (ui_inventory_margin + ui_inventory_box))
	
	draw_sprite_ext(
		spr_inventory_box,
		0,
		pos_x + 4,
		pos_y + 4,
		1, 1, 0, c_black, 0.4
	);
	
	draw_sprite_ext(
		spr_inventory_box,
		0,
		pos_x,
		pos_y,
		1, 1, 0, c_white, 1
	);
	
	draw_sprite_ext(
		spr_inventory_box,
		0,
		pos_x - 300 + ui_padding_x + 4,
		pos_y + 4,
		1, 1, 0, c_black, 0.4
	);
	
	draw_sprite_ext(
		spr_inventory_box,
		0,
		pos_x - 300 + ui_padding_x,
		pos_y,
		1, 1, 0, c_white, 1
	);

	var inventory_index = (row * inventory_columns) + column;
	if(inventory_index <= array_length(inventory_item)-1){
		draw_sprite(inventory_item[inventory_index].sprite, 0, pos_x, pos_y);
	}
	
	var inventory_player_index = (row * inventory_columns) + column;
	if(inventory_player_index <= array_length(inventory_player_item)-1){
		draw_sprite(inventory_player_item[inventory_player_index].sprite, 0, pos_x -300 +  ui_padding_x, pos_y);
	}
	
	if(mx >= pos_x && mx <= pos_x + ui_inventory_box){
		if(my >= pos_y && my <= pos_y + ui_inventory_box){
		draw_set(c_yellow, 0.2);
		draw_rectangle(
		pos_x,
		pos_y,
		pos_x + ui_inventory_box,
		pos_y + ui_inventory_box,
		false
		);
		draw_reset();
	}
	}
	else if(mx >= pos_x - 300 + ui_padding_x && mx <= pos_x + ui_inventory_box - 300 + ui_padding_x){
		if(my >= pos_y && my <= pos_y + ui_inventory_box){
			draw_set(c_yellow, 0.2);
		draw_rectangle(
		pos_x - 300 + ui_padding_x,
		pos_y,
		pos_x + ui_inventory_box - 300 + ui_padding_x,
		pos_y + ui_inventory_box,
		false
		);
		draw_reset();
		}
	}
	
	}

}
}