class_name Inventario extends Area2D

var inventory = {} #Creamos el inventario

func _on_area_entered(area: Area2D) -> void:
	if area is Item: #Preguntamos si lo que se detecto en el Area2D es un Item
		add_item_to_inventory(area) #Llamamos a la funcion 
	area.collect_item() #Llamamos una función del item que agarramos (el nombre del script es Item.gd)

func add_item_to_inventory(item:Item):
	if not inventory.has(item.type): #Consultamos si. NO hay en el inventario, el Item que agarramos
		inventory[item.type] = 1 #Agreganmos un item la inventario
	else: 
		inventory[item.type] = inventory[item.type] + 1 #Si no, a la cantidad que teniamos anteriommente le sumamos 1
	print("Añadido al inventario un objeto llamado : ", Item.ItemType.keys()[item.type], " ahora tenemos ", inventory[item.type])


	
