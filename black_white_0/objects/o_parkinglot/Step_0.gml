get_input();
if(currentState == cutSceneStates.Active) 
{
	switch (currentStep) 
	{
		case 0:
		//Play ambient noise
		if !audio_is_playing(snd_birds) audio_play_sound(snd_birds,1,true);
		audio_sound_gain(snd_birds,.75,1000);
		//Set camera properities 
		o_camera.cam_state = camera.cutscene;
		global.state = noone;
		o_camera.target = o_player;
		o_player.image_index = 1;
		o_alex.image_index = 0;
	
		if alarm[0] = -1 alarm[0] = 30;
		break;
		
		case 1:
		if !instance_exists(o_text_box){
	tb = instance_create_depth(x,y,-9999,o_text_box);
		}
		tb.font = f_dialogue;
		tb.myText = "We haven't spoken in days. Why won't you speak to me...?";
		tb.sprite = s_portrait_ghost;
		with o_text_box{
			emote = s_emote_sad;
			spd = 30;
			curve = anim_smoothland;
			draw = true;
			
		}
		
		cut_step();
		break;
		
		case 2:
		tb.font = f_internal;
		tb.myText = "What did I do to upset them this time? It... has been days, hasn't it?"
		with o_text_box{
			emote = s_emote_question;
			spd = 30;
			curve = anim_smoothland;
			draw = true;
		}
		cut_step();
		break;
		
		case 3:
		o_camera.target = o_alex;
		tb.font = f_dialogue;
		o_alex.image_index = 3;
		tb.sprite = s_portrait_alex;
		tb.myText = "I can't believe how hot it is here; way too hot for dress clothes.";
			with o_text_box{
			emote = s_emote_angry;
			spd = 120;
			curve = anim_bounce;
			draw = true;
		}
		cut_step();
		break;
		
		case 4:
		tb.font = f_internal;
		tb.myText = "This is my only suit... I'll probably need to dryclean it before graduation."
		cut_step();
		break;
		
		case 5:
		o_camera.target = o_player;
		tb.sprite = s_portrait_ghost;
		tb.font = f_dialogue;
		tb.myText = "I'm so excited for your graduation, Alex. I'm proud of you; you worked hard.";
		cut_step();
		break;
		
		case 6:
		tb.font = f_internal;
		tb.myText = "It doesn't seem that hot to me, but... Alex IS sweating..."
			with o_text_box{
			emote = s_emote_question;
			spd = 30;
			curve = anim_smoothland;
			draw = true;
		}
		cut_step();
		break;
		
		case 7:
		if instance_exists(o_text_box) instance_destroy(o_text_box);
		o_alex.y +=1;
		o_alex.sprite_index = s_alex_walk_down;
		o_alex.image_speed = 1;
		if alarm[1] = -1 alarm[1] = 90;
		break;
		case 8:
		o_alex.y +=1;
		spawner(o_text_box,x,y);
		o_text_box.sprite = s_portrait_ghost;
		o_text_box.font = f_internal;
		o_text_box.myText = "I should follow Alex."
		cut_step();
		break;
		
		case 9:
		instance_destroy(o_text_box);
		audio_stop_all();
		close_sq();
		if alarm[2] = -1 alarm[2] = 120;
		break;
	}
}
else if (currentState == cutSceneStates.Paused) {
}