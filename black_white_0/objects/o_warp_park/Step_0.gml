if place_meeting(x,y,o_player) and global.park_warp == true{
	global.park_warp = false;
	close_sq();
	if !audio_is_playing(snd_door_open) audio_play_sound(snd_door_open,1,false);
	alarm[0] = 30;
}




