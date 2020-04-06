alarm[0] = room_speed*60;
repeat (3)
{
Rodzaj = irandom_range(1,3);
if (Rodzaj == 1)
{
	var inst = instance_find(realbrick_obj, irandom(instance_number(realbrick_obj) - 1));
	inst.Psucie = true;
}
if (Rodzaj == 2)
{
	var inst = instance_find(realwindow_obj, irandom(instance_number(realwindow_obj) - 1));
	inst.Psucie = true;
}
if (Rodzaj == 3)
{
	var inst = instance_find(realtile_obj, irandom(instance_number(realtile_obj) - 1));
	inst.Psucie = true;
}
}