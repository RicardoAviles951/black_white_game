//show_debug_message("Current step = " + string(counter));
text[0] = myText;
text[text_current] = string_wrap(text[text_current], text_width);
if char_current >= _len{
	var nxt = function(){
		txt_finished = true;
	}
	var t = time_source_create(time_source_global,1,time_source_units_frames,nxt);
	time_source_start(t);
}
else
{
txt_finished = false;	
}