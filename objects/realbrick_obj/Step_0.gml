//Obliczanie mrygania
if (Mryganie == true)
{
	FlashAlpha = lerp(FlashAlpha,1,0.1);
}
else
{
	FlashAlpha = lerp(FlashAlpha,0,0.1);
}
if (FlashAlpha > 0.9)
{
	Mryganie = false;
}
//Zmniejszanie czasu

//Koniec czasu
if (Czas < 0.5)
{
	global.Zycie += 1;
	instance_destroy();
}
//Zmiana wyglądu
if (Czas < 3)
{
	sprite_index = coolbrick;
}
if (Czas < 2)
{
	sprite_index = coolbrick1;
}
if (Czas < 1)
{
	sprite_index = coolbrick11;
}
//Naprawianie
if (place_meeting(x,y,brick_obj)) && (keyboard_check_pressed(190))
{
	sprite_index = brick;
	Psucie = false;
	Czas = 4;
	instance_destroy(instance_nearest(x,y,brick_obj));
}
if (Psucie == false)
{
	Czas = 4;
}
else
{
	Czas = lerp(Czas,0,0.0006);
}