//Lewo i prawo
if (phy_speed_x > -5) && (phy_speed_x < 5)
{
if (keyboard_check(ord("A")))
{
	phy_speed_x -= 1;
}
if (keyboard_check(ord("D")))
{
	phy_speed_x += 1;
}
}
if (!keyboard_check(ord("D"))) && (!keyboard_check(ord("A")))
{
	phy_speed_x = 0;
}
//Wchodzenie
if (instance_place(x,y,o_drabina)) && (keyboard_check(ord("W")))
{
	if (!physics_test_overlap(phy_position_x, phy_position_y-1, 0, o_sciana))
	{
		phy_speed_y = -5;
	}
	else
	{
		phy_speed_y = 0;
	}
}
if (instance_place(x,y,o_drabina)) && (keyboard_check(ord("S"))) 
{
	if (!physics_test_overlap(phy_position_x, phy_position_y+1, 0, o_sciana))
	{
		phy_speed_y = 5;
	}
	else
	{
		phy_speed_y = 0;
	}
}
