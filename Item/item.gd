@tool
class_name Item extends Area2D #Le damos un nombre al script para usarlo en todos los items

@export var type:ItemType 
@export var texture: CompressedTexture2D: 
	set(value):
		texture = value
		$Sprite2D.texture = value #Igualamos el nombre de la textura al nombre del item

enum ItemType { ESPADA, LUPA, RELOJ } #Enumeramos todos los objetos que vamos a tener



func collect_item(): 
	queue_free() #Eliminamos el nodo Area2D
