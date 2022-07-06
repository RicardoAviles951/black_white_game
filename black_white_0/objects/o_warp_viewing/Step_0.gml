//Set up room vars
current_room = room;
if current_room == rm_reception target_room = rm_viewing;
if current_room == rm_viewing target_room = rm_reception;

//Object placer
switch(current_room){
	case rm_viewing:
	if global.view_warp == false and changed == false{
		spawner(o_camera.target,view_x,view_y);
		with(o_camera.target){
			if global.spr_index != noone sprite_index = global.spr_index;
			if global.img_index != noone image_index  = global.img_index;
		}
		changed = true;
			}
		
	break;
	
	case rm_reception:
		if global.view_warp == false{
			spawner(o_camera.target,recep_x,recp_y);
			with(o_camera.target){
			if global.spr_index != noone sprite_index = global.spr_index;
			if global.img_index != noone image_index  = global.img_index;
			}
			alarm [0] = 1;
		}
	break;
}

//Set up warping
if place_meeting(x,y,o_camera.target)
{
	global.view_warp = false;
	with(o_camera.target){
	global.spr_index = sprite_index;
	global.img_index = image_index;
	}
	close_sq();
	door_sound();
	if alarm[1] == -1 alarm[1] = 15;
}


