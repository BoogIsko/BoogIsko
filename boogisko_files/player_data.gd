extends Node

var difficulty: String = "none"
var character: String = "none"
var song: String = "none"
var song_score: String = "none"

# Indices denote ranking i.e. index 0 is first place, etc.
var idx := 0  # This denotes index that will be replaced
			  # For easier time when updating scores
var score := 0 # Temporarily holds score of a game
var sunny_scores = [0, 0, 0]
var smile_scores = [0, 0, 0]
var bliss_scores = [0, 0, 0]

# Player names; indices denote rank similar to the scores
var sunny_players = ["", "", ""]
var smile_players = ["", "", ""]
var bliss_players = ["", "", ""]
