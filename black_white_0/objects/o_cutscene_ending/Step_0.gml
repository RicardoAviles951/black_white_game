get_input();
if(currentState == cutSceneStates.Active) 
{
	
	switch (currentStep) 
	{
		case 0:
		o_chair.visible = false;
		o_dog.visible = false;
		global.state = noone;
		with(o_camera)
		{
		cam_state = camera.cutscene
		zoom_mode = zm.zoom_out;
		}
		
		if !instance_exists(o_text_box){
			tb = instance_create_depth(x,y,-9999,o_text_box);
		}
		currentStep+=1;
		break;
		
		case 1:
		o_camera.zoom_mode = zm.zoom_in;
		o_camera.target = o_gradcap_prop;
		tb.font   = f_dialogue;
		tb.sprite = s_portrait_ghost;
		tb.myText = "I hope they know how proud I am of them for everything they accomplished while I was alive, and for everything I know they will do in the future. I love them so much and I hope they can forgive me for not being able to be there.";
		with(o_text_box){
			spd   = 30;
			emote = s_emote_love;
			curve = anim_smoothland;
			draw  = true;
		}
		cut_step();
		break;
		
		case 2:
		tb.font   = f_internal;
		tb.sprite = s_portrait_ghost;
		tb.myText = "I know how proud of you I am."
		cut_step();
		break;
		
		case 3:
		o_camera.target = o_player;
		tb.font   = f_description;
		tb.sprite = s_portrait_teacup;
		tb.myText = "You have done your best to point Alex towards the relationships that will support them as they move forward in life -- however they decide to do so.";
		with(o_text_box){
			spd   = 30;
			emote = s_emote_question;
			curve = anim_smoothland;
			draw  = true;
		}
		cut_step();
		break;
		
		case 4:
		tb.myText = "The tag on the teabag reads:\n 'You had a chance that few get, and you used it well: you are remembered and you are loved. Drink me.'";
		cut_step();
		break;
		
		case 5:
		tb.font   = f_internal;
		tb.sprite = s_portrait_ghost;
		tb.myText = "Won't be the first time I drank weird tea at a weird party. bottoms up!";
	with(o_text_box){
			spd   = 30;
			emote = s_emote_happytune;
			curve = anim_smoothland;
			draw  = true;
		}
	cut_step();
		break;
		
		case 6:
		if instance_exists(o_text_box) {
			instance_destroy(o_text_box);
		}
		open_sq(sq_fadeOut);
		
		//Focus on dog
		//currentStep+=1;
		if alarm[0] = -1 alarm[0] = 30;
		break;
		
		case 7:
		o_dog.visible = true;
		var lay_id = layer_background_get_id("Background_closed");
		layer_background_visible(lay_id,false);//Switch background
		if alarm[1] = -1 alarm[1] = 15;
		currentStep+=1;	
		
		break;
		
		case 8:
		if alarm[2] = -1 alarm[2] = 60;
		
		break;
		
		case 9:
		if !instance_exists(o_text_box){
			tb = instance_create_depth(x,y,-9999,o_text_box);
		}
		tb.font   = f_dialogue;
		tb.sprite = s_portrait_ghost;
		tb.myText = "Teddy!!!! I knew you would be here waiting for me! Let's play!";
		with(o_text_box){
			spd   = 30;
			emote = s_emote_happytune;
			curve = anim_smoothland;
			draw  = true;
		}
		o_player.image_index = 1;
		cut_step();
		break;
		
		case 10:
		tb.font   = f_dialogue;
		tb.sprite = s_portrait_ghost;
		tb.myText = "Maybe its not just all dogs that go to heaven... everybody deserves a heaven.";
		with(o_text_box){
			spd   = 30;
			emote = s_emote_love;
			curve = anim_smoothland;
			draw  = true;
		}
		cut_step();
		break;
		
		case 11:
		instance_destroy(o_text_box);
		o_dog.sprite_index =s_dog_butt;
		currentStep+=1;
		break;
		
		case 12:
		o_camera.target = o_player;
		o_dog.sprite_index =s_dog_walkaway;
		o_player.image_speed = 1;
		o_player.sprite_index = s_ghost_walk_up;
		
		currentStep+=1;
		break;
		
		case 13:
		o_dog.y -=1;
		o_player.y -=1;
		if alarm[4] = -1 alarm[4] = 120;
		//go to credits
		break;
		
		case 14:
		open_sq(sq_fadeOut_white);
		if alarm[3] = -1 alarm[3] = 120;
		break;
	}
}