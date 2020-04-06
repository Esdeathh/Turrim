if (holding_item == metal_ingot_obj) {
	instance_destroy(item_real.id);
	holding_item = metal_plate;
	item_real = instance_create_depth(x, y, 0, metal_plate);
	alarm[0] = room_speed * 3;
	to_destroy = true;
} else if (holding_item == metal_plate && to_destroy == true) {
	instance_destroy(item_real.id);
	item_real = 0;
	holding_item = noone;
	to_destroy = false;
	status = "idle";
} else if (holding_item == metal_plate && to_destroy == false) {
	instance_destroy(item_real.id);
	holding_item = ornamentation_obj;
	item_real = instance_create_depth(x, y, 0, ornamentation_obj);
	alarm[0] = room_speed * 3;
} else if (holding_item == ornamentation_obj) {
	instance_destroy(item_real.id);
	item_real = 0;
	holding_item = noone;
	status = "idle";
}