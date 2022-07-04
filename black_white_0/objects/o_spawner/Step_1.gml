switch (global.state) {
    case states.ghost:
        switch (global.rm) {
			case rooms.reception:
				spawner(o_tristan,532,320);
				spawner(o_sam,400,244);
			break;
			case rooms.viewing:
				spawner(o_alex,192,172);
			break;
		}
    break;
	case states.alex:
		switch (global.rm) {
			case rooms.reception:
				spawner(o_tristan,256,280);
			break;
			case rooms.viewing:
				if global.spawned == false{
					spawner(o_alex,288,188);
					global.spawned = true;
				}
				spawner(o_sam,448,172);
			break;
		}	
	break;
	case states.sam:
		 switch (global.rm) {
			case rooms.reception:
				if global.spawned == false{
					spawner(o_sam,436,336);
					global.spawned = true;
				}
				spawner(o_alex,212,176);
			break;
			case rooms.viewing:
				spawner(o_tristan,160,248);
			break;
		}
	break;
	case states.tristan:
		 switch (global.rm) {
			case rooms.bathroom:
			if global.spawned == false{
				spawner(o_tristan,160,160);
				global.spawned = true;
			}
			break;
			case rooms.viewing:
				spawner(o_alex,128,184);
				spawner(o_sam,224,316);
			break;
		}
	break;
}