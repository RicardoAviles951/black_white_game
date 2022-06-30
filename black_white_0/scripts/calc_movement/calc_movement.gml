// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calc_movement(){
if idle == false{
var move_h = key_right - key_left;
var move_v = key_down - key_up;
hsp = move_h*move_spd;
vsp = move_v*move_spd;
}
}