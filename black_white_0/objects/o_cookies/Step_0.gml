if place_meeting(x-2,y,o_interaction_parent){
	x_size = approach(x_size,1.5,.1);
	y_size = approach(y_size,1.5,.1);
}
else{
	x_size = approach(x_size,1,.1);
	y_size = approach(y_size,1,.1);
}

sum = (global.tris_cut + global.alex_cut + global.sam_cut);