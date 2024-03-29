//States
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
	car,
	cut_parking,
	cut_wait,
	ending,
	ending_2,
	credits
}
global.rm = noone;
global.state = states.ghost;

//vars that track goal points
global.alex_goals         = 0;
global.tris_goals         = 0;
global.sam_goals          = 0;
global.interact_alex      = false;
global.interact_sam       = false;
global.interact_tristan   = false;
global.interact_casket    = false;
global.interact_guestbook = false;
global.visited_alex       = false;
global.visited_sam        = false;
global.visited_tristan    = false;
global.alex_cut = false;
global.tris_cut = false;
global.sam_cut  = false;
//Camera vars
global.target = noone;

global.tutorial = true;

//Spawn and warp vars
global.spawned = false;
global.park_warp = true;
global.bath_warp = true;
global.view_warp = true;

//Anim vars
global.spr_index = noone;
global.img_index = noone;

//Wallet Var
global.allowed = true;
global.tris_end = false;
global.sam_end = false;
room_goto_next();