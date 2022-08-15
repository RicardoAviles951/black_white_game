//Alex - Tea cup and graduation cap
if global.visited_alex == true and global.alex_cut == false{
		switch(step){
			case 0://Zoom camera on object
			o_music.can_play = false;
				o_player.idle = true;
				o_camera.cam_state = camera.cutscene;
				o_camera.target = o_teacup;
				if alarm[0] = -1 alarm[0] = 15;
			break;
			
			case 1://Fade in the object
				if o_teacup.alpha <= 1
				{
					if !audio_is_playing(snd_item_alex) audio_play_sound(snd_item_alex,1,false);
					o_teacup.alpha += .01;
				}
				if o_teacup.alpha >= 1
				{
				draw_des = true;
				txt = "Graduation Cap and Tea Cup.";
				}
				if alarm[0] = -1 alarm[0] = 240;
			break;
			
			case 2://Resize Camera and change cam state
				draw_des           = false;
				o_player.idle      = false;
				o_camera.cam_state = camera.gameplay;	
				global.alex_cut = true;
				o_music.can_play = true;
			break;
		}
}	

//Sam Mounted Fish
if global.visited_sam == true and global.sam_cut == false{
		switch(step){
			case 0://Zoom camera on object
			global.state = noone;
			o_music.can_play = false;
				o_player.idle = true;
				o_camera.cam_state = camera.cutscene;
				o_camera.target = o_wallfish;
				if alarm[0] = -1 alarm[0] = 15;
			break;
			
			case 1://Fade in the object
				if o_wallfish.alpha <= 1
				{
					if !audio_is_playing(snd_item_sam) audio_play_sound(snd_item_sam,1,false);
					if !audio_is_playing(snd_lake) audio_play_sound(snd_lake,2,false);
					o_wallfish.alpha += .01;
				}
				if o_wallfish.alpha >= 1
				{
				draw_des = true;
				txt = "Mounted Bass.";
				}
				if alarm[0] = -1 alarm[0] = 240;
			break;
			
			case 2:
			draw_des = false;
			o_camera.target = o_player;
			if !instance_exists(o_text_box){
				tb = instance_create_depth(x,y,-9999,o_text_box);
			}
			tb.font   = f_dialogue;
			tb.myText = "Did you care for me more than you ever let on?";
			tb.sprite = s_portrait_ghost;
			tb.emote = s_emote_love;
			tb.spd = 30;
			tb.curve = anim_smoothland;
			tb.draw = true;
			if keyboard_check_pressed(vk_enter){
				if tb.txt_finished = true{
					tb.draw = false;
					step+=1;
				}
				else{
					tb.char_speed = 2;
				}
			}
			break;
			
			case 3:
			tb.font = f_internal;
			tb.myText = "I think I cared for you that way.";
			tb.emote = s_emote_love;
			tb.spd = 30;
			tb.curve = anim_smoothland;
			tb.draw = true;
			if keyboard_check_pressed(vk_enter){
				if tb.txt_finished = true{
					tb.draw = false;
					step+=1;
				}
				else{
					tb.char_speed = 2;
				}
			}
			break;
			
			case 4://Resize Camera and change cam state
				global.state = states.ghost;
				o_player.idle      = false;
				o_camera.cam_state = camera.gameplay;	
				global.sam_cut = true;
				o_music.can_play = true;
			break;
		}
}	

//Tristan
if global.visited_tristan == true and global.tris_cut == false{
		switch(step){
			case 0://Zoom camera on object
			global.state = noone;
			o_music.can_play = false;
				o_player.idle = true;
				o_camera.cam_state = camera.cutscene;
				o_camera.target = o_coffeecup;
				if alarm[0] = -1 alarm[0] = 15;
			break;
			
			case 1://Fade in the object
				if o_coffeecup.alpha <= 1
				{
					if !audio_is_playing(snd_sipping) audio_play_sound(snd_sipping,1,false);
					if !audio_is_playing(snd_item_tristan) audio_play_sound(snd_item_tristan,2,false);
					o_coffeecup.alpha += .01;
				}
				if o_coffeecup.alpha >= 1
				{
				draw_des = true;
				txt = "Coffee Cup.";
				}
				if alarm[0] = -1 alarm[0] = 240;
			break;
			case 2:
			draw_des           = false;
			o_camera.target = o_player;
			if !instance_exists(o_text_box){
				tb = instance_create_depth(x,y,-9999,o_text_box);
			}
			tb.font   = f_dialogue;
			tb.myText = "It's hard to stomach how bitter you still are after all our love. I wish you could get over it and just care for a single person other than yourself for once.";
			tb.sprite = s_portrait_ghost;
			tb.emote = s_emote_brokenheart;
			tb.spd = 30;
			tb.curve = anim_smoothland;
			tb.draw = true;
			if keyboard_check_pressed(vk_enter){
				if tb.txt_finished = true{
					tb.draw = false;
					step+=1;
				}
				else{
					tb.char_speed = 2;
				}
			}
			break;
			
			case 3:
			tb.font   = f_internal;
			tb.myText ="Did you even like my kid? Did you even like me?";
			tb.emote = s_emote_angry;
			tb.spd = 30;
			tb.curve = anim_smoothland;
			tb.draw = true;
			if keyboard_check_pressed(vk_enter){
				if tb.txt_finished = true{
					tb.draw = false;
					step+=1;
				}
				else{
					tb.char_speed = 2;
				}
			}
			break;
			
			case 4://Resize Camera and change cam state
				global.state = states.ghost;
				o_player.idle      = false;
				o_camera.cam_state = camera.gameplay;	
				global.tris_cut = true;
				o_music.can_play = true;
			break;
		}
}	