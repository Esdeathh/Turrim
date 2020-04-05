if (status == "idle") {
	sprite_index = sawmill_idle;
} else if (holding_item == wooden_log_obj || holding_item == wooden_planks_obj){
	sprite_index = sawmill_working_wood;
} else {
	sprite_index = sawmill_working_metal;
}