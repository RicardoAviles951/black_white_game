//text vars
myText    = "";
//sprite vars
sprite  = s_portrait_guestbook;
//choice = false;
font = f_description;
counter = 0;
choice = false;

text[0] ="";
text_current = 0;
text_width = 640;
char_current = 1;
char_speed = .50;
text[text_current] = string_wrap(text[text_current], text_width);
_len = string_length(text[text_current]);
txt_finished = false;