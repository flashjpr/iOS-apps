//: Playground - noun: a place where people can play

import UIKit

//declare the array
var colors = ["white", "black", "yellow", "brown"]
var color:Int = 0

//clasic for loop  
//              REMEMBER!!!
//          in swift, you CANNOT declare an array of a fixed size rather than
//          using 
//          var array :[type](count : n, repeatedValue = VALUE)

//              CAREFULL
//          if the LOOP has too many steps you get the classic error outOfBounds
//          that in swift is the ugly: EXC_BAD_INSTRUCTION(code=EXC_blabla)

for color = 0 ; color <= 3; color++ {
    colors[color] = "Default"   //reset all colors
    //print(colors[color])
}

//              INTERESTING FOR-IN
//          In SWIFT, there are 2 types of RANGE OPERATORS
//        1:Closed Range Operator (a...b) i.e. defines a range that runs from a to b
//        and includes the values a and b.
//        condition: value of A MUST NOT be greater that the value of B
//example:
var index : Int
for index in 0...5 {
    print("\(index) plus 9 is \(index + 9)")
}

//          This prints out:
//  0 plus 9 is 9
//  1 plus 9 is 10
//      ......
//  5 plus 9 is 14

//          2:Half-Open Range Operator (a..<b) i.e. defines a range that runs from a to b
//          and does NOT include b. It's named "half-opened" because it contains the first value
//          but not the last value
//          condition: value of A MUST NOT be greater than the value of B
//          if the value of A is = to the value of B, the outcome range will be EMPTY
//example:
var cars = ["AlfaRomeo","BMW","VW","Vrum-Vrum"]
let count = cars.count          // ".count" function counts from 1 !!!!
print (count)
for i in 0..<count-1 {          // so we must go until count-1, excluding it
    
    print("Car \(i+1) is \(cars[i])")
}
//          This prints out:
//  Car 1 is AlfaRomeo
//  Car 2 is BMW
//  Car 3 is VW
print(cars)



print(colors)           //print what is expected

// To Be finished if I got time. read the book on this chapter. cool.

