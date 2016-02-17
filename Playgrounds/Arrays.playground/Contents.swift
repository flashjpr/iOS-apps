//: Playground - noun: a place where people can play

import UIKit

// Explicit type
var firstArray :[String] = ["first", "second", "third", "etc"]

// Non-explicit type
var secondArray = ["Hi", "hello", "howAreU"]

// same
var numbers = [1,2,3,4,5,6,7]

//mixed - BAD PRACTICE, VERY VERY VERY VERY BAD PRACTICE
var mixed = ["This is", 1, true, "story", "bro"]

//create an empty array
var countries = [String]()

//create an new array initialised with few initial values;
var top3colors = [String](count: 5, repeatedValue: "Default")

top3colors[0] = "black"
top3colors[1] = "orange"
top3colors[2] = "brown"

//still have 2 values as default
print(top3colors)

//if needed, remove all the elements of the array
//top3colors.removeAll(); print(top3colors)

//revmove first element of the array
top3colors.removeFirst();

//remove last element
top3colors.removeLast()
print(top3colors)

//remove at a specific index
top3colors.removeAtIndex(2)
print(top3colors)

//add a new element at the end of the array
top3colors.append("yellow")

//also we can add an element at a specific index
top3colors.insert("rainbow", atIndex: 0)           // added the element "rainbow" at index 0 = beginning of the array
print(top3colors)

//print the max element of the array. here the first letter "y" is bigger than "o" (orange) or "b" (brown)
top3colors.maxElement()
print(top3colors)

//sort the array in ascending order
top3colors.sort()



//Now let's play a little bit with an array and demonstrate its simple functionality

//create an empty array favCars
var shoppingCart = [String]()
var balance = 500.0  // alternative is var budget : Double = 500
var currentCartAmount = 0.0


func addItemToCart(item: String, price: Double) {
    if currentCartAmount + price <= balance {
        
        //add the element in our shopping cart
        shoppingCart.append(item)
        
        //update the balance
        balance -= price
    } else {
        print("Not enough money. Sad :( ")
    }
}

addItemToCart("groceries", price: 25.5)     //buy some food = survive
addItemToCart("clothes", price: 150)        //wear something, hopefully, in the cold rain of Manchester
addItemToCart("bills", price: 200)          //sucks, I know, it really sucks

print(balance)                              //alright so we still have some money left

addItemToCart("gold watch", price: 2000)    //we now we are over our budget and our function should not allow to buy this item

print(balance)                              //yep, it did NOT let us buy the gold watch :(



