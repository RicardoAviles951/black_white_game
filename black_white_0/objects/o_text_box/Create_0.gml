enum mode{
	normal,
	interactive
}
txt_mode = mode.normal;
//text vars
myText    = "Question goes here, here and here. OH, and here!";
//sprite vars
sprite  = s_portrait_guestbook;
//choice = false;
font = f_description;
counter = 0;

text[0] ="";
text_current = 0;
text_width = 660;
char_current = 1;
char_speed = .50;
text[text_current] = string_wrap(text[text_current], text_width);
_len = string_length(text[text_current]);
txt_finished = false;

spr_ask = s_portrait_tristan;
spr_ans = s_portrait_alex;
//Alex choices vars
choice[0] = "Choice A";
choice[1] = "Choice B";
choice[2] = "Choice C";

pos = 0;

//Debug only
y_adj = 0
x_adj = 0;