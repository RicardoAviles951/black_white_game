draw_self();
if global.rm != rooms.cut_wait{
draw_sprite_ext(s_emote_question,0,x,y+sin(timer*.1)*.95-16,x_size,y_size,0,c_white,1);
timer++;
}

switch(sum){
	case 0://All Cookies
	sprite_index = s_cookies_3;
	
	break;
	
	case 1://2 Cookies Left
	sprite_index = s_cookies_2;
	break;
	
	case 2: //1 Cookie left
	sprite_index = s_cookies_1;
	break;
	
	case 3://No cookies left
	sprite_index = s_cookies_0;
	break;
	
}