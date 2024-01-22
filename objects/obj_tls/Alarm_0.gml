/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if obj_inventory.gui_visible {
	obj_inventory.gui_visible = !obj_inventory.gui_visible;
	audio_play_sound(snd_table_close,0,false);
}
if obj_player.player_stop {
	obj_player.player_stop = ! obj_player.player_stop;
}

if(tls_counter > tls_index){
	show_debug_message(tls_element_text_list);
	tls_element_text = tls_element_text_list[tls_index];
	tls_index++;
	alarm[0] = 5 * room_speed;
}
else if!(tls_counter == 0 and tls_index == 0){
	tls_element_text = "";
	for(var i = 0; i < tls_counter; i++){
		tls_element_text += " " + tls_element_text_list[i]; 
	}
	tls_counter = 0;
	tls_index = 0;
	array_delete(tls_element_text_list, 0, array_length(tls_element_text_list));
	tls_stop = !tls_stop;
}