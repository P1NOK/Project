/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

weapon_number += 1
if weapon_number == array_length(weapon) {
	weapon_number = 0
}

Sc_staty_armament(weapon_number)

sprite_index = parameters.sprite_weapon

aiming_point = parameters.distance_to_the_muzzle_on_the_Y_axis

distance_to_the_muzzle = sqrt(sqr(parameters.distance_to_the_muzzle_on_the_X_axis) + sqr(parameters.distance_to_the_muzzle_on_the_Y_axis))

offset = radtodeg(arccos(parameters.distance_to_the_muzzle_on_the_X_axis / distance_to_the_muzzle))