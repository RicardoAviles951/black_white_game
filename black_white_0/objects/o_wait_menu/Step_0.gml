get_input();
if instance_exists(o_player) o_player.idle = true;
//dynamically sets array length based on menu level.
op_length = array_length(option);

pos+= menu_down - menu_up;
//resets position based on array length
if pos >= op_length pos = 0;
if pos< 0 pos = op_length - 1;

if keyboard_check_pressed(vk_space){
	switch(pos){
		case 0: //Tristan
			global.state = states.tristan;
			room_goto(rm_bathroom);
		break;
		
		case 1: //Sam
			global.state = states.sam;
			room_goto(rm_reception);
		break;
		
		case 2: // Alex
			global.state = states.alex;
			room_goto(rm_viewing);
		break;
		case 3:
		o_player.idle = false;
		instance_destroy();
		break;
	}
}