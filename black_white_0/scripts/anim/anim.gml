///anim(right,left,down,up,idle}
///@description anim(right,left,down,up,idle);
///@param right
///@param left
///@param down
///@param up
///@param idle
function anim(){
if idle == false{
	

	if hsp > 0{ //going right 
		sprite_index = argument0;
		image_speed = 1;
		 delta_x = x - xprevious;
		 delta_y = y - yprevious;
		 angle = 0;
	}
	if hsp < 0{//going left
		sprite_index = argument1;
		image_xscale = 1;
		image_speed = 1;
		delta_x = x - xprevious;
		delta_y = y - yprevious;
		angle = 180;
	}

	if vsp > 0 { //down
		sprite_index = argument2;
		image_speed = 1;
		delta_x = x - xprevious;
		delta_y = y - yprevious;
		angle = 270;
	}
	if vsp < 0{ // up
		sprite_index = argument3;
		image_speed = 1;
		delta_x = x - xprevious;
		delta_y = y - yprevious;
		angle = 90;
	}
if hsp == 0 and vsp == 0 { //idle
			image_speed = 0;
			sprite_index = argument4;
			if sign(delta_x)> 0{ //moving right
				image_xscale = 1;
				image_index = 0;
			}
			if (sign(delta_x) < 0){ //moving left
				image_xscale = 1;
				image_index = 2;
			}
			if sign(delta_y) > 0{//movign down
				image_index = 3;
			}
			if sign(delta_y) < 0{//moving up
				image_xscale = 1;
				image_index = 1;
			}
	}



}
}