/// @description make the spaceship move in response to keyboard event.
move_wrap(true, true, 0);

if (keyboard_check(vk_up))
{
	motion_add(image_angle, 0.1);
}

if (keyboard_check(vk_right))
{
	image_angle -= 4;
}

if (keyboard_check(vk_left))
{
	image_angle += 4;
}

if (keyboard_check(vk_down))
{
	motion_add(image_angle, -0.1);
}

if (keyboard_check(vk_space))
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	audio_play_sound(snd_shoot,0,false);
	if (powerup == 1)
	{
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction += 10;
		_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction -= 10;
	}
}