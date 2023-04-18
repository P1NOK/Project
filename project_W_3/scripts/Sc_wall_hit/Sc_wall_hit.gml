// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_wall_hit(a, collision_type) {
	if a > 0 {
		var aim = false
		if instance_number(Ob_enemi) > 0 {
			var ob = instance_nearest(other.x, other.y, Ob_enemi)
			var dir = point_direction(other.x, other.y, ob.x, ob.y)
			if (collision_type == "v") {
				if (ob.x - other.x > 0 and sign(other.hspd) == -1) {
					aim = true
				} else if (ob.x - other.x < 0 and sign(other.hspd) == 1) {
					aim = true
				}
			} else {
				if (ob.y - other.y > 0 and sign(other.vspd) == -1) {
					aim = true
				} else if (ob.y - other.y < 0 and sign(other.vspd) == 1) {
					aim = true
				}
			}
			if (aim) {
				other.hspd = lengthdir_x(other.spd, dir)
				other.vspd = lengthdir_y(other.spd, dir)
				other.image_angle = dir
			}
		}
		if (aim == false) {
			if (collision_type == "v") {
				other.hspd *= -1
			} else {
				other.vspd *= -1
			}
		}
		other.wall_jumping -= 1
		return false
	} else {
		return true
	}
}