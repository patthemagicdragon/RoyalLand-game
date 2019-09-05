extends Control

var story = "Hi Traveler welcome to RoyalLand , You want to be an %s , "
var answers = []
var questions = []
var question_number = 0

func _ready():
	
	questions.append("What do you want to be a career ?")
	questions.append("Do you want to learn the first skill or not?")
	questions.append("You will searching the ancient for upgrade your first skill , Do you want to travel?")
	
	$VBoxContainer/DisplayText.text = questions[0]


func _on_TextureButton_pressed():
	
	if question_number < len(questions):
		# answer the question 
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[question_number+1]
		$PlayerInput.text = ""
	
	# pause
	
	if question_number == 1:
		# answer the question 
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[2]
		$PlayerInput.text = ""
	
	# pause
	
	if question_number == 2:
		# answer the question 
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = ""
		$PlayerInput.text = ""
		
	question_number = question_number + 1