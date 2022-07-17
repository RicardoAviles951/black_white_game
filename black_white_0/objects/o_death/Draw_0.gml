	if draw{
	var w = camera_get_view_width(view_camera[0]);
	var h = camera_get_view_height(view_camera[0]);
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	var x_start = cx+w/4;
	var y_start = cy+h/4;
	var b = c_black;
	var c = c_white;
	draw_set_halign(fa_center);
	draw_set_font(f_choice);
	draw_roundrect_color(x_start,y_start,x_start+w/2,y_start+h/2,b,b,false);
	draw_text_ext_transformed_color(x_start+w/4,y_start+h/8,"An uknown force consumes you\nPress SPACE to go to The Wait.",32,1000,.75,.75,0,c,c,c,c,1);
	draw_set_halign(fa_left);
	}