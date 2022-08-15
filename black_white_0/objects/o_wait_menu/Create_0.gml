enum waitmenu{
	norm,
	ending
}
stage = waitmenu.norm;
option[0] = "Tristan";
option[1] = "Sam";
option[2] = "Alex";
option[3]  = "Not Yet"
num = global.alex_cut + global.tris_cut + global.sam_cut;
final_choice = "You must now visit Alex one last time.\n\nPress Enter to Continue.";
op_length = 0;
pos = 0 ;
global.allowed = false;
rm_delay = function(target){
	room_goto(target)
}