
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
		instance_create_depth(x,y,-99999,o_goal_message);
	}
}
if !instance_exists(o_wallet) and key_wallet{
	instance_create_depth(x,y,-9999,o_wallet);
	idle = true;
}
}