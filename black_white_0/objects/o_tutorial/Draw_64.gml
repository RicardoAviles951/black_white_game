var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
var len = array_length(txt);

switch(step){
	case 0:
		if move{
		percent +=1/60;
		position =  animcurve_channel_evaluate(curve,clamp(percent,0,1));
		draw_sprite_stretched_ext(s_tut_box,0,guiW/16-32,guiH/4-16,480,272,c_white,percent);

		draw_set_font(f_tutorial);
		for (var i = 0; i<len;i++;){
			var start = 0;
			var _end = guiH/4+64*i
			var distance = _end - start;
			y_pos = start + (distance * position);
			draw_text_ext_transformed_color(guiW/16,y_pos,txt[i],32,1000,.75,.75,0,c_black,c_black,c_black,c_black,percent);
		}
		}
	break;
	
	case 1:
txt[0] = "E     - Wallet";
txt[1] = "ENTER - Interact";
txt[2] = "";
txt[3] = "";

		percent +=1/60;
		position =  animcurve_channel_evaluate(curve,clamp(percent,0,1));
		draw_sprite_stretched_ext(s_tut_box,0,guiW/16-32,guiH/4-16,564,136,c_white,percent);

		draw_set_font(f_tutorial);
		for (var i = 0; i<len;i++;){
			var start = 0;
			var _end = guiH/4+64*i
			var distance = _end - start;
			y_pos = start + (distance * position);
			draw_text_ext_transformed_color(guiW/16,y_pos,txt[i],32,10000,.5,.5,0,c_black,c_black,c_black,c_black,percent);
		}
	break;
	
}