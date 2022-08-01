///@description emote_create()

function emote_create(_y,_curve,spd,emote){

	percent +=1/spd; //Increases position on anim curve
	alpha +=1/spd; //Increases alpha value
	curve = animcurve_get_channel(_curve,"curve1") //gets information from curve
	position = animcurve_channel_evaluate(curve,clamp(percent,-1,1)); //evaluates the curve 
	var start = _y + 32;//Where the emote should start
	var _end = _y -64; //Where  it should end 
	var distance = _end - start; //Distance between points
	y_pos = start + (distance*position); //Eases to that end position
	
	//growing code
	var size = 0; //emote starts at size 0
	var size_end = 4; //Emote grows
	var size_dist = size_end - size; //Distance between both sizes
	grw = size + (size_dist*position); //uses curve data to increment 
	
	



}