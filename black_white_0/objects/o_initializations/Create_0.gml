enum states {
	ghost,
	alex,
	sam,
	tristan
}
enum rooms{
	menu,
	parking,
	reception,
	viewing,
	bathroom,
	wait,
	car
}
global.rm = noone;

global.state = states.ghost;
global.alex_goals = 0;
global.tris_goals = 0;
global.sam_goals  = 0;
global.target = noone;
global.spawned = false;
global.park_warp = true;
global.bath_warp = true;
global.view_warp = true;
room_goto_next();