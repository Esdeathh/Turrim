if (place_meeting(x,y,player1)) && (keyboard_check_pressed(ord("Q")))
{
	Trzymany = true;
}
if (Trzymany == true)
{
	y = player1.phy_position_y;
	x = player1.phy_position_x;
}