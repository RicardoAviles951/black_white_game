if move ==false{
if alarm[0] = -1 alarm[0] = 30;
}

//Play ambient sounds
if !audio_is_playing(snd_birds){
	audio_play_sound(snd_birds,1,true);
	audio_sound_gain(snd_birds,.75,1000);
}