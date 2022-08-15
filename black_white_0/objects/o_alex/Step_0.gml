if global.state == states.alex{
get_input();
calc_movement();
object_collisions();
object_detection();
anim(s_alex_walk_right,s_alex_walk_left,s_alex_walk_down,s_alex_walk_up,s_alex_idle);
if global.alex_goals >=4 and !instance_exists(o_text_box){
	hsp = 0;
	vsp = 0;
	idle = true;
	if !instance_exists(o_goal_message){
		instance_create_depth(x,y,-9999,o_goal_message);
	}
}

//Wallet Code
if key_wallet
		{	
			if audio_is_playing(snd_changejiggle) audio_stop_sound(snd_changejiggle);//Stops sound if exited wallet 
			if !instance_exists(o_wallet) and global.allowed = true
				{
					//Add sound here
					if !audio_is_playing(snd_changejiggle) audio_play_sound(snd_changejiggle,1,false);
					instance_create_depth(x,y,-9999,o_wallet);
					idle = true;
				}
				
		}//end of wallet key pressed

}
//Ending Choice Code
if last_stop >= 2 and !instance_exists(o_text_box){
	if alarm[0] = -1 alarm[0] = 30;
}