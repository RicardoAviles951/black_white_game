if can_play{
	switch(global.rm){
		case rooms.menu:
		if !audio_is_playing(snd_wait_music){
		audio_play_sound(snd_wait_music,1,true);
		audio_sound_gain(snd_wait_music,.9,1000);
	}
		break;
		
		case rooms.reception:
		if !audio_is_playing(snd_piano){
		audio_play_sound(snd_piano,1,true);
		audio_sound_gain(snd_piano,.9,1000);
	}
		break;
		
		case rooms.bathroom:
		if !audio_is_playing(snd_piano){
		audio_play_sound(snd_piano,1,true);
		audio_sound_gain(snd_piano,.9,1000);
	}
		break;
		
		case rooms.viewing:
		if !audio_is_playing(snd_piano){
		audio_play_sound(snd_piano,1,true);
		audio_sound_gain(snd_piano,.9,1000);
	}
		break;
		
		case rooms.wait:
		if !audio_is_playing(snd_wait_music){
		audio_play_sound(snd_wait_music,1,true);
		audio_sound_gain(snd_wait_music,.5,2000);
	}
		break;
		
		case rooms.ending:
		if !audio_is_playing(snd_piano){
		audio_play_sound(snd_piano,1,true);
		audio_sound_gain(snd_piano,.9,1000);
	}
		break;
		
		case rooms.ending_2:
		if !audio_is_playing(snd_endsong){
		audio_play_sound(snd_endsong,1,true);
		audio_sound_gain(snd_endsong,.5,2000);
	}
		break;
	}
}