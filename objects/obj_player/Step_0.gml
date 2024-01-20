sprite_index = spr_player_stand;
move_wrap(true, false, 75);


if !player_stop{
	if keyboard_check(vk_right){
	x += 3.1;
	sprite_index = spr_player_right;
	}

	if keyboard_check(vk_left){
	x -= 3.1;
	sprite_index = spr_player_left;
	}
}