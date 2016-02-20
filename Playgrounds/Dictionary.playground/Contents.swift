//: Playground - noun: a place where people can play

import UIKit

// build a dictionary
//                key : value
var webster : [String : String] = ["krill" : "any of small crustaceans" , "fire" : "a burning mass of materials"]

var Dictionary : [Int : String] = [14 : "My B-day", 25 : "My exam results day"]


// access elements in dictionaries : Optionals way
print(webster["krill"])
print(Dictionary[14])

// or use an IF - LET 
// grab the value out of the dictionary and put it in a value
if let krill = webster["krill"] {
    print(krill)
}

if let date = Dictionary[14] {
    print(date)
}

// clear a dictionary
webster = [:]
Dictionary = [:]

// check if dictionary is empty
if webster.isEmpty {
    print("Our dictionary is empty")
}

// another example
var highscore : [String : Int] = ["flashjpr" : 501, "powerpuf" : 999]
print(highscore["flashjpr"])

// iterate through the dictionary
for (user, score) in highscore {
    print("\(user) : \(score)")
}

// add an item in the dictionary
highscore ["newKey"] = 424

print(highscore["newKey"])














