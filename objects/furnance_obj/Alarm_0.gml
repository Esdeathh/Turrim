if (holding_item == clay_obj) {
	instance_destroy(item_real.id);
	audio_play_sound(furnance_get,1,false);
	holding_item = brick_obj;
	item_real = instance_create_depth(x, y, 0, brick_obj);
	alarm[0] = room_speed * 3;
} else if (holding_item == brick_obj) {
	instance_destroy(item_real.id);
	audio_play_sound(furnance_destroy,1,false);
	item_real = 0;
	holding_item = noone;
	status = "idle";
}

if (holding_item == sand_obj) {
	instance_destroy(item_real.id);
	audio_play_sound(furnance_get,1,false);
	holding_item = glass_obj;
	item_real = instance_create_depth(x, y, 0, glass_obj);
	alarm[0] = room_speed * 3;
} else if (holding_item == glass_obj) {
	instance_destroy(item_real.id);
	audio_play_sound(furnance_destroy,1,false);
	item_real = 0;
	holding_item = noone;
	status = "idle";
}