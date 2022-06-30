enum states {
	ghost,
	alex,
	sam,
	tristan
}
enum rooms{
	menu,
	reception,
	viewing,
	bathroom,
	wait,
	car
}
global.rm =noone;

global.state = states.ghost;
global.alex_goals =0;
global.tris_goals = 0;
global.sam_goals = 0;
global.view_warp = false;
global.bath_warp = false;
global.target = noone;
room_goto_next();