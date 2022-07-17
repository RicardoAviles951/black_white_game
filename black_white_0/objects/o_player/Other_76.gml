/// @description Checks specific frames of movement sprites to play sounds.
if(event_data[? "event_type"] == "sprite event") {
	switch (event_data[? "message"]){
		case "footstep" :
		audio_sound_pitch(snd_step_wood,random_range(1.3,1.7));
		audio_sound_gain(snd_step_wood,.2,0);
		audio_play_sound(snd_step_wood,2,false);
		break;
	}
}