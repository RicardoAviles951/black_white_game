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
	if instance_exists(target) camera_set_view_pos(cam,target.x-(cam_w/2),target.y-(cam_h/2));
	break;
	
	case camera.cutscene:
	
	break;
}





