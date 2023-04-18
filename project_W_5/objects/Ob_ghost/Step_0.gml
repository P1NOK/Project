/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if (point_distance(x, y, Ob_player.x, Ob_player.y) > 50) {
	dir = point_direction(x, y, Ob_player.x + random_range(-100, 100), Ob_player.y + random_range(-100, 100))
} else {
	dir = point_direction(x, y, Ob_player.x + random_range(-30, 30), Ob_player.y + random_range(-30, 30))
}
Y = lengthdir_y(1, dir) / 10
X = lengthdir_x(1, dir) / 10

hspd += X
vspd += Y

x += hspd
y += vspd

//mp_


hspd *= 0.95
vspd *= 0.95

if hp <= 0 {
	instance_destroy()
}