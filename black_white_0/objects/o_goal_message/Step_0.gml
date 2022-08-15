
if global.rm != rooms.ending
{
	if keyboard_check_pressed(vk_enter){
		audio_stop_sound(snd_piano);
		room_goto(rm_thewait);
	}
	
}
else
{
	if keyboard_check_pressed(vk_enter){
		audio_stop_sound(snd_piano);
		room_goto(rm_ending);
	}
}