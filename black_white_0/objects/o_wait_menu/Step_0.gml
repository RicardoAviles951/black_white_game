get_input();
if instance_exists(o_player) o_player.idle = true;
//dynamically sets array length based on menu level.
op_length = array_length(option);

pos+= menu_down - menu_up;
//resets position based on array length
if pos >= op_length pos = 0;
if pos< 0 pos = op_length - 1;

if num >=3 stage = waitmenu.ending;

if keyboard_check_pressed(vk_enter){
	
	global.spawned = false;
	switch(stage){
		case waitmenu.norm:
		switch(pos){
		case 0: //Tristan
			global.state = states.tristan;
			interact_reset();
			if !audio_is_playing(snd_chew) audio_play_sound(snd_chew,1,false);
			var t = time_source_create(time_source_game,1,time_source_units_seconds,rm_delay,[rm_bathroom]);
			time_source_start(t);
		break;
		
		case 1: //Sam
			global.state = states.sam;
			interact_reset();
			if !audio_is_playing(snd_chew) audio_play_sound(snd_chew,1,false);
			var t = time_source_create(time_source_game,1,time_source_units_seconds,rm_delay,[rm_reception]);
			time_source_start(t);
		break;
		
		case 2: // Alex
			global.state = states.alex;
			interact_reset();
			if !audio_is_playing(snd_chew) audio_play_sound(snd_chew,1,false);
			var t = time_source_create(time_source_game,1,time_source_units_seconds,rm_delay,[rm_viewing]);
			time_source_start(t);
		break;
		case 3:
		o_player.idle = false;
		instance_destroy();
		break;
	}
	break;
	
	case waitmenu.ending:
	if key_enter{
		o_music.can_play = false;
		audio_sound_gain(snd_wait_music,0,500);
		if audio_sound_get_gain(snd_wait_music) < .1 audio_stop_sound(snd_wait_music);
		var t = time_source_create(time_source_game,1,time_source_units_seconds,rm_delay,[rm_reception_end]);
			time_source_start(t);
	}
	
	break;
	}
}

