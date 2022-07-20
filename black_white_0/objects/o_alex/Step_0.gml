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
		instance_create_depth(x,y,-99999,o_goal_message);
	}
}

//show_debug_message("Alex goals = "+string(global.alex_goals))
//show_debug_message(x);
}

if last_stop >= 2 and !instance_exists(o_text_box){
	if alarm[0] = -1 alarm[0] = 30;
}