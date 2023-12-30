extends Node

var apple_status: String = ""

var attraction: int = 2
var affability: int = 3
var flattery: int = 2
var mystery: int = 3
var confidence: int = 1

var loveGodot: bool = false
var tutorialComplete: bool = false
var loveJohn: bool = false

#print every stat to the console
func printStats():
    print("Attraction: " + str(attraction))
    print("Affability: " + str(affability))
    print("Flattery: " + str(flattery))
    print("Mystery: " + str(mystery))
    print("Confidence: " + str(confidence))
