var guiW = room_width;
var guiH = room_height;

//Sets custom alignments 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_menu);

//loops through the array and draws strings 
for(var i = 0; i < op_length; i++;)
{
	var c = c_white;
	var y_pad = 42;
	var lnx1 = 224/2;
	var lnx2 = 352/2;
	var lnlength = lnx2-lnx1;

	if pos == i 
		{
			draw_rectangle_color(guiW/2-30,guiH/3+y_pad*i+18,guiW/2+34,guiH/3+y_pad*i+20,c_white,c_white,c_white,c_white,false);
		}

	//draw_text_color(guiW/2-128,guiH/3+y_pad*i,option[menu_level,i],c,c,c,c,1);
	draw_text_ext_transformed_color(guiW/2,guiH/3+y_pad*i,option[i],32,1000,.5,.5,0,c,c,c,c,1);
}


//Reset alginments 
draw_set_halign(fa_top);
draw_set_valign(fa_left);
