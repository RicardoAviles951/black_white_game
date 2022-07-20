	var w = display_get_gui_width();
	var h = display_get_gui_height();
	var b = c_black;
		
if global.rm !=rooms.ending{
	percent +=1/60;
	position =  animcurve_channel_evaluate(curve,clamp(percent,0,1));
	var start    = 0;
	var _end     = h/2;
	var distance = _end - start;
	y_pos = start + (distance * position);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(f_description);
	draw_roundrect_color(w/4,h/3,w*3/4,h*2/3,c_white,c_white,false);
	draw_text_ext_transformed_color(w/2,y_pos,normal,32,w/2,1,1,0,b,b,b,b,percent);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
}
else
{
	percent +=1/60;
	position =  animcurve_channel_evaluate(curve,clamp(percent,0,1));
	var start    = 0;
	var _end     = h/2;
	var distance = _end - start;
	y_pos = start + (distance * position);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(f_description);
	draw_roundrect_color(w/4,h/3,w*3/4,h*2/3,c_white,c_white,false);
	draw_text_ext_transformed_color(w/2,y_pos,ending,32,w/2,1,1,0,b,b,b,b,percent);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}