//learning protocols

protocol Automotive {
    func drive()
    func honk()
    func turnOnLights()
}

class Car: Automotive {
    func drive() {
        
    }
    func honk(){
        
    }
    func turnOnLights(){
        
    }
}



class Train: Automotive {
    func drive() {
        
    }
    func honk(){
        
    }
    func turnOnLights(){
        
    }
}


let honda = Car()
let porshe = Car()
let thomas = Train()

var array = [Automotive]()
array.append(honda)
array.append(porshe)
array.append(thomas)

//ALL CONFORM SO ALL CAN BE ADDED


//DELEGATE REVIEW
//**************COuntry.swift*********************//
protocol Delegate {
    func startAWar()
    func makePeace()
    
}

class Country {
    var delegate: Spokesperson?
    var delegates: [Spokesperson]?
    
    func causeproblems() {
        if let delegate = delegate {
            delegate.startAWar()
            
            
        if let arrayOfDelegates = delegates {
            for d in arrayOfDelegates {
                d.startAWar()
            }

            
            
        }
    func fixProblems() {
        if let delegate == delegate {
            delegate.makePeace()
        }
        }
    }
    
    
    
}

//************************************************//

class Spokesperson: Delegate {
    func startAWar() {
    }
    func makePeace() {
    }
}

let handy = Spokesperson()
let france = Country()
france.delegate = handy




















