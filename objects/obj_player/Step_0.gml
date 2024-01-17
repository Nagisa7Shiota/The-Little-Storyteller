sprite_index = spr_player_stand;

if !global.gui_open{
	if keyboard_check(vk_right){
	x += 3.1;
	sprite_index = spr_player_right;
	}

	if keyboard_check(vk_left){
	x -= 3.1;
	sprite_index = spr_player_left;
	}
}

move_wrap(true, true, 55);