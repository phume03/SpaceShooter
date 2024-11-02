/// @description make spaceship explode on collision with rock.
if (powerup == 2) 
{
	// should never happen
	exit;
}

obj_game.alarm[1] = 1;
effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
obj_game.alarm[0] = 120;

