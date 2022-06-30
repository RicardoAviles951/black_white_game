	var w = display_get_gui_width()
	var h = display_get_gui_height();
	
if open = true{
	var b = c_black;
	var c = c_white;
	draw_set_halign(fa_center);
	draw_set_font(f_choice);
	draw_roundrect_color(w/4,h/4,w*3/4,h*3/4,b,b,false);
	draw_text_ext_color(w/4+314,h/4+64,"Thanks for playing our game!\nIt is currently unfinished but we hope you can appreciate the story we wanted to tell!\nPress SPACE to close.",32,w/2,c,c,c,c,1);
	draw_set_halign(fa_left);
}