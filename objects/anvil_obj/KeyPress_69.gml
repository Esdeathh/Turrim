 if (status == "working" && place_meeting(x, y, player1) && !player1.holding) {
		instance_destroy(item_real.id);
		var tmp = instance_create_depth(x, y, 0, holding_item);
		alarm[0] = -1;
		tmp.Trzymany = true;
		item_real = 0;
		holding_item = noone;
		to_destroy = false;
		status = "idle";
		player1.holding = true;
	}