//Set up room vars
current_room = room;
if current_room == rm_reception target_room = rm_viewing;
if current_room == rm_viewing target_room = rm_reception;

//Object placer
switch(current_room){
	case rm_viewing:
		spawner(o_camera.target,view_x,view_y);
	break;
	
	case rm_reception:
		if global.view_warp == false{
			spawner(o_camera.target,recep_x,recp_y);
			alarm [0] = 1;
		}
	break;
}

//Set up warping
if place_meeting(x,y,o_camera.target)
{
	global.view_warp = false;
	room_goto(target_room);
}

