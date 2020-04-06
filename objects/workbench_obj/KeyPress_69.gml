 if (status == "working" && place_meeting(x, y, player1) && !player1.holding) {
		instance_destroy(item_real1.id);
		if (item_real2 != 0 )instance_destroy(item_real2.id);
		var tmp = instance_create_depth(x, y, 0, holding_item1);
		alarm[0] = -1;
		tmp.Trzymany = true;
		item_real1 = 0;
		item_real2 = 0;
		holding_item1 = noone;
		holding_item2 = noone;
		status = "idle";
		player1.holding = true;
	}