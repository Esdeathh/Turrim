//Lewo i prawo
if (phy_speed_x > -5) && (phy_speed_x < 5)
{
if (keyboard_check(vk_left))
{
	phy_speed_x -= 0.5;
}
if (keyboard_check(vk_right))
{
	phy_speed_x += 0.5;
}
}