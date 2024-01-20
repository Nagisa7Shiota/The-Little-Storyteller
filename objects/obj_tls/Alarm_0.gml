/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(tls_counter > tls_index){
	show_debug_message(tls_element_text_list);
	tls_element_text = tls_element_text_list[tls_index];
	tls_index++;
	alarm[0] = 5 * room_speed;
}
else if!(tls_counter == 0 and tls_index == 0){
	tls_counter = 0;
	tls_index = 0;
	tls_stop = !tls_stop;
	obj_player.player_stop = !obj_player.player_stop;
	tls_element_text = "";
}