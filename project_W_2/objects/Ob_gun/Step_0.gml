/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if parameters.automatic_weapons {
	if mouse_check_button(mb_left) and possibility_shot {
		alarm[0] = parameters.rate_of_fire * fps
		possibility_shot = 0
		shot = 1
	} else {
		shot = 0
	}
} else {
	if mouse_check_button_pressed(mb_left) and possibility_shot {
		alarm[0] = parameters.rate_of_fire * fps
		possibility_shot = 0
		shot = 1
	} else {
		shot = 0
	}
}


dir = point_direction(x, y, mouse_x, mouse_y);

distance_to_the_mouse = sqrt(sqr(mouse_x - x) + sqr(mouse_y - y))

a = aiming_point / distance_to_the_mouse
if a > 1 {
	a = 1
} else if a < -1 {
	a = -1
}

if x <= mouse_x {
	image_angle = dir + radtodeg(arcsin((a) * sin(weapon_angle)))
} else {
	image_angle = dir - radtodeg(arcsin((a) * sin(weapon_angle)))
}


if shot {
	offset = radtodeg(arccos(parameters.distance_to_the_muzzle_on_the_X_axis / distance_to_the_muzzle))

	if x <= mouse_x {
		ndir = dir + (-offset * sign(parameters.distance_to_the_muzzle_on_the_Y_axis)) + radtodeg(arcsin(a * sin(weapon_angle)))
		sdir = dir - (90 - radtodeg(arcsin(a * sin(weapon_angle))))
	} else {
		ndir = dir + (offset * sign(parameters.distance_to_the_muzzle_on_the_Y_axis)) - radtodeg(arcsin(a * sin(weapon_angle)))
		sdir = dir + (90 - radtodeg(arcsin(a * sin(weapon_angle))))
	}

	beginning_dulo_X = lengthdir_x(aiming_point, sdir)
	end_dulo_X = lengthdir_x(distance_to_the_muzzle, ndir)
	beginning_dulo_Y = lengthdir_y(aiming_point, sdir)
	end_dulo_Y = lengthdir_y(distance_to_the_muzzle, ndir)


	repeat parameters.number_bullets + irandom_range(-parameters.spread_number_bullets, parameters.spread_number_bullets) {
		instance_create_depth(x + end_dulo_X, y + end_dulo_Y, 1, Ob_bullet45)
	}

	output_dir = point_direction(beginning_dulo_X, beginning_dulo_Y, end_dulo_X, end_dulo_Y)


	Ob_player.hspd -= lengthdir_x(parameters.power_recoil, output_dir);
	Ob_player.vspd -= lengthdir_y(parameters.power_recoil / 2, output_dir);
}




