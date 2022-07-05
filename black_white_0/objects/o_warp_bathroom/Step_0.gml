//Set up room vars
current_room = room;
if current_room == rm_reception target_room = rm_bathroom;
if current_room == rm_bathroom target_room = rm_reception;
//Object placer
switch(current_room){
	case rm_bathroom:
		spawner(o_camera.target,bath_x,bath_y);
	break;
	
	case rm_reception:
		if global.bath_warp == false{
			spawner(o_camera.target,recep_x,recp_y);
			alarm[0] = 1;
		}
	break;
}


//Set up warping
if place_meeting(x,y,o_camera.target)
{
	global.bath_warp = false
	close_sq();
	door_sound();
	if alarm[1] == -1 alarm[1] = 15;
}

