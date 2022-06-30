switch(global.rm){
	case rooms.reception:
	x_spot = 132;
	y_spot = 152;
	if global.bath_warp == false global.target = rm_bathroom;
	break;
	
	case rooms.bathroom:
	x_spot = 200;
	y_spot = 160;
	if global.bath_warp == false global.target = rm_reception;
	break;
}

if place_meeting(x,y,o_interaction_parent) and global.bath_warp == false{
global.bath_warp = true;
room_goto(global.target);	
}
if global.bath_warp and (room_get_name(room)==room_get_name(global.target)){
	switch(global.state){
		case states.alex:
		o_alex.x = x_spot;
		o_alex.y = y_spot;
		global.bath_warp = false;
		break;
		case states.tristan:
		o_tristan.x = x_spot;
		o_tristan.y = y_spot;
		global.bath_warp = false;
		break;
		case states.sam:
		o_sam.x = x_spot;
		o_sam.y = y_spot;
		global.bath_warp = false;
		break;
	}
	
	
}
