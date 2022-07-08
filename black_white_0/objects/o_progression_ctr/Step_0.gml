//Alex - Tea cup and graduation cap
if global.visited_alex == true and global.alex_cut == false{
		switch(step){
			case 0://Zoom camera on object
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
			break;
		}
}	

//Sam Mounted Fish
if global.visited_sam == true and global.sam_cut == false{
		switch(step){
			case 0://Zoom camera on object
				o_player.idle = true;
				o_camera.cam_state = camera.cutscene;
				o_camera.target = o_wallfish;
				if alarm[0] = -1 alarm[0] = 15;
			break;
			
			case 1://Fade in the object
				if o_wallfish.alpha <= 1
				{
					if !audio_is_playing(snd_item_sam) audio_play_sound(snd_item_sam,1,false);
					o_wallfish.alpha += .01;
				}
				if o_wallfish.alpha >= 1
				{
				draw_des = true;
				txt = "Mounted Bass.";
				}
				if alarm[0] = -1 alarm[0] = 240;
			break;
			
			case 2://Resize Camera and change cam state
				draw_des           = false;
				o_player.idle      = false;
				o_camera.cam_state = camera.gameplay;	
				global.sam_cut = true;
			break;
		}
}	

//Tristan
if global.visited_tristan == true and global.tris_cut == false{
		switch(step){
			case 0://Zoom camera on object
				o_player.idle = true;
				o_camera.cam_state = camera.cutscene;
				o_camera.target = o_coffeecup;
				if alarm[0] = -1 alarm[0] = 15;
			break;
			
			case 1://Fade in the object
				if o_coffeecup.alpha <= 1
				{
					if !audio_is_playing(snd_item_tristan) audio_play_sound(snd_item_tristan,1,false);
					o_coffeecup.alpha += .01;
				}
				if o_coffeecup.alpha >= 1
				{
				draw_des = true;
				txt = "Coffee Cup.";
				}
				if alarm[0] = -1 alarm[0] = 240;
			break;
			
			case 2://Resize Camera and change cam state
				draw_des           = false;
				o_player.idle      = false;
				o_camera.cam_state = camera.gameplay;	
				global.tris_cut = true;
			break;
		}
}	