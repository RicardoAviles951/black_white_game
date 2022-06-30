switch(global.rm){
	case rooms.reception:
	x_spot = 484;
	y_spot = 168;
	if global.view_warp == false global.target = rm_viewing;
	break;
	
	case rooms.viewing:
	x_spot = 320;
	y_spot = 844;
	if global.view_warp == false global.target = rm_reception;
	break;
}

if place_meeting(x,y,o_interaction_parent) and global.view_warp == false{
global.view_warp = true;
room_goto(global.target);	
}
if place_meeting(x,y,o_player) and global.view_warp == false{
global.view_warp = true;
room_goto(global.target);	
}
if global.view_warp and (room_get_name(room)==room_get_name(global.target)){
	switch(global.state){
		case states.ghost:
		o_player.x = x_spot;
		o_player.y = y_spot;
		global.view_warp = false;
		break;
		case states.alex:
		o_alex.x = x_spot;
		o_alex.y = y_spot;
		global.view_warp = false;
		break;
		case states.tristan:
		o_tristan.x = x_spot;
		o_tristan.y = y_spot;
		global.view_warp = false;
		break;
		case states.sam:
		o_sam.x = x_spot;
		o_sam.y = y_spot;
		global.view_warp = false;
		break;
	}
	
	
}

