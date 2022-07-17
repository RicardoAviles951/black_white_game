if _enabled
{
	with(o_interaction_parent){
		depth = -bbox_bottom;
	}

	with(o_item_parent){
		depth = -bbox_bottom;
	}
	}
	else 
	{
		with(o_interaction_parent){
		depth = 1;
	}

	with(o_item_parent){
		depth = 1;
	}
}