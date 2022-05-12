extends Node

var difficulty: String = "none"
var character: String = "none"
var song: String = "none"
var song_score: String = "none"

# Indices denote ranking i.e. index 0 is first place, etc.
var idx := 0  # This denotes index that will be replaced
			  # For easier time when updating scores
var score := 0 # Temporarily holds score of a game

var player_data_scores = {
	"sunny" : {
		"names" : ["AAA", "AAA", "AAA"],
		"scores" : [0,0,0]
	},
	
	"smile" : {
		"names" : ["AAA", "AAA", "AAA"],
		"scores" : [0,0,0]		
	},
	
	"bliss" : {
		"names" : ["AAA", "AAA", "AAA"],
		"scores" : [0,0,0]
	}
}
