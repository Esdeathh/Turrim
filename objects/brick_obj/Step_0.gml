//Gracz 1
if (place_meeting(x,y,player1)) && (player1.holding == false || Trzymany) && (keyboard_check_pressed(ord("Q")) && id != furnance_obj.item_real.id && id != tableL_obj.item_real.id && id != tableR_obj.item_real.id)
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
if (furnance_obj.item_real.id == id)
{
	phy_position_y = furnance_obj.y-48;
	phy_position_x = furnance_obj.x;
	phy_speed_y = 0;
}
if (tableL_obj.item_real.id == id)
{
	phy_position_y = tableL_obj.y-48;
	phy_position_x = tableL_obj.x;
	phy_speed_y = 0;
}
if (tableR_obj.item_real.id == id)
{
	phy_position_y = tableR_obj.y-48;
	phy_position_x = tableR_obj.x;
	phy_speed_y = 0;
}
if (Trzymany == true)
{
	if (keyboard_check_pressed(vk_space))
	{
		Trzymany = false;
		physics_apply_impulse(phy_position_x,phy_position_y,650+player1.phy_speed_x*100,-650);
		player1.holding = false;
	}
}
//Gracz 2
if (place_meeting(x,y,player2)) && (player2.holding == false || Trzymany2) && (keyboard_check_pressed(191) && id != furnance_obj.item_real.id)
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
	if (keyboard_check_pressed(188))
	{
		Trzymany2 = false;
		physics_apply_impulse(phy_position_x,phy_position_y,300+player1.phy_speed_x*100,-300);
		player2.holding = false;
	}
}