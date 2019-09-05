extends Control

var answers = []
var questions

func _ready():
	#print( story % answers )
	
	questions.append("Hi Traveler welcome to RoyalLand /nWhat do you want to be a career ?")
	questions.append("Nice the assit can healing another people an support /n")
	$DisplayText.text = questions[0]
	print(questions[0])


func _on_TextureButton_pressed():
	answers = $PlayerInPut
	print(answers)
	print(questions[0])
	$DisplayText.text = questions[0]