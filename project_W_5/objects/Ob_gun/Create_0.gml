/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
weapon[1] = {
	sprite_weapon: Sp_gun_shotgun,
	projectile_type: Ob_projectile_rocket,
	distance_to_the_muzzle_on_the_X_axis: 36,
	distance_to_the_muzzle_on_the_Y_axis: -2,
	automatic_weapons: true,
	damage: 15,
	maximum_cartridges: 80,
	current_cartridges: 80,
	cartridges_in_clip: 8,
	current_cartridges_in_clip: 8,
	rate_of_fire: 0.5,
	shot_delay: 0,
	recharge_time: 1,
	number_rechargeable_cartridges: 1,
	power_recoil: 20,
	number_bullets: 4,
	spread_number_bullets: 0,
	spread: 4,
	bullet_speed: 40,
	spread_bullet_speed: 4,
	sprite_bullet: Sp_buller
}
weapon[0] = {
	sprite_weapon: Sp_gun_shotgun7,
	projectile_type: Ob_bullet45, // Тип снаряда
	distance_to_the_muzzle_on_the_X_axis: 35,
	distance_to_the_muzzle_on_the_Y_axis: 21,
	automatic_weapons: false,
	damage: 20,
	maximum_cartridges: 40,
	current_cartridges: 40,
	cartridges_in_clip: 6,
	current_cartridges_in_clip: 6,
	rate_of_fire: 0.3,
	shot_delay: 0,
	recharge_time: 0.5,
	number_rechargeable_cartridges: 1,
	power_recoil: 20,
	number_bullets: 6,
	spread_number_bullets: 1,
	spread: 6,
	bullet_speed: 40,
	spread_bullet_speed: 4,
	sprite_bullet: Sprite4
}
weapon[2] = {
	sprite_weapon: Sprite11,
	projectile_type: Ob_projectile_rocket,
	distance_to_the_muzzle_on_the_X_axis: 38,
	distance_to_the_muzzle_on_the_Y_axis: -10,
	automatic_weapons: false,
	damage: 40,
	maximum_cartridges: 15,
	current_cartridges: 15,
	cartridges_in_clip: 1,
	current_cartridges_in_clip: 1,
	rate_of_fire: 0.5,
	shot_delay: 0,
	recharge_time: 1,
	number_rechargeable_cartridges: 1,
	power_recoil: 10,
	number_bullets: 1,
	spread_number_bullets: 0,
	spread: 2,
	bullet_speed: 15,
	spread_bullet_speed: 0,
	sprite_bullet: Sp_buller
}
weapon[3] = {
	sprite_weapon: Sprite11,
	projectile_type: Ob_projectile_rocket,
	distance_to_the_muzzle_on_the_X_axis: 38,
	distance_to_the_muzzle_on_the_Y_axis: -10,
	automatic_weapons: false,
	damage: 60,
	maximum_cartridges: 80,
	current_cartridges: 80,
	cartridges_in_clip: 8,
	current_cartridges_in_clip: 8,
	rate_of_fire: 2,
	shot_delay: 0,
	recharge_time: 1,
	number_rechargeable_cartridges: 1,
	power_recoil: 10,
	number_bullets: 1,
	spread_number_bullets: 0,
	spread: 2,
	bullet_speed: 10,
	spread_bullet_speed: 0,
	sprite_bullet: Sprite11
}


Sc_staty_armament(0)


sprite_index = parameters.sprite_weapon

aiming_point = parameters.distance_to_the_muzzle_on_the_Y_axis

distance_to_the_muzzle = sqrt(sqr(parameters.distance_to_the_muzzle_on_the_X_axis) + sqr(parameters.distance_to_the_muzzle_on_the_Y_axis))

offset = radtodeg(arccos(parameters.distance_to_the_muzzle_on_the_X_axis / distance_to_the_muzzle))

weapon_angle = 90

weapon_number = 0

recharge = 0