extends StaticBody2D

var flip = true
var pos_inic
var pos_final
var velocidade = 0.3
# Called when the node enters the scene tree for the first time.
func _ready():
	#Monstro parado
	$Sprite.play("walk")
	pos_inic = $".".position.x
	pos_final = pos_inic+100

#Movimentação do monstro
func _process(delta):
	if(pos_inic <= pos_final and flip):
		$".".position.x += velocidade
		$Sprite.flip_h = false
		if($".".position.x >= pos_final):
			flip = false
			
	if($".".position.x >= pos_inic and !flip):
		$".".position.x -= velocidade
		$Sprite.flip_h = true
		if($".".position.x <= pos_inic):
			flip = false

func dano():
	#print("Morreu")
	#$".".queue_free()
	$Destroy.play()

#Destroi o monstro
func _on_Destroy_finished():
	$".".queue_free()
