/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
var f = true


if (other.f == false) {
	if (array_length(add) > 0) {
		for(i = 0; i < array_length(add); i++) {
			if (add[i] == other.id) {
				f = false
				break
			}
		}
		if (f) {
			add[array_length(add)] = other.id
			hp -= other.damage
		}
	} else {
		add[0] = other.id
		hp -= other.damage
	}
}

