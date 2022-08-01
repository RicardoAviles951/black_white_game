
function cut_step(){
 if key_enter{
	 with(o_text_box){
		if txt_finished{
			char_current = 1;
			char_speed = .5;
			counter+=1;	
			 o_text_box.draw = false;
			 other.currentStep +=1;
		}
		else
		{
			char_speed =2;
		}
		
	}
	 
	

	 
 }
}