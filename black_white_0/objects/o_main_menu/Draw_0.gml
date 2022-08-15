var guiW = room_width;
var guiH = room_height;



//Sets custom alignments 
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(f_menu);

//loops through the array and draws strings 
for(var i = 0; i < op_length; i++;)
{
	var c = c_black;
	var y_pad = 42;
	var _x = guiW/8
	if pos == i 
		{
			draw_rectangle_color(_x,guiH/3+y_pad*i+18,_x+64,guiH/3+y_pad*i+20,c,c,c,c,false);
		}
	//draw_text_color(guiW/2-128,guiH/3+y_pad*i,option[menu_level,i],c,c,c,c,1);
	draw_text_ext_transformed_color(_x,guiH/3+y_pad*i,option[i],32,1000,.5,.5,0,c,c,c,c,1);

}

 if fade {
	 
	draw_sprite_stretched_ext(s_pixel,0,0,0,room_width,room_height,c_white,alpha);
	alpha +=.01;
 }

//Reset alginments 
draw_set_halign(fa_top);
draw_set_valign(fa_left);
