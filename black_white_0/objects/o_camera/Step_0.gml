var cam   = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

switch(cam_state){
	case camera.gameplay:
	switch(global.state)
	{
		case states.ghost:
		target = o_player;
		break;
		
		case states.alex:
		target = o_alex;
		break;
		
		case states.sam:
		target = o_sam;
		break;
		
		case states.tristan:
		target = o_tristan;
		break;
	}
	if instance_exists(target){
		var _x = target.x-(cam_w/2);
		var _y = target.y-(cam_h/2);
		var cur_x = camera_get_view_x(cam);
		var cur_y = camera_get_view_y(cam);
		camera_set_view_pos(cam,lerp(cur_x,_x,.1),lerp(cur_y,_y,.1));
	}
		
	break;
	
	case camera.cutscene:
	
	break;
}