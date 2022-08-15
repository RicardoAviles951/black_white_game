
if global.state == states.sam{
get_input();
calc_movement();
object_collisions();
object_detection();
anim(s_sam_walk_right,s_sam_walk_left,s_sam_walk_down,s_sam_walk_up,s_sam_idle);
if global.sam_goals >=4 and!instance_exists(o_text_box){
	hsp = 0;
	vsp=0;
	idle = true;
	global.visited_sam = true;
	if !instance_exists(o_goal_message){
		instance_create_depth(x,y,-9999,o_goal_message);
	}
}
if key_wallet
		{	
			if audio_is_playing(snd_changejiggle) audio_stop_sound(snd_changejiggle);
			if !instance_exists(o_wallet) and global.allowed = true
				{
					//Add sound 
					if !audio_is_playing(snd_changejiggle) audio_play_sound(snd_changejiggle,1,false);
					instance_create_depth(x,y,-9999,o_wallet);
					idle = true;
				}
				
		}//end of wallet key pressed
}