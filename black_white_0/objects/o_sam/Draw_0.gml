draw_self();
if global.state != states.sam{
	sprite_index = s_sam_idle;
}
if global.interact_sam and global.rm = rooms.ending {
	draw_sprite_ext(response[num],0,x,y-16,1,1,0,c_white,alpha);
	alpha+=.01;
	can_respond = true;
}