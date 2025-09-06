# player.gd
extends CharacterBody2D

@onready var happy_boo: HappyBooClass = $happy_boo_instance/HappyBoo

func _physics_process(delta: float) -> void:
    var direction = Input.get_vector("move_left","move_right","move_up","move_down")
    velocity = direction * 600
    move_and_slide()
    
    if direction != Vector2.ZERO:
        happy_boo.animation_player.play("walk")
    else:
        #happy_boo.stop_animation()
        happy_boo.animation_player.play("idle")
