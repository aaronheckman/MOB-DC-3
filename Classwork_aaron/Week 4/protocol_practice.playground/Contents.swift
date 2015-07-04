//: Playground - noun: a place where people can play

import UIKit

//all components of protocol must be listed when used

protocol Characteristics {

    var isAlive: Bool {get set}
    func eat()
}

class Human {
    
}

class Animal: Characteristics {
    
    var isAlive: Bool = false
    
    func eat(){
    }
}

let cat = Animal()

class Cat: Animal {
    
}

let tiger = Cat()
tiger.isAlive


protocol Holiday {
    var isChristmas: Bool { get }
    
}



class Cat: Animal, Holiday {
    var isChristmas = false
}
