if (workbench_obj.status == "idle" && Trzymany == true && place_meeting(phy_position_x, phy_position_y, workbench_obj)) {
	Trzymany = false;
	instance_destroy();
	workbench_obj.holding_item2 = wooden_planks_obj;
	workbench_obj.item_real2 = instance_create_depth(workbench_obj.x + 20, workbench_obj.y - 50, 0, wooden_planks_obj);
	workbench_obj.alarm[0] = room_speed;
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
	tableL_obj.holding_item = wooden_planks_obj;
	tableL_obj.item_real = instance_create_depth(tableL_obj.x, tableL_obj.y - 50, 0, wooden_planks_obj);
	player1.holding = false;
}
if (tableR_obj.status == "idle" && Trzymany == true && place_meeting(phy_position_x, phy_position_y, tableR_obj)) {
	Trzymany = false;
	instance_destroy();
	tableR_obj.status = "working";
	tableR_obj.holding_item = wooden_planks_obj;
	tableR_obj.item_real = instance_create_depth(tableR_obj.x, tableR_obj.y - 50, 0, wooden_planks_obj);
	player1.holding = false;
}