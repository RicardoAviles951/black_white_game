
//temp vars that store the gui dimensions
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
var width = guiW - guiW*1/4;

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




if choice{
	draw_set_font(f_choice);
	draw_text(guiW*2/3-32,guiH*7/8+32,"Press SHIFT for next page");
}

var _len = string_length(text[text_current]);
if (char_current < _len)
    {
    char_current += char_speed;
    }
	
var _str = string_copy(text[text_current], 1, char_current);
//draw_text_ext(guiW/3, guiH*5/8+16,_str,38,width - (guiW*5/24)-8);
draw_text(guiW/3, guiH*5/8+16,_str);