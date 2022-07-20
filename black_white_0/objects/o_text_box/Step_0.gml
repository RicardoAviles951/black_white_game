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


if txt_mode == mode.interactive{
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
}

if key_enter{
	switch(pos){
		case 0:
			o_alex.idle = false;
			o_alex.last_stop +=1;
			//Emote code here
			instance_destroy();
		break;
		
		case 1:
			o_alex.idle = false;
			o_alex.last_stop +=1;
			instance_destroy();
		break
		
		case 2:
			o_alex.idle = false;
			o_alex.last_stop +=1;
			instance_destroy();
		break;
	}
}


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