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
					instance_create_depth(x,y,-99999,o_goal_message);
				}
		}
	if !instance_exists(o_wallet) and key_wallet{
	instance_create_depth(x,y,-9999,o_wallet);
	idle = true;
}

	}