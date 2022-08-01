get_input();
if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) 
	{
		case 0:
		timer = 1;
		if !audio_is_playing(snd_music_intro) audio_play_sound(snd_music_intro,2,true);
		audio_sound_gain(snd_music_intro,50,1000);
		if !audio_is_playing(snd_car) audio_play_sound(snd_car,1,false);
		audio_sound_gain(snd_car,1,1000);
		if alarm[0] = -1 alarm[0] = 90;
		break;
		
		case 1:
		with(o_text_box){
			sprite = s_portrait_ghost;
			font = f_internal;
			myText = "Alex always is such a careful driver for a young person.";	
			curve = anim_smoothland;
			spd = 30;
			emote = s_emote_love;
			draw = true;						
		}
		cut_step();
		break;
		
		case 2:
		with(o_text_box){
			font = f_dialogue;
			myText = "Alex, it's nice to see you again, but where are we going?";
			curve = anim_smoothland;
			spd = 30;
			emote = s_emote_question;
			draw = true;
		}
		if timer >0 {
			timer -=.01;
		}
		cut_step();
		break;
		
		case 3:
		o_text_box.sprite = s_portrait_alex;
		o_text_box.myText = "...";
		cut_step();
		break;
		
		case 4:
		with(o_text_box){
		sprite = s_portrait_ghost;
		myText = "Alex? Did you hear me?";
		curve = anim_smoothland;
		spd = 30;
		emote = s_emote_question;
		draw = true;
		}
		cut_step();
		break;
		
		case 5:
		o_text_box.sprite = s_portrait_ghost;
		o_text_box.font = f_internal;
		o_text_box.myText = "Am I having a 'moment'...?";
		cut_step();
		break;
		
		case 6:
		with(o_text_box){
		sprite = s_pixel;
		font = f_description;
		myText ="\n...Alex sighs heavily, collects themself and gets out of the car, grabbing their jacket and bag.";
		}
		if timer <1 {
			timer +=.01;
		}
		cut_step();
		break;
		
		case 7:
		if instance_exists(o_text_box) instance_destroy(o_text_box);
		if !audio_is_playing(snd_car_door_open) audio_play_sound(snd_car_door_open,1,false);
		if alarm[1] = -1 alarm[1] = 90;
		break;
		case 8:
		
		if !audio_is_playing(snd_car_door_close) audio_play_sound(snd_car_door_close,1,false);
		if alarm[1] = -1 alarm[1] = 30;
		
		break;
		
		case 9:
		var volm = audio_sound_get_gain(snd_music_intro)
		audio_sound_gain(snd_music_intro,0,1000);
		
		if volm <=0.1{
			audio_stop_all();
			room_goto_next();
		}
		show_debug_message(volm);
		break;
	}
}
else if (currentState == cutSceneStates.Paused) {
}