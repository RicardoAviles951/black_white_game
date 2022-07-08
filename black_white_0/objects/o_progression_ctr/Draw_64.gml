/// @description Draw Description

//temp vars that store the gui dimensions
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
if draw_des == true{
draw_sprite_stretched(s_text_box,0,guiW/4, guiH*3/4,guiW/2,guiH/8);
draw_set_font(f_description);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(guiW/4+guiW/4,guiH*3/4+guiH/16,txt);
}