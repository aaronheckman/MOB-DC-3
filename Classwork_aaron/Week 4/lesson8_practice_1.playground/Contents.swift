//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//long version

var longArray = Array<String>(arrayLiteral: "Aaron", "Luke")

//short version

var shortarray = ["Aaron", "John"]

//editing array

shortarray.append("Kris")
shortarray.count

//long version

for i in 0..<shortarray.count {
    println(shortarray[i])
}

//short-version

for i in shortarray {
    println(i)
}

//REMOVING LAST ITEM

let lastValue = shortarray.removeLast()
shortarray
lastValue

shortarray += ["Dave", "Cindy"]

shortarray.removeAtIndex(3)
var emptyArray = [String]()

shortarray.isEmpty
emptyArray.isEmpty

//subscript syntax
shortarray
shortarray[0] = "Jim"
shortarray

//literal syntax example
let myName = "Aaron"
println("My name is \(myName)")


//dictionaries

var dict = ["luke": "Black", "devin": "Green"]
dict["kris"] = "lime green"
dict["luke"] = "blue"
dict

dict.count
dict.keys.array
dict.values.array

dict.removeValueForKey("luke")

var ages = ["Aaron": 22, "John": 23]

var profile: [String : AnyObject] = ["Name": "Arthur", "Age" : 29]
var profile2: [String : AnyObject] = ["Name": "Aaron", "Age" : 23]

var profiles = [profile, profile2]


//TABLE VIEW CONTROLLERS











