switch(global.state){
	case states.alex:
		switch(global.rm){
			case rooms.bathroom: 
				if moved == false{
						show_debug_message("MOVING");
						o_alex.x = 200;
						o_alex.y = 160
						moved = true
					}
					break;
		}

	break;
	case states.tristan:
		switch(global.rm){
			case rooms.bathroom: 
				if moved == false{
						show_debug_message("MOVING");
						o_tristan.x = 200;
						o_tristan.y = 160
						moved = true
					}
					break;
		}
	break;
	case states.sam:
		switch(global.rm){
			case rooms.bathroom: 
				if moved == false{
						show_debug_message("MOVING");
						o_sam.x = 200;
						o_sam.y = 160
						moved = true
					}
					break;
		}
	break;
}