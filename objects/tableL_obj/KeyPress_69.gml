if (status == "empty" and position_meeting(x, y, player1) and position_meeting(x, y, )) {
	status = "working";
} else if (status == "working" and position_meeting(x, y, player1)) {
	status = "idle";
}