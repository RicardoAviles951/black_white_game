var cam   = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
var cur_x = camera_get_view_x(cam);
var cur_y = camera_get_view_y(cam);

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
		cam_zoom_out(target.x,target.y);
		camera_set_view_pos(cam,lerp(cur_x,_x,.1),lerp(cur_y,_y,.1));
	}
		
	break;
	
	case camera.cutscene:
	var _x = target.x-(cam_w/2);
	var _y = target.y-(cam_h/2);
	var cx = lerp(cur_x,_x,.1);
	var cy = lerp(cur_y,_y,.1);
switch(zoom_mode){
	case zm.zoom_in:
		if cam_w > 320 and cam_h>180
		{
			zoom *= -.1;
	
			var addW = cam_w*zoom;
			var addH = cam_h*zoom;
	
			cam_w += addW;
			cam_h += addH;
	
	
	
			cx -= addW/2;
			cy -= addH/2;
	
			zoom+=.1;
		}
		else
		{
			cam_w = 320;
			cam_h = 180;
		}
	camera_set_view_pos(cam,cx,cy);
	camera_set_view_size(cam,cam_w,cam_h);
	break;
	
	
	case zm.zoom_out:
	cam_zoom_out(_x,_y);
	camera_set_view_pos(cam,cx,cy);
	break;
	
}

	//camera_set_view_pos(cam,cx,cy);
	//camera_set_view_size(cam,cam_w,cam_h);
	show_debug_message(cam_w);
	show_debug_message(cam_h);
	break;
}