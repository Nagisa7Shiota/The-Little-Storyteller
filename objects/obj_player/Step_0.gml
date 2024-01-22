sprite_index = spr_player_stand;
move_wrap(true, false, 75);

if obj_table._is_unlocked and !audio_is_playing(snd_whistle){
	audio_play_sound(snd_whistle,0,true);
}

if !player_stop{
	if keyboard_check(vk_right){
	x += 3.1;
	sprite_index = spr_player_right;
	if !audio_is_playing(snd_player_walk)
	{
		audio_play_sound(snd_player_walk,0,false);
	}
	}

	if keyboard_check(vk_left){
	x -= 3.1;
	sprite_index = spr_player_left;
	if !audio_is_playing(snd_player_walk)
	{
		audio_play_sound(snd_player_walk,0,false);
	}
	}
}