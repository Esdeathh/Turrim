if (furnance_obj.status == "idle" && Trzymany == true && place_meeting(x, y, furnance_obj)) {
	Trzymany = false;
	instance_destroy();
	furnance_obj.status = "working";
	furnance_obj.holding_item = clay_obj;
	furnance_obj.item_real = instance_create_depth(furnance_obj.x, furnance_obj.y - 50, 0, clay_obj);
	furnance_obj.alarm[0] = room_speed * 10;
}