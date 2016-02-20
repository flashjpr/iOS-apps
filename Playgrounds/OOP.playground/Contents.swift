//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    private var engine = "4 Cylinder"
    private var color = "silver"
    private var _odometer = 0
    
    //Getter - Setter (Accessors & Mutators)
    
    var odometer: Int {
        get {
            return _odometer
        }
        set {
            if newValue >= _odometer {
                _odometer = newValue
            }
        }
    }
    
    
    // Constructor
    init (engine: String, color: String) {
        self.engine = engine
        self.color = color
    }
    
    // Call the constructor
    init () {}
    
    func enterMiles( miles: Int) {
        odometer += miles
    }
    
}

// Instantiate a new car of type Vehicle
var aCar = Vehicle (engine: "8 Cylinder", color: "black")

// ..//..
var anotherCar = Vehicle()

// now see the diference
print(aCar.color)               //this car got its own color
print(anotherCar.color)         //whilst this one INHERITS the color from its class

