if (x < 900)
{
if (keyboard_check(ord("W"))) || (keyboard_check(ord("S")))
{
	instance_change(o_nieprzejscie,false);
}
}
if (x > 900)
{
if (keyboard_check(vk_up)) || (keyboard_check(vk_down))
{
	instance_change(o_nieprzejscie,false);
}
}