
function object_collisions(){
//Horizontal Collisions
if place_meeting(x+hsp,y,o_bounds){

	while (!place_meeting(x+sign(hsp),y,o_bounds)){
		x += sign(hsp);
	}
hsp = 0;
}

if place_meeting(x+hsp,y,o_interaction_parent){

	while (!place_meeting(x+sign(hsp),y,o_interaction_parent)){
		x += sign(hsp);
	}
hsp = 0;
}
x+=hsp;

//Vertical Collisions
if place_meeting(x,y+vsp,o_bounds){

	while (!place_meeting(x,y+sign(vsp),o_bounds)){
		y += sign(vsp);
	}
vsp = 0;
}

if place_meeting(x,y+vsp,o_interaction_parent){

	while (!place_meeting(x,y+sign(vsp),o_interaction_parent)){
		y += sign(vsp);
	}
vsp = 0;
}

y+=vsp;

}