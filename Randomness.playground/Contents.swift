import UIKit

let diceRoll = Int.random(in: 1...6)
print("You Rolled A \(diceRoll)")

let randomDecimal = Double.random(in: -1.0...1.0)
print("Your random decimal between -1 and 1 is \(randomDecimal)")

let trueOrFalse = Bool.random()
//print three ways
//1. using commas
print("The answer is", trueOrFalse)
//2. using +
print("The answer is " + String(trueOrFalse))
//using string interpolation
print("The answer is \(trueOrFalse)")

print("")

//challenge 1
var result = 0
result += Int.random(in: 1...4)
result += Int.random(in: 1...4)
result += Int.random(in: 1...4)
print("You rolled a \(result)")

print("")

//challenge 2
if Bool.random()
{
    print("Heads")
}
else
{
    print("Tails")
}

print("")

let messages = ["You Are Awesome!",
                "You Are Great!",
                "You Are Fantastic!",
                "Fabuolous?,That's You!",
                "When the Genius Bar Needs Help, They Call You!"]
print(messages[Int.random(in: 0...messages.count-1)])

//some more techniques: shuffle and sort

var names = ["Claire", "Adam", "Deena", "Estevan", "Bruno"]
let shuffledNames = names.shuffled()
print("names = \(names)")
print("shuffledNames = \(shuffledNames)")
print("")
names.shuffle()
print("Names after shuffling in place = \(names)")
print("")

//sorting
let sortedNames = names.sorted()
print("sortedNames = \(sortedNames)")
let reverseSortedNames = names.sorted(by: >)
print("reverseSortedNames = \(reverseSortedNames)")
names.sort()
print("names after sorting in place = \(names)")
