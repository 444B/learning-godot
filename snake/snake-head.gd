extends Area2D

signal hit

var screen_size
var apples_eaten: int = 0
@export var speed: float = 400.0


func _ready() -> void:
	screen_size = get_viewport_rect().size
	
func _process(delta) -> void:
	var velocity := Vector2.ZERO
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	 


func _on_area_entered(area: Area2D) -> void:
	hit.emit()
	if area.is_in_group("apple-group"):
		#hide()
		apples_eaten += 1
		print("apples eaten:" + str(apples_eaten))
		#$"snake-head-collision".set_deferred("disabled", true)

		
		
	elif area.is_in_group("snake-body-group"):
		#hide()
		print("game over")
		#$"snake-head-collision".set_deferred("disabled", true)
	
	# Must be deferred as we can't change physics properties on a physics callback.
	
		#if area_that_entered.is_in_group("gem"):
		#set_gem_count(gem_count + 1)
	#elif area_that_entered.is_in_group("healing_item"):
		#set_health(health + 10)


func start(pos):
	position = pos
	show()
	$"snake-head-collision".disabled = false
