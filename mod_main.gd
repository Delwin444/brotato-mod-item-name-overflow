extends Node

const MOD_DIR := "delwin-ItemNameOverflow"

var mod_dir_path := ""
var extensions_dir_path := ""

func _init():
	mod_dir_path = ModLoaderMod.get_unpacked_dir().plus_file(MOD_DIR)
	install_script_extensions()


func install_script_extensions() -> void:
	extensions_dir_path = mod_dir_path.plus_file("extensions")
	ModLoaderMod.install_script_extension(extensions_dir_path.plus_file("ui/menus/shop/coop_item_popup.gd"))
