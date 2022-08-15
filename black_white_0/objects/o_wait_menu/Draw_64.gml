var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

//Sets custom alignments 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_menu);
draw_set_font(f_menu)
var w = c_white;
var c = c_white;
var y_pad = 42;
//draws_rectangle
draw_roundrect_color(guiW/4,guiH/4,guiW*3/4,guiH*3/4,c_black,c_black,false);

switch(stage){
	case waitmenu.norm:
	draw_text_ext_transformed_color(guiW/2,guiH/3-32,"Who will you visit?",32,1000,.5,.5,0,w,w,w,w,1);
//loops through the array and draws strings 
for(var i = 0; i < op_length; i++;)
{



	if pos == i 
		{
			draw_sprite_ext(s_ghost_idle,image_index/15,guiW/2-96,guiH/3+32+y_pad*i,.5,.5,0,c_white,1);
		}

	//draw_text_color(guiW/2-128,guiH/3+y_pad*i,option[menu_level,i],c,c,c,c,1);
	draw_text_ext_transformed_color(guiW/2,guiH/3+32+y_pad*i,option[i],32,1000,.5,.5,0,c,c,c,c,1);
}
break;

case waitmenu.ending:
	draw_text_ext_transformed_color(guiW/2,guiH/3+32+y_pad,final_choice,64,1200,.5,.5,0,c,c,c,c,1);
break;
}
//Reset alginments 
draw_set_halign(fa_top);
draw_set_valign(fa_left);