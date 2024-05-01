extends RigidBody2D

func _ready():
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	# randomly chooses one of the 03 animations
	$AnimatedSprite2D.play(mob_types[randi() % mob_types.size()])


func _process(delta):
	pass

# Deletes the mob instance when they leave the scren
func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
