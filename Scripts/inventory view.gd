extends Control

var is_open: bool = false

func open():
	visible = true
	is_open = true

func close():
	visible = false
	is_open = false

# Made using this tutorial https://www.youtube.com/watch?v=qLrj_HWA9CI
