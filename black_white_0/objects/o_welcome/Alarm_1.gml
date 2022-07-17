	if !instance_exists(o_text_box)
	{
		tb = instance_create_depth(x,y,-9999,o_text_box);
		
	}
		tb.sprite = s_portrait_ghost;
		tb.font = f_internal;
		tb.myText = "Cookies? Definitely NOT the Dentist's office...";
