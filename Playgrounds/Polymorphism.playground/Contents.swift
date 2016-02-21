//: Playground - noun: a place where people can play

import UIKit

//                          POLYMORPHISM
//"HAVING FUNCTIONS THAT YOU CAN OVERRIDE, THAT PERFORM DIFFERENT BEHAVIOUR"


// example 1
class Shape {
    var area : Double?
    
    func calculateArea() {
        
    }
    
    func printArea() {
        print("the area is \(area)")
    }
}

class Rectangle: Shape {
    var width = 1.0
    var height = 1.0
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    override func calculateArea() {
        area = width * height
    }
}

class Circle: Shape {
    var radius = 1.0
    
    init(radius: Double) {
        self.radius = radius
    }
    
    override func calculateArea() {
        area = 3.14 * radius * radius
    }
}

var circle = Circle(radius: 10.0)
var rectangle = Rectangle(width: 10.0, height: 4.0)

circle.calculateArea()
rectangle.calculateArea()

print(circle.area)
print(rectangle.area)



// example 2
class Enemy {
    var hp = 100
    var attackPwr = 10
    
    init(hp: Int, attackPwr:Int) {
        self.hp = hp
        self.attackPwr = attackPwr
    }
    
    func defendAttack(incomingAttPwr: Int) {
        hp -= incomingAttPwr
    }
}

class AngryTroll: Enemy {
    var immunity = 10
    
    override func defendAttack(incomingAttPwr: Int) {
        if incomingAttPwr <= immunity {
            hp++
        } else {
            super.defendAttack(incomingAttPwr)
        }
    }
}





