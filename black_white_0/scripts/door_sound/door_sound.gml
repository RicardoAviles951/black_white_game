// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function door_sound(){
	if !audio_is_playing(snd) audio_play_sound(snd,1,false);
}