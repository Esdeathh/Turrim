//Gracz 1
if (place_meeting(x,y,player1)) && (player1.holding == false || Trzymany1) && (keyboard_check_pressed(ord("Q")) && id != furnance_obj.item_real.id)
{
	Trzymany1 = !Trzymany1;
	player1.holding = !player1.holding;
}
if (Trzymany1 == true)
{
	phy_position_y = player1.phy_position_y;
	phy_position_x = player1.phy_position_x;
	phy_speed_y = 0;
}
if (furnance_obj.item_real.id == id)
{
	phy_position_y = furnance_obj.y-48;
	phy_position_x = furnance_obj.x;
	phy_speed_y = 0;
}
if (Trzymany1 == true)
{
	if (keyboard_check_pressed(vk_space))
	{
		Trzymany1 = false;
		physics_apply_impulse(phy_position_x,phy_position_y,300+player1.phy_speed_x*100,-300);
		player1.holding = !player1.holding;
	}
}
//Gracz 2
if (place_meeting(x,y,player2)) && (player2.holding == false || Trzymany2) && (keyboard_check_pressed(ord("Q")) && id != furnance_obj.item_real.id)
{
	Trzymany2 = !Trzymany2;
	player2.holding = !player2.holding;
}
if (Trzymany2 == true)
{
	phy_position_y = player2.phy_position_y;
	phy_position_x = player2.phy_position_x;
	phy_speed_y = 0;
}
if (Trzymany2 == true)
{
	if (keyboard_check_pressed(vk_space))
	{
		Trzymany2 = false;
		physics_apply_impulse(phy_position_x,phy_position_y,300+player1.phy_speed_x*100,-300);
		player2.holding = !player2.holding;
	}
}