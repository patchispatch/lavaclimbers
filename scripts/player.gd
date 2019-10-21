extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const up = Vector2(0, -1)
const grav = 1
const speed = 150
const jump_height = -500

var motion = Vector2()
var velocity = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else:
		motion.x = 0
	
	if Input.is_action_pressed("ui_up"):
		motion.y = jump_height
	else:
		motion.y = 0
	
	#if is_on_floor():
	#	print(is_on_floor())
	
	#if is_on_floor():
		
		#if Input.is_action_just_pressed("ui_up"):
		#	motion.y = jump_height
	
	#self.position.y += grav
	#motion = move_and_slide(motion, up)
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if $AnimationPlayer.current_animation != "walk":
		$AnimationPlayer.play("walk")
