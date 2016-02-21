//: Playground - noun: a place where people can play

import UIKit

class Person {
    var eyeColor = "blue"
    var name : String
    var speed = "10 MPH"
    var benchPress = "70 KG"
    
    init (name: String) {
        self.name = name
    }
    
    func catchPhrase() -> String {
        return "Hi, I am a Person"
    }
}

// instantiate a Person called Jon
var jon = Person(name: "Jon")

// build another class that INHERITS the properties of Person class
class Animorph: Person {
    var animalType: String = "dog"
    
    // convenience initialiser i.e. first one still exists
    // but this one has an additional piece of info
    convenience init(type: String, name: String) {
        self.init (name: name)
        self.animalType = type
    }
    
    override func catchPhrase() -> String {
        return "I can turn into a cool animal"
    }
}

print(jon.eyeColor)             // Jon is a type Person, and thus he 
                                // a pre-set eye color
print(jon.catchPhrase())

var dolphin = Animorph(type: "Dolphin", name: "Flufy")
print(dolphin.eyeColor)         // dolphin INHERITS the eyecolor from the Person Class
dolphin.catchPhrase()


// create another class "Super Hero" that also inherits "Person"
class Superhero : Person {
    var superPower = "X-Ray vision"
    var backStory = "The lighting hit me and I did not died"
    
    convenience init(name: String, press: String) {
        self.init(name: name)
        benchPress = press
    }
    
    override func catchPhrase() -> String {
        return "I am half God half man"
    }
}

// instantiate a Super Hero
var antMan = Superhero(name: "Ant Man", press: "50 KG")
print(antMan.benchPress)


print(antMan.catchPhrase())
print(dolphin.catchPhrase())
print(jon.catchPhrase())






