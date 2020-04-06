if (status == "idle" && holding_item1 == glass_obj && holding_item2 == wooden_planks_obj) {
	status = "working";
	alarm[0] = room_speed * 10;
	audio_play_sound(workbench_put,1,false);
} else if (holding_item1 == glass_obj && holding_item2 == wooden_planks_obj) {
	instance_destroy(item_real1.id);
	instance_destroy(item_real2.id);
	holding_item1 = window_obj;
	holding_item2 = noone;
	item_real1 = instance_create_depth(x, y, 0, window_obj);
	item_real2 = 0;
	alarm[0] = room_speed * 3;
} else if (holding_item1 == window_obj) {
	instance_destroy(item_real1.id);
	item_real1 = 0;
	holding_item1 = noone;
	status = "idle";
	audio_play_sound(workbench_damage,1,false);
}