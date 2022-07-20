get_input();
if(currentState == cutSceneStates.Active) 
{
	
	switch (currentStep) 
	{
		case 0:
		
		global.state = noone;
		with(o_camera)
		{
		cam_state = camera.cutscene
		zoom_mode = zm.zoom_out;
		}
		
		if !instance_exists(o_text_box){
			tb = instance_create_depth(x,y,-9999,o_text_box);
		}
		currentStep+=1;
		break;
		
		case 1:
		tb.font   = f_dialogue;
		tb.sprite = s_portrait_ghost;
		tb.myText = "I hope they know how proud I am of them for everything they accomplished while I was alive, and for everything I know they will do in the future. I love them so much and I hope they can forgive me for not being able to be there.";
		cut_step();
		break;
		
		case 2:
		tb.font   = f_internal;
		tb.sprite = s_portrait_ghost;
		tb.myText = "I know how proud of you I am."
		cut_step();
		break;
		
		case 3:
		tb.font   = f_description;
		tb.sprite = s_portrait_teacup;
		tb.myText = "You have done your best to point Alex towards the relationships that will support them as they move forward in life -- however they decide to do so. The tag on the teabag reads:\n 'You had a chance that few get, and you used it well: you are remembered and you are loved. Drink me.'";
		cut_step();
		break;
		
		case 4:
		tb.font   = f_internal;
		tb.sprite = s_portrait_ghost;
		tb.myText = "Won't be the first time I drank weird tea at a weird party. bottoms up!";
		cut_step();
		break;
		
		case 5:
		//Flash to white
		//Switch background
		//Focus on dog
		currentStep+=1;
		break;
		
		case 6:
		tb.font   = f_dialogue;
		tb.sprite = s_portrait_ghost;
		tb.myText = "Teddy!!!! I knew you would be here waiting for me! Let's play!";
		cut_step();
		break;
		
		case 7:
		//Zoom on dog walking away and fading out.
			currentStep+=1;
		break;
		
		case 8:
		tb.font   = f_internal;
		tb.sprite = s_portrait_ghost;
		tb.myText = "Maybe it's not just all dogs that go to heaven... everybody deserves a heaven.";
		cut_step();
		break;
		
		case 9:
		//Player moves towards door, fades away. 
		//screen goes white
		break;
		
		case 10:
		//Go to credits
		break;
	}
}