 if (status == "working" && place_meeting(x, y, player1)) {
		instance_destroy(item_real.id);
		var tmp = instance_create_depth(x, y, 0, holding_item);
		tmp.Trzymany = true;
		item_real = 0;
		holding_item = noone;
		status = "idle";
	}