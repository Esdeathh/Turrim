if (holding_item == wooden_log_obj) {
	instance_destroy(item_real.id);
	holding_item = wooden_planks_obj;
	item_real = instance_create_depth(x, y, 0, wooden_planks_obj);
	alarm[0] = room_speed * 3;
} else if (holding_item == wooden_planks_obj) {
	instance_destroy(item_real.id);
	item_real = 0;
	holding_item = noone;
	status = "idle";
}

if (holding_item == metal_plate_obj) {
	instance_destroy(item_real.id);
	holding_item = tile_obj;
	item_real = instance_create_depth(x, y, 0, tile_obj);
	alarm[0] = room_speed * 3;
} else if (holding_item == tile_obj) {
	instance_destroy(item_real.id);
	item_real = 0;
	holding_item = noone;
	status = "idle";
}