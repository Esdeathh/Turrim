if (place_meeting(x,y,player1)) && (keyboard_check_pressed(ord("Q")) && id != furnance_obj.item_real.id)
{
	Trzymany = !Trzymany;
}
if (Trzymany == true)
{
	y = player1.phy_position_y;
	x = player1.phy_position_x;
}