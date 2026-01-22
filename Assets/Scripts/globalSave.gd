#extends Node
#
#var save_path:= "Assets/Scripts/globalSave.save"
#
#func save_data(money):
	#var save_money = {
		#"money" : money
	#}
	#var file = FileAccess.open(save_path, FileAccess.WRITE)
	#file.store_var(save_money)
	#file.close()
	#
