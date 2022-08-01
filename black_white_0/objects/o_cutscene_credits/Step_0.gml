var guiW = display_get_gui_width();
get_input();
if(currentState == cutSceneStates.Active) 
{
	
	switch (currentStep) 
	{
		case 0:
		if alpha <1 alpha +=.01;
		spr = s_ghost_walk_down;
		text = "CREDITS\n\nGame Artist & Art Director\nAmber Nicole Williams @Ambrowskii\n\nDeveloper & Programmer\nRicardo Aviles @Ricky_games20\n\nWriter & Sound Designer\nKenna M. Lindsay @Kenna_Lindsay";
		if key_enter{
			alpha = 0;
			currentStep +=1;
		}
		break;
		
		case 1:
		if alpha <1 alpha +=.01;
		spr = s_alex_walk_down; 
		text = "VISUAL ASSETS\n\nExpression Bubbles Cynthia J Sulit @mcjsulit\n\nModern Interiors RPG tileset by LimeZu @lime_px\n\nFont 'Press Start' Copyright (c) 2011, Cody 'CodeMan38' Boisclair (cody@zone38.net), with Reserved Font Name 'Press Start'\n\nTeddy The Dog From Heaven\n\nModern City Top-Down Tileset [16x16] by Exuin\n\nDogepack by Nugglet";
		if key_enter{
			alpha = 0;
			currentStep +=1;
		}
		break;
		
		case 2:
		horz_align = fa_left;
		x_pos = guiW/4;
		if alpha <1 alpha +=.01;
		spr = s_sam_walk_down; 
		text = "                            SOUND ASSETS\nTile Footsteps                    Carpet footsteps\nGrass footsteps                 Wood footsteps\nParking lot footsteps         Pages turning\nBlowing nose                     Car engine\nCar door open                    Car door close\nBirds chirping                    Toilet flush sound\nSink water sound               Door knocking sound\nDoor opening                     Door closing\nPosession sound               Ghost voices\nMenu sounds                      Dog bark\nPhone dial tone                  Hang up phone\nSipping sound                    Chewing sound\nLake sounds                       Bell - The Wait\nCongratulations                  Zippered wallet\nFolded wallet                      'Found wallet'\nJiggling change                 Credits suggestion";
		if key_enter{
			alpha = 0;
			currentStep +=1;
		}
		break;
		
		case 3:
		if alpha <1 alpha +=.01;
		horz_align = fa_center;
		x_pos = guiW/2;
		if alpha <1 alpha +=.01;
		spr = s_dog_idle; 
		text = "SPECIAL THANKS\n\nJD\nmhmdJD\nFriendlyCosmonaut\nShaun Spalding\nPeyton Burnham\nPixelatedPope\n1up Indie";
		if key_enter{
			currentStep +=1;
		}
		break;
		
		case 4:
		if alpha >0 alpha -=.01;
		var music = snd_credits;
		if audio_is_playing(music){
			audio_sound_gain(music,0,1500);
		}
		var vlm = audio_sound_get_gain(music);
		if vlm <.1{
			audio_stop_all();
			room_goto(rm_main_menu);
		}
		break;
		
		
	}
}