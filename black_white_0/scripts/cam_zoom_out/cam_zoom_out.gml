// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cam_zoom_out(_x,_y){
var cam   = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
var cur_x = camera_get_view_x(cam);
var cur_y = camera_get_view_y(cam);
var cx = lerp(cur_x,_x,.1);
var cy = lerp(cur_y,_y,.1);

if cam_w < 640 and cam_h<360{
	zoom *= .1;
	
	var addW = cam_w*zoom;
	var addH = cam_h*zoom;
	
	cam_w += addW;
	cam_h += addH;
	
	
	
	cx -= addW/2;
	cy -= addH/2;
	
zoom+=.2;
}
else
{
	cam_w = 640;
	cam_h = 360;
}
	camera_set_view_size(cam,cam_w,cam_h);
	show_debug_message(cam_w);
	show_debug_message(cam_h);
}