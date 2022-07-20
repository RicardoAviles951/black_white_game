
//temp vars that store the gui dimensions
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
var width = guiW - guiW*1/4;

switch(txt_mode){
	case mode.normal:
	//Draw the rectangle
	draw_sprite_stretched(s_text_box,0,guiW/8, guiH*5/8,width,guiH/3+16);
	// temp vars to hold size information and colors
	var scale     = 1.5;
	var c         = c_white;


	//Draws sprite portrait
	draw_sprite_ext(sprite,0,guiW/4-28,guiH*3/4+28,scale,scale,0,c,1);
	//Draw the names
		switch(sprite){
			case s_portrait_alex:
				draw_name("Alex");
			break;
		
			case s_portrait_sam:
				draw_name("Sam");
			break;
		
			case s_portrait_tristan:
				draw_name("Tristan");
			break;
		}


	//text alignments
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(font);


	 _len = string_length(text[text_current]);
	if (char_current < _len)
	    {
		//	if !audio_is_playing(snd_txt) audio_play_sound(snd_txt,1,false);
			//audio_sound_pitch(snd_txt,random_range(1.5,2));
	    char_current += char_speed;
	    }
	
	var _str = string_copy(text[text_current], 1, char_current);
	//draw_text_ext(guiW/3, guiH*5/8+16,_str,38,width - (guiW*5/24)-8);
	draw_text_color(guiW/3, guiH*5/8+20,_str,c,c,c,c,1);

break;

case mode.interactive:
	var len = array_length(choice);
	var pad = 48;
	var c	= c_white;
//text alignments
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(f_dialogue)
	var _y = guiH/2+164;
//Draw the rectangle
	draw_sprite_stretched(s_text_box,0,guiW/8, guiH*1/2,width,guiH/2);
//Draw dividing line
	draw_line_width_color(guiW/8,_y,guiW/8+width,_y,2,c_white,c_white);
//Draw asker sprite
	draw_sprite_ext(spr_ask,0,guiW/4-52,guiH/2+72,1,1,0,c_white,1);
	switch(spr_ask){
		case s_portrait_tristan:
		draw_set_halign(fa_center);
		draw_set_font(f_choice);
		draw_text(guiW/4-52,guiH/2+144,"Tristan");
		break;
		
		case s_portrait_sam:
		draw_set_halign(fa_center);
		draw_set_font(f_choice);
		draw_text(guiW/4-52,guiH/2+144,"Sam");
		break;
	}
	
//Draw answer sprite
	draw_sprite_ext(spr_ans,0,guiW/4-38,guiH*7/8-16,1.2,1.2,0,c_white,1);
//Draw name
	draw_set_halign(fa_center);
	draw_set_font(f_choice);
	draw_text(guiW/4-38,guiH*7/8+70,"Alex");
	
//Draw Question with type out function
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(f_dialogue)
	 _len = string_length(text[text_current]);
	if (char_current < _len)
	    {
		if !audio_is_playing(snd_txt) audio_play_sound(snd_txt,1,false);
			audio_sound_pitch(snd_txt,random_range(1.5,2));
	    char_current += char_speed;
	    }
	
	var _str = string_copy(text[text_current], 1, char_current);
	draw_text_color(guiW/3-24, guiH/2+12,_str,c,c,c,c,1);
	
	//Draw_choices
	for(var i = 0; i < len; i++;){

		if txt_finished
		{
			if pos == i{
				draw_sprite_ext(s_alex_inverted,image_index/15,guiW/3-48,guiH*3/4+12+pad*i,.5,.5,0,c_white,1);
			}
			draw_set_font(f_dialogue_choice);
			draw_text_ext_color(guiW/3-24,guiH*3/4+pad*i,choice[i],32,690+x_adj,c_white,c_white,c_white,c_white,1);
		
		}
	}
		draw_set_font(f_dialogue)
	
break;
}