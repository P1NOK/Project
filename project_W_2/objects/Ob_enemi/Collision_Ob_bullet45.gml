/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var f = true

//F = other.f
//damage_received = Ob_gun.parameters.damage
//id_bullet = other.id
y -= 100
if (F == false) {
	if (array_length(add) > 0) {
		for(i = 0; i < array_length(add); i++) {
			if (add[i] == id_bullet) {
				f = false
				break
			}
		}
		if (f) {
			add[array_length(add)] = id_bullet
			hp -= damage_received
		}
	} else {
		add[0] = id_bullet
		hp -= damage_received
	}
}

