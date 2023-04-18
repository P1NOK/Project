/// @description Insert description here
// You can write your code in this editor
damage = Ob_projectile_rocket.damage


image_xscale = 2
image_yscale = 2

with (Ob_enemy) {
	if (point_distance(other.x, other.y, x, y) <= 100) {
		if point_distance(other.x, other.y, x, y) < 12 {
			dis = 12
		} else {
			dis = point_distance(other.x, other.y, x, y)
		}
		var output = 100 * 2 / dis
		var dir = point_direction(other.x, other.y, x, y)
		vspd = lengthdir_y(output, dir)
		hspd = lengthdir_x(output, dir)
		hp -= other.damage
	}
}