if (place_meeting(x,y,player1)) && (player1.holding == false || Trzymany) && (keyboard_check_pressed(ord("Q")) && id != sawmill_obj.item_real.id)
{
	Trzymany = !Trzymany;
	player1.holding = !player1.holding;
}
if (Trzymany == true)
{
	phy_position_y = player1.phy_position_y;
	phy_position_x = player1.phy_position_x;
	phy_speed_y = 0;
}
if (sawmill_obj.item_real.id == id)
{
	phy_position_y = sawmill_obj.y-48;
	phy_position_x = sawmill_obj.x;
	phy_speed_y = 0;
}
if (Trzymany == true)
{
	if (keyboard_check_pressed(vk_space))
	{
		Trzymany = false;
		physics_apply_impulse(phy_position_x,phy_position_y,120+player1.phy_speed_x*50,-120);
	}
}