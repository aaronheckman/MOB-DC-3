//: Playground - noun: a place where people can play

import UIKit

//ENCAPSULATION--------------------------------------------

func unlockApp (serialKey: String) -> Bool {
    let containsProperLength = properLength(serialKey)
    let containsSpecificValues = specificValues(serialKey)
    
    let result = containsProperLength && containsSpecificValues     //combined evaluate to boolean
    
    return result
}

func properLength (serialkey: String) -> Bool{
    let length = count(serialkey)
    let result = (length == 10) ? true: false       //tri-operator, if this is true then true, else false
    
    return result
}

func specificValues (serialKey: String) -> Bool{
    let result = (serialKey as NSString).containsString("01")   //using 'as' allows object to change properties
                                                                // containsstring only operates on nsstring
    return result
}



let password = "Password01"

//true
unlockApp(password)

//false
unlockApp("Password")

//encapsulation because unlockapp contains a lot of other stuff




//ABSTRACTON--------------------------------------------

class Animal {
    
    var numberOfLimbs: Int
    var mammal: Bool
    var lungs: Bool

    init(limbs: Int, mammal: Bool, lungs: Bool){
        numberOfLimbs = limbs
        self.mammal = mammal
        self.lungs = lungs
    }
}
let cat = Animal(limbs: 4, mammal: true, lungs: true)

//INHERITANCE--------------------------------------------


class Cat: Animal {
    
    var tail: Bool
    
    init(limbs: Int, mammal: Bool, lungs: Bool, tail: Bool) {
        self.tail = tail
        super.init(limbs: limbs, mammal: mammal, lungs: lungs)
    }
}

//POLYMORPHISM--------------------------------------------

func hello() {
    println("Hello, World!")
}

func hello(name: String){
    println("Hello, \(name)!")
}


hello()
hello("aaron")

//Class --------------------------------------------

class ReferenceTypeExample {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


let exampleA = ReferenceTypeExample(name: "Arthur")
let exampleB = exampleA
exampleB.name = "Thomas"
exampleA                                                //changes because it is refering to the same memory



//Struct --------------------------------------------

struct ValueTypeExample {
    var name: String
}

var valueExampleA = ValueTypeExample(name: "Arthur")
var valueExampleB = valueExampleA
valueExampleB.name = "Aaron"
valueExampleA
valueExampleB

let myName = "Arthur"
var yourName = "Aaron"
yourName = myName







