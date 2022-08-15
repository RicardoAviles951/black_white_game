if place_meeting(x,y,o_player) and global.park_warp == true{
	if instance_exists(o_tutorial) instance_destroy(o_tutorial);
	global.park_warp = false;
	global.spr_index = sprite_index;
	close_sq();
	audio_stop_sound(snd_birds);
	if !audio_is_playing(snd_door_open) audio_play_sound(snd_door_open,1,false);
	alarm[0] = 30;
}




