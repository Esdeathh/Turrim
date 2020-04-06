draw_self();

if (FlashAlpha > 0)
{
	shader_set(shflash);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,FlashColour,FlashAlpha);
	shader_reset();
}