// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
key_left  = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up    = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down  = keyboard_check(vk_down) or keyboard_check(ord("S"));
key_enter = keyboard_check_pressed(vk_enter);

//Menu keys 
menu_right = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
menu_left  = keyboard_check_pressed(vk_left)  or keyboard_check_pressed(ord("A"));
menu_down  = keyboard_check_pressed(vk_down)  or keyboard_check_pressed(ord("S"));
menu_up    = keyboard_check_pressed(vk_up)    or keyboard_check_pressed(ord("W"));
}