/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if keyboard_check(vk_enter) and key_released and collision_rectangle(1023, 479, 1071, 528, obj_player, true, false) {
	gui_visible = !gui_visible;
	global.gui_open = !global.gui_open;
	key_released = false;
}
else if keyboard_check_released(vk_enter){
	key_released = true;
}
if gui_visible and !collision_rectangle(1023, 479, 1071, 528, obj_player, true, false){
	obj_player.x = x;
}