//: Playground - noun: a place where people can play

import UIKit


// an OPTIONAL var MAY or MAY NOT have a value in it
var loteryWinnings:Int?
loteryWinnings = 4

// 1st approach : check if there is a value, and if it is,
// do whatever operations needed with it (e.g. print)

if loteryWinnings != nil {
    print(loteryWinnings!)
}


// 2nd approach: if - let
// if there is a value, store it in winnings and perform operation with it (print)
if let winnings = loteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var vehicle: Car?
vehicle

if let v = vehicle {
    if let m = v.model {
        print(m)
    }
}

vehicle = Car()
vehicle?.model = "A car model"

// or 
// left part will be computed first, then ->, then -> etc
if let v = vehicle, let m = v.model {
    print(m)
}



var cars: [Car]?

cars = [Car]()

if let carArr = cars where carArr.count > 0 {
    //We only get here if cars != nil AND if it has more than 0 elements
}

class Person {
    var age: Int! //We (as the developer) are promising that this will have a value
    
    func setAge(newAge: Int) {
        self.age = newAge
    }
}

class Dog {
    var species: String //If not using? or ! you must initialize value in constructor
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

//class Life {
//    var sucks: Bool! //<-- can be dangerous
//    var totalMoney: Int!
//    var ageIDie: Int!
//}

class Life {
    private var _sucks: Bool!
    private var _totalMoney: Int!
    private var _ageIDie: Int!
    
    var sucks: Bool {
        if _sucks == nil {
            _sucks = true
        }
        
        return _sucks
    }
    
    var totalMoney: Int {
        if _totalMoney == nil {
            _totalMoney = 0
        }
        
        return _totalMoney
    }
    
    func getMarried() -> Bool {
        if sucks {
            return true
        } else {
            return false
        }
    }
    
}

var life: Life?

print(life?.getMarried()) //This will not crash - just wont do anything

/*

“You specify optional chaining by placing a question mark (?) after the optional value on which you wish to call a property, method or subscript if the optional is non-nil. This is very similar to placing an exclamation mark (!) after an optional value to force the unwrapping of its value. The main difference is that optional chaining fails gracefully when the optional is nil, whereas forced unwrapping triggers a runtime error when the optional is nil.”

Excerpt From: Apple Inc. “The Swift Programming Language.” iBooks. https://itun.es/us/jEUH0.l

*/
