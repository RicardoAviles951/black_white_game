draw_self();
if global.state != states.tristan
{
	sprite_index = s_tristan_idle;
}

if global.interact_tristan and global.rm = rooms.ending{
	draw_sprite_ext(response[num],0,x,y-16,1,1,0,c_white,alpha);
	if alpha < 1 alpha+=.01; 
	can_respond = true;
}