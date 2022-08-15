if global.state == states.tristan
	{
		get_input();
		calc_movement();
		object_collisions();
		object_detection();
		anim(s_tristan_walk_right,s_tristan_walk_left,s_tristan_walk_down,s_tristan_walk_up,s_tristan_idle);

if global.tris_goals >=4 and !instance_exists(o_text_box)
		{
			hsp = 0;
			vsp = 0;
			idle = true;
			if !instance_exists(o_goal_message)
				{
					instance_create_depth(x,y,-9999,o_goal_message);
				}
		}//end of goal message spawn

	if key_wallet
		{	
			if audio_is_playing(snd_zip) audio_stop_sound(snd_zip);
			if !instance_exists(o_wallet) and global.allowed = true
				{
					//Add sound 
					if !audio_is_playing(snd_zip) audio_play_sound(snd_zip,1,false);
					instance_create_depth(x,y,-9999,o_wallet);
					idle = true;
				}
				
		}//end of wallet key pressed
}//End of state code



