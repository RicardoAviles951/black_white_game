switch(step){
	case 0:
	if keyboard_check_pressed(vk_enter){
	
		if char_current >=_len{
			fade = true;
			draw = false;
			with(o_camera){
			cam_state = camera.cutscene;
				zoom_mode = zm.zoom_out;
			}
	
			step += 1;
		}
		else
		{
			char_speed = 2;
		}
}
	break;
	
	case 1:
	if draw draw = false;
	if fade spr_alpha -=.01; else spr_alpha = 1;
	if spr_alpha <=0 step+=1;
	
	break;
	
	case 2:
	if !instance_exists(o_text_box){
		tb = instance_create_depth(x,y,-9999,o_text_box);
		}
	tb.sprite = s_portrait_ghost;
	tb.font = f_dialogue;
	tb.myText = "What the hell is this place...? \nIs this hell?\nAm I at the Dentist's office?! IS HELL THE DENTIST'S OFFICE?!?!";
	tb.curve = anim_smoothland;
	tb.spd = 30;
	tb.emote = s_emote_shockedquestion;
	tb.draw = true;
	if keyboard_check_pressed(vk_enter){
		if tb.txt_finished{
		instance_destroy(o_text_box);
		step+=1;
		}
		else
		{
			tb.char_speed = 2;
		}
	}
	break;
	
	case 3:
	if alarm[1] = -1 alarm[1] = 120;
	o_camera.target = o_cookies;
	o_camera.zoom_mode = zm.zoom_in;	
	if keyboard_check_pressed(vk_enter) and instance_exists(o_text_box) {
		
		if tb.txt_finished
		{
			instance_destroy(o_text_box);
			step+=1;
		}
		else
		{
			tb.char_speed = 2;
		}
		
	}
	break;
	
	case 4:
	instance_destroy(o_text_box);
	o_camera.target = o_message;
	o_camera.zoom_mode = zm.zoom_in;
	if alarm[3]=-1 alarm[3] = 60;
	break;
	
	case 5:
	if !instance_exists(o_text_box){
		tb = instance_create_depth(x,y,-9999,o_text_box);
	}
		tb.sprite = s_portrait_note;
		tb.font   = f_description;
		tb.myText = "\nThere is a note for you on the coffee table.";
	
	if keyboard_check_pressed(vk_enter){
		if tb.txt_finished
		{
			instance_destroy(o_text_box);
			step+=1;
		}
		else
		{
			tb.char_speed = 2;
		}
	}
	break;
	
	case 6:
	instance_destroy(o_text_box);
	open_sq(sq_fadeOut_white);
	if alarm[2] = -1 alarm[2] = 90;
	break;
	
}




