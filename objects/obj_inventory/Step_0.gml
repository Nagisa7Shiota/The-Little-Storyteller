/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if _is_unlocked{
	if !gui_visible and collision_rectangle(1023, 479, 1071, 528, obj_player, true, false) and !obj_tls.tls_stop
	{
		display_text = true;
	}
	else{
		display_text = false;
	}
	if keyboard_check(vk_enter)
	and key_released
	and collision_rectangle(1023, 479, 1071, 528, obj_player, true, false)
	and !obj_tls.tls_stop
	{
		gui_visible = !gui_visible;
		if gui_visible{
			audio_play_sound(snd_table_open,0,false);
		}
		else{
			audio_play_sound(snd_table_close,0,false);
		}
		obj_player.player_stop = !obj_player.player_stop;
		key_released = false;
	}
	else if keyboard_check_released(vk_enter){
		key_released = true;
	}
	if gui_visible and !collision_rectangle(1023, 479, 1071, 528, obj_player, true, false){
		obj_player.x = x;
	}

	if gui_visible and mouse_check_button_released(mb_left) {
		var mx = device_mouse_x_to_gui(0);
		var my = device_mouse_y_to_gui(0);

		var inventory_item = inventory.item_get();
		var inventory_player_item = inventory_player.item_get();
	
		for (var row = 0; row < inventory_rows; row++){
			var pos_y = ui_padding_y + (ui_border_size * 13) + (row * (ui_inventory_margin + ui_inventory_box));
			for(var column = 0; column < inventory_columns; column++){
				var pos_x = ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_padding + (column * (ui_inventory_margin + ui_inventory_box))
			
	
				if(mx >= pos_x && mx <= pos_x + ui_inventory_box){
					if(my >= pos_y && my <= pos_y + ui_inventory_box){
						var inventory_index = (row * inventory_columns) + column;
						if(inventory_index <= array_length(inventory_item) - 1){
							show_debug_message(inventory_item[inventory_index].name);
						
							inventory_player.item_add(inventory_item[inventory_index].name, inventory_item[inventory_index].sprite);
							inventory.item_remove(inventory_item[inventory_index].name);
							audio_play_sound(snd_table_switch,0,false);
						}
						else{
							show_debug_message("Nope");
						}
					}
				}
				else if(mx >= pos_x - 300 + ui_padding_x && mx <= pos_x + ui_inventory_box - 300 + ui_padding_x){
				if(my >= pos_y && my <= pos_y + ui_inventory_box){
						var inventory_player_index = (row * inventory_columns) + column;
						if(inventory_player_index <= array_length(inventory_player_item) - 1){
							show_debug_message(inventory_player_item[inventory_player_index].name);
						
							inventory.item_add(inventory_player_item[inventory_player_index].name, inventory_player_item[inventory_player_index].sprite);
							inventory_player.item_remove(inventory_player_item[inventory_player_index].name);
							audio_play_sound(snd_table_switch,0,false);
						}
						else{
							show_debug_message("Nope");
							}
						}
					}
	
			}

		}
	}
}