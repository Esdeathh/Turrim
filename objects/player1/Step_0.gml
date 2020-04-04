//Lewo i prawo
if (phy_speed_x > -5) && (phy_speed_x < 5)
{
if (keyboard_check(vk_left))
{
	phy_speed_x -= 1;
}
if (keyboard_check(vk_right))
{
	phy_speed_x += 1;
}
}
if (!keyboard_check(vk_right)) && (!keyboard_check(vk_left))
{
	phy_speed_x = 0;
}

if (instance_place(x,y,o_drabina)) && (keyboard_check(vk_up))
{
	phy_speed_y = -5;
}
if (instance_place(x,y,o_drabina)) && (keyboard_check(vk_down)) 
{
	phy_speed_y = 5;
}