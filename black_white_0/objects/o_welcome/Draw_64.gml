var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
var c = c_black;
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite_stretched_ext(s_pixel_white,0,0,0,guiW,guiH,c_white,spr_alpha);
if draw{
_len = string_length(text[text_current]);
if (char_current < _len)
    {
	//	if !audio_is_playing(snd_txt) audio_play_sound(snd_txt,1,false);
		//audio_sound_pitch(snd_txt,random_range(1.5,2));
    char_current += char_speed;
	alpha += .01;
    }
	
var _str = string_copy(text[text_current], 1, char_current);

draw_text_ext_color(guiW/4,guiH/3,_str,32,10000,c,c,c,c,alpha);
}
