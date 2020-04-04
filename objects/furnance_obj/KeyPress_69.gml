if (status == "idle" and position_meeting(x, y, player1)) {
	status = "working";
} else if (status == "working" and position_meeting(x, y, player1)) {
	status = "idle";
}