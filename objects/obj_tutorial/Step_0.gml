/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if tutorial_controle {
	if (keyboard_check(vk_right) or keyboard_check(vk_left)) and obj_tls.tls_counter == 0{
		tutorial_controle = false;
		show_debug_message("Controle finished");
		tutorial_text = true;
		tutorial_table = true;
	}
	else if (tutorial_text and obj_tls.tls_counter == 0){
			array_push(obj_tls.tls_element_text_list,
			"Once upon a time. A little fellow was in an empty space."
			);
			array_push(obj_tls.tls_element_text_list,
			"Alone here, it started to move itself by using the arrow keys."
			);
		
			obj_tls.tls_counter = array_length(obj_tls.tls_element_text_list);
			obj_tls.tls_stop = !obj_tls.tls_stop;
			tutorial_text = false;
			obj_tls.alarm[0] = 1;	
	}
}

if tutorial_table {
	if obj_tls.tls_index == 3 and tutorial_once{
			obj_inventory._is_unlocked = true;
			obj_table._is_unlocked = true;
			tutorial_once = false;
	}
	
	if obj_inventory.gui_visible{
		show_debug_message("Table finished");
		tutorial_table = false;
	}else if (tutorial_text and obj_tls.tls_counter == 0){
			array_push(obj_tls.tls_element_text_list,
			"After moving around, it felt a bit lonely alone here."
			);
			array_push(obj_tls.tls_element_text_list,
			"It was thinking: 'What could I possibly do?'"
			);
			array_push(obj_tls.tls_element_text_list,
			"Without any hesitation, a table with unkown powers appeared."
			);
			array_push(obj_tls.tls_element_text_list,
			"The little fellow only knew that a huge key is needed. An enter key."
			);
		
			obj_tls.tls_counter = array_length(obj_tls.tls_element_text_list);
	
			obj_tls.tls_stop = !obj_tls.tls_stop;
			tutorial_text = false;
			obj_tls.alarm[0] = 1;	
		}

}