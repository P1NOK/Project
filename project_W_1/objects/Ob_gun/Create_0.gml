/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
weapon[1] = {
	distance_to_the_muzzle_on_the_X_axis: 36,
	distance_to_the_muzzle_on_the_Y_axis: -2,
	power_recoil: 20,
	number_bullets: 4,
	spread_number_bullets: 0,
	spread: 4,
	bullet_speed: 40,
	spread_bullet_speed: 4,
	sprite_weapon: Sp_gun_shotgun,
	sprite_bullet: Sprite4
}
weapon[0] = {
	sprite_weapon: Sp_gun_shotgun7,
	distance_to_the_muzzle_on_the_X_axis: 35,
	distance_to_the_muzzle_on_the_Y_axis: 21,
	automatic_weapons: true,
	damage: 100,
	maximum_rounds: 80,
	cartridges_in_clip: 8,
	rate_of_fire: 0.5,
	recharge_time: 1,
	number_rechargeable_batteries: 1,
	power_recoil: 20,
	number_bullets: 6,
	spread_number_bullets: 1,
	spread: 0,
	bullet_speed: 40,
	spread_bullet_speed: 0,
	sprite_bullet: Sprite5
}
weapon[2] = {
	distance_to_the_muzzle_on_the_X_axis: 35,
	distance_to_the_muzzle_on_the_Y_axis: 21,
	power_recoil: 40,
	number_bullets: 6,
	spread_number_bullets: 1,
	spread: 8,
	bullet_speed: 40,
	spread_bullet_speed: 8,
	sprite_weapon: Sp_gun_shotgun7,
	sprite_bullet: Sprite5
}

Sc_staty_armament(0)


sprite_index = parameters.sprite_weapon

aiming_point = parameters.distance_to_the_muzzle_on_the_Y_axis

distance_to_the_muzzle = sqrt(sqr(parameters.distance_to_the_muzzle_on_the_X_axis) + sqr(parameters.distance_to_the_muzzle_on_the_Y_axis))

offset = radtodeg(arccos(parameters.distance_to_the_muzzle_on_the_X_axis / distance_to_the_muzzle))

weapon_angle = 90

weapon_number = 0

possibility_shot = 1