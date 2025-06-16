extends "res://ui/menus/shop/coop_item_popup.gd"

const target_node_path := "ItemPanelUI/MarginContainer/VBoxContainer/ItemDescription/HBoxContainer/ScrollContainer"

func _ready() -> void:
	
	if _replaceable_box_container.has_node(target_node_path) != true:
		pass
	
	_replaceable_box_container.get_node(target_node_path).scroll_vertical_enabled = false
