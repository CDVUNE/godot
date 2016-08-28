
extends Node2D

#tamaño del sprite
var Sprite_size
#velocidad a la que se mueve el sprite
const speed = 50

func _ready():

	Sprite_size = get_node("Sprite").get_texture().get_size() 
	set_process(true)

func _process(delta):
	
#recolecta la informacion de la posicion del sprite
	var pos = Rect2(get_node("Sprite").get_pos()- Sprite_size/2, Sprite_size)
	var sprite_pos = get_node("Sprite").get_pos()
	
#con esto se mueve el sprite
	if (Input.is_action_pressed("Pup")):
		sprite_pos.y += -speed * delta  * 1.5
	if (Input.is_action_pressed("Pdown")):
		sprite_pos.y += speed * delta * 1.5
	if (Input.is_action_pressed("Pright")):
		sprite_pos.x += speed * delta
	if (Input.is_action_pressed("Pleft")):
		sprite_pos.x += -speed * delta 

	get_node("Sprite").set_pos(sprite_pos)

#fuck you victor (jk)