wallet_page = 0;
text = "This is my wallet.";
sprite = s_portrait_wallet;
font = f_description;
can_destroy = false;
alarm[0] = 1;

pos = 0;
percent = 0;
alpha = 0;
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
//Animation curves
curve = anim_smoothland;
target_x = guiW/4+32;
target_y = guiH*3/4;
spd = 30;
emote = s_emote_love;
draw = false;
grw = 0;
y_pos = 0;
target = noone;
dest = function(){
	instance_destroy();
}


/*Only create wallet when needed
  Only create wallet when allowed
  Use global var to dictate that 