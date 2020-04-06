if (Trzymany1 == true && place_meeting(phy_position_x, phy_position_y, tashbin_obj)) {
	Trzymany1 = false;
	instance_destroy();
	player1.holding = !player1.holding;
}

