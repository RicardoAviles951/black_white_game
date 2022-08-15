text[0] = myText;
text[text_current] = string_wrap(text[text_current], text_width);
if char_current >= _len{
	var nxt = function(){
		txt_finished = true;
	}
	var t = time_source_create(time_source_global,1,time_source_units_frames,nxt);
	time_source_start(t);
}
else
{
txt_finished = false;	
}

if draw{
emote_create(target_y,curve,spd,emote);
}
else
{
percent = 0;
alpha = 0;

}

switch(txt_mode){
	case mode.normal:
	
	break;
	
	case mode.interactive:
		get_input()
		var len = array_length(choice);
		pos+= menu_down - menu_up;
		
		//resets position based on array length
		if pos >= len pos = 0;
		if pos< 0 pos = len - 1;
		
		//Plays a sound when you change options.
		if (menu_up or menu_down) audio_play_sound(snd_option,1,false);
		if key_right or key_left {
			o_alex.idle = false;
			if global.interact_tristan == false global.tris_end = false;
			if global.interact_sam == false global.sam_end = false;
		}

		if key_enter{
			if txt_finished{
			if global.tris_end == true
			{
				global.interact_tristan = true;
			}
			if global.sam_end == true
			{
				global.interact_sam = true;
			}
			switch(pos){
				case 0:
					o_alex.idle = false;
					o_alex.last_stop +=1;
					with(o_sam){
						if can_respond == false num = 0;
					}
					with(o_tristan){
						if can_respond == false num = 0;
					}
					//Emote code here
					instance_destroy();
				break;
		
				case 1:
					o_alex.idle = false;
					o_alex.last_stop +=1;
					with(o_sam){
						if can_respond == false num = 1;
					}
					with(o_tristan){
						if can_respond == false num = 1;
					}
					instance_destroy();
				break
		
				case 2:
					o_alex.idle = false;
					o_alex.last_stop +=1;
					with(o_sam){
						if can_respond == false num = 2;
					}
					with(o_tristan){
						if can_respond == false num = 2;
					}
					instance_destroy();
				break;
			}
			}
			else{
				char_speed = 2;
			}
		}
		
		
		
		
	break;//end of switch on interactive mode
	
}





//DEBUG ONLY
//Left
if keyboard_check_pressed(vk_numpad4) x_adj -=1;
//Right
if keyboard_check_pressed(vk_numpad6) x_adj +=1;
//Up
if keyboard_check_pressed(vk_numpad8) y_adj -=1;
//Down
if keyboard_check_pressed(vk_numpad2) y_adj +=1;

show_debug_message("X adj " + string(x_adj));
show_debug_message("Y adj " + string(y_adj));