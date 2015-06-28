////: Playground - noun: a place where people can play
//
//import UIKit
//
//func randomNumber() -> Int {
//    return Int(arc4random_uniform(3)+1)
//}
//
//let number = randomNumber()
//let anotherNumber = randomNumber()
//
//switch number {
//    case 1:
//    println("First!")
//    break
//    
//    case 2:
//    println("Second!")
//    break
//    
//    case 3 where number == anotherNumber:
//    println("\(number) = \(anotherNumber)")
//    break
//    
//    case 3...10:
//    println("A number between 1 and 10")
//    break
//    
//    default:
//    println("Not a number between 1 and 10")
//    
//}
//

enum Character: String {
    case Arthur = "Arthur"
    case Thomas = "Tom"
    case Dan = "Dan"
    case Cindy = "Cindy"
}


println(Character.Cindy.hashValue) //orders

let character = Character.Thomas

switch character {
    
    case .Thomas:
        println("\(character.rawValue) casts a fireball")
    break
    
    default :
    println("No chracter selected")
    break
}







