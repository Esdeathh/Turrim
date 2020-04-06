if (workbench_obj.status == "idle" && Trzymany == true && place_meeting(phy_position_x, phy_position_y, workbench_obj)) {
	Trzymany = false;
	instance_destroy();
	workbench_obj.holding_item2 = wooden_planks_obj;
	workbench_obj.item_real2 = instance_create_depth(workbench_obj.x + 20, workbench_obj.y - 50, 0, wooden_planks_obj);
	workbench_obj.alarm[0] = room_speed;
	player1.holding = !player1.holding;
}
if (Trzymany == true && place_meeting(phy_position_x, phy_position_y, tashbin_obj)) {
	Trzymany = false;
	instance_destroy();
	player1.holding = !player1.holding;
}