 if (place_meeting(x, y, player1) && !player1.holding) {
		var tmp = instance_create_depth(x, y, 0, wooden_log_obj);
		tmp.Trzymany = true;
		player1.holding = true;
	}