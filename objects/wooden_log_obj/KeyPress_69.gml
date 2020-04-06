if (sawmill_obj.status == "idle" && Trzymany == true && place_meeting(phy_position_x, phy_position_y, sawmill_obj)) {
	audio_play_sound(sawmill_get,1,false);
	Trzymany = false;
	instance_destroy();
	sawmill_obj.status = "working";
	sawmill_obj.holding_item = wooden_log_obj;
	sawmill_obj.item_real = instance_create_depth(sawmill_obj.x, sawmill_obj.y - 50, 0, wooden_log_obj);
	sawmill_obj.alarm[0] = room_speed * 10;
	player1.holding = false;
}
if (Trzymany == true && place_meeting(phy_position_x, phy_position_y, tashbin_obj)) {
	Trzymany = false;
	instance_destroy();
	player1.holding = false;
}
if (tableL_obj.status == "idle" && Trzymany == true && place_meeting(phy_position_x, phy_position_y, tableL_obj)) {
	Trzymany = false;
	instance_destroy();
	tableL_obj.status = "working";
	tableL_obj.holding_item = wooden_log_obj;
	tableL_obj.item_real = instance_create_depth(tableL_obj.x, tableL_obj.y - 50, 0, wooden_log_obj);
	player1.holding = false;
}
if (tableR_obj.status == "idle" && Trzymany == true && place_meeting(phy_position_x, phy_position_y, tableR_obj)) {
	Trzymany = false;
	instance_destroy();
	tableR_obj.status = "working";
	tableR_obj.holding_item = wooden_log_obj;
	tableR_obj.item_real = instance_create_depth(tableR_obj.x, tableR_obj.y - 50, 0, wooden_log_obj);
	player1.holding = false;
}