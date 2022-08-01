switch(global.state){
	case states.ghost:
	target = o_player;
	break;
	
	case states.alex:
	target = o_alex;
	break;
	
	case states.sam:
	target = o_sam;
	break;
	
	case states.tristan:
	target = o_tristan;
	break;
}

if allowed {
switch(global.state){
	case states.ghost:
	
		switch(wallet_page){
			case 0:
				sprite = s_portrait_ghost;
				font = f_dialogue;
				text = "Where's my wallet!?";
				curve = anim_smoothland;
				emote = s_emote_shockedquestion;
				emote_create(target_y,curve,spd,emote);
				draw = true;
				if keyboard_check_pressed(vk_enter){
					draw = false
					wallet_page+=1;
				}
			break;
			
			case 1:
				text = "Tristan would say 'did you check the last place you left it?'"; 
			break;
		
		}
	break;
	
	case states.alex:
	
		switch(wallet_page){
			case 0:
				sprite = s_portrait_wallet;
				font = f_description;
				text = "Contains $20 in singles and 5's, a change pouch, a debit card, school ID, a folded up copy of the periodic table of the elements that has been highlighted ";
				if keyboard_check_pressed(vk_enter){
					wallet_page+=1;
				}
			break;
			case 1:
			sprite = s_portrait_alex;
			font = f_description;
			text ="I'm glad Professor Lyons is going to let me take my physics final after all of this funeral mess is over. It's nice how supportive school has been about it."
			curve = anim_smoothland;
			emote = s_emote_love;
			emote_create(target_y,curve,spd,emote);
			draw = true;
			break;
	}
	break;
	
	
	case states.sam:
	
	switch(wallet_page){
			case 0:
				sprite = s_portrait_wallet;
				font = f_description;
				text = "Contains $40, a state ID, a discover card with the local Highschool football team logo on it, receipt for two coffees, a wallet picture of Alex, Tristan, Sam, and Jude/The decased from a fishing trip when Alex was small.";
				if keyboard_check_pressed(vk_enter){
					wallet_page+=1;
				}
			break;
			case 1:
			sprite = s_portrait_sam;
			font = f_description;
			text ="Alex was so cute when they were little, we were all so cute when we were young."
			curve = anim_smoothland;
			emote = s_emote_love;
			emote_create(target_y,curve,spd,emote);
			draw = true;
			break;
	}
	break;
	
	case states.tristan:
	
	switch(wallet_page){
			case 0:
				sprite = s_portrait_wallet;
				font = f_description;
				text = "Lots of credit cards and receipts inside, no cash.";
				if keyboard_check_pressed(vk_enter){
					wallet_page+=1;
				}
			break;
			case 1:
			sprite = s_portrait_tristan;
			font = f_internal;
			text ="I shouldn't have bought that. Retail therapy, I guess. I must be experiencing grief."
			curve = anim_smoothland;
			emote = s_emote_brokenheart;
			emote_create(target_y,curve,spd,emote);
			draw = true;
			break;
	}
	break;
	
}

if (keyboard_check_pressed(ord("E")) and can_destroy == true){
	target.idle = false;
	instance_destroy();
}
}
else
{
	target.idle = false;
}