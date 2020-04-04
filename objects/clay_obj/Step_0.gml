if (place_meeting(x,y,player1)) && (keyboard_check_pressed(ord("Q")) && id != furnance_obj.item_real.id)
{
	Trzymany = !Trzymany;
}
if (Trzymany == true)
{
	phy_position_y = player1.phy_position_y;
	phy_position_x = player1.phy_position_x;
	phy_speed_y = 0;
}
if (furnance_obj.item_real.id == id)
{
	phy_position_y = furnance_obj.y;
	phy_position_x = furnance_obj.x;
	phy_speed_y = 0;
}
if (Trzymany == true)
{
	if (keyboard_check_pressed(ord("R")))
	{
		Trzymany = false;
		physics_apply_impulse(phy_position_x,phy_position_y,100,-100);
	}
}