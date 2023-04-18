/// @description Insert description here
// You can write your code in this editor
sprite_index = Ob_gun.parameters.sprite_bullet


dir = point_direction(Ob_gun.x + Ob_gun.beginning_dulo_X, Ob_gun.y + Ob_gun.beginning_dulo_Y, Ob_gun.x + Ob_gun.end_dulo_X, Ob_gun.y + Ob_gun.end_dulo_Y) + random_range(-Ob_gun.parameters.spread, Ob_gun.parameters.spread)
image_angle=dir

r = random_range(-Ob_gun.parameters.spread_bullet_speed, Ob_gun.parameters.spread_bullet_speed)

vspd = lengthdir_y(Ob_gun.parameters.bullet_speed + r, dir)
hspd = lengthdir_x(Ob_gun.parameters.bullet_speed + r, dir)

grv = 0

damage = Ob_gun.parameters.damage
f = false

jump = 5