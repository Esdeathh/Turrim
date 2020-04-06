if (sawmill_obj.status == "idle" && Trzymany == true && place_meeting(phy_position_x, phy_position_y, sawmill_obj)) {
	Trzymany = false;
	instance_destroy();
	sawmill_obj.status = "working";
	sawmill_obj.holding_item = wooden_log_obj;
	sawmill_obj.item_real = instance_create_depth(sawmill_obj.x, sawmill_obj.y - 50, 0, wooden_log_obj);
	sawmill_obj.alarm[0] = room_speed * 10;
	player1.holding = !player1.holding;
}
if (Trzymany == true && place_meeting(phy_position_x, phy_position_y, tashbin_obj)) {
	Trzymany = false;
	instance_destroy();
	player1.holding = !player1.holding;
}