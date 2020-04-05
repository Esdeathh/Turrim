if (holding_item == clay_obj) {
	instance_destroy(item_real.id);
	holding_item = brick_obj;
	item_real = instance_create_depth(x, y, 0, brick_obj);
	alarm[0] = room_speed * 3;
} else if (holding_item == brick_obj) {
	instance_destroy(item_real.id);
	item_real = 0;
	holding_item = noone;
	status = "idle";
}

if (holding_item == sand_obj) {
	instance_destroy(item_real.id);
	holding_item = glass_obj;
	item_real = instance_create_depth(x, y - 50, 0, glass_obj);
	alarm[0] = room_speed * 3;
} else if (holding_item == glass_obj) {
	instance_destroy(item_real.id);
	item_real = 0;
	holding_item = noone;
	status = "idle";
}