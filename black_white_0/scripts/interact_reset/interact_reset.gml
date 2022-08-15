///This function will reset the interact global vars when switching to a new character.
function interact_reset(){
	
	global.interact_alex      = false;
	global.interact_sam       = false;
	global.interact_tristan   = false;
	global.interact_casket    = false;
	global.interact_guestbook = false;
	o_music.can_play = false;
	audio_stop_sound(snd_wait_music);

}