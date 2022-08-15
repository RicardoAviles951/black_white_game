if disable == false{
get_input();
//var move = menu_right - menu_left;
//vol_mod = move*vol_incr;
//dynamically sets array length based on menu level.
op_length = array_length(option);

pos+= menu_down - menu_up;
//resets position based on array length
if pos >= op_length pos = 0;
if pos< 0 pos = op_length - 1;
if menu_up or menu_down {
	if !audio_is_playing(snd_option) audio_play_sound(snd_option,1,false); 
}
if key_enter{
	switch(pos){
		case 0:
		fade = true;
		var t = time_source_create(time_source_game,2,time_source_units_seconds,fade_go,[rm_cutscene_car]);
		time_source_start(t);
		o_music.can_play = false;
		audio_sound_gain(snd_wait_music,0,1500);
		disable = true;
		break;
		
		case 1:
		audio_stop_all();
		game_end();
		break;
	}
	
	
}
}

//DEBUG only
if keyboard_check_pressed(vk_numpad8) y_adj +=1;
if keyboard_check_pressed(vk_numpad2) y_adj -=1;

if keyboard_check_pressed(vk_numpad4) x_adj -=1;
if keyboard_check_pressed(vk_numpad6) x_adj +=1;

//show_debug_message("x_adj =  " + string(x_adj));
//show_debug_message("y_adj =  " + string(y_adj));