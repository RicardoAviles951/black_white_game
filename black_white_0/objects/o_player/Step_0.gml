
if global.state == states.ghost{
get_input();
calc_movement();
object_collisions();
object_detection();
anim(s_ghost_walk_right,s_ghost_walk_left,s_ghost_walk_down,s_ghost_walk_up,s_ghost_idle);
	if place_meeting(x,y,o_cookies){
		if !instance_exists(o_wait_menu) and key_enter{
			instance_create_depth(x,y,-9999,o_wait_menu);
		}
	}
if death = true{
if !instance_exists(o_death) and !instance_exists(o_text_box){
	sprite_index = s_ghost_idle;
	//o_camera.cam_state = camera.gameplay;
	instance_create_depth(x,y,-9999,o_death);
	idle = true;
	hsp = 0;
	vsp = 0;
}
}
}
else{
	
}
//("Delta x = "+string(sign(delta_x)));
//show_debug_message("Delta y = "+string(sign(delta_y)));