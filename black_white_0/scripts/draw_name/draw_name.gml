///@description draw_name(name);
///@param name
function draw_name(name){
	var guiW = display_get_gui_width();
	var guiH = display_get_gui_height();
	draw_set_font(f_choice);
	draw_text(guiW/4-56,guiH*7/8+48,argument0);

}