
function next_step(){
if keyboard_check_pressed(vk_enter)
{
	with(o_text_box){
		if txt_finished{
			char_current = 1;
			char_speed = .5;
			counter+=1;	
		}
		else
		{
			char_speed =2;
		}
		
	}
	
	//o_text_box.counter +=1;
	
	
}
}