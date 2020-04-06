if (place_meeting(x,y,player1)) && (player1.holding == false || Trzymany) && (keyboard_check_pressed(ord("Q")) && (id != workbench_obj.item_real1.id || id != furnance_obj.item_real.id))
{
	Trzymany = !Trzymany;
	player1.holding = false;
}
if (Trzymany == true)
{
	phy_position_y = player1.phy_position_y;
	phy_position_x = player1.phy_position_x;
	phy_speed_y = 0;
}
if (workbench_obj.item_real1.id == id)
{
	phy_position_y = workbench_obj.y-48;
	phy_position_x = workbench_obj.x;
	phy_speed_y = 0;
}
if (furnance_obj.item_real.id == id)
{
	phy_position_y = furnance_obj.y-48;
	phy_position_x = furnance_obj.x;
	phy_speed_y = 0;
}
if (Trzymany == true)
{
	if (keyboard_check_pressed(vk_space))
	{
		Trzymany = false;
		physics_apply_impulse(phy_position_x,phy_position_y,325+player1.phy_speed_x*100,-325);
		player1.holding = false;
	}
}