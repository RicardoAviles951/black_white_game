///@description spawner(inst,x,y)
///@param inst
///@param x
///@param y
function spawner(inst,_x,_y){
	
	if !instance_exists(inst){
		instance_create_layer(_x,_y,"Instances",inst);
	}
}