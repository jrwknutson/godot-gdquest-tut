# happy_boo.gd
class_name HappyBooClass

extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func play_animation():
    animation_player.play("walk")

func stop_animation():
    animation_player.play("idle")
