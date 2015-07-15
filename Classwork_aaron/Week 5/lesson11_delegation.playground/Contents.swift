
//**************country.swift********************//
protocol CountryDelegate {
    func negotiate()
}


class Country {
    var delegate: CountryDelegate?
    
    func performNegotiation(){
        if let delegate = delegate {
            delegate.negotiate()
        }}
    
}


//****************ambassador.swift*******************//
//Ambassador is the delegate

class Ambassador: CountryDelegate {
    func negotiate() {
        println("I shall negotiate")
    }
}

/*****************************************************/

let usa = Country()
let devin = Ambassador()

usa.delegate = devin
usa.performNegotiation()




//****************lieu.swift*******************//
//lieu is the delegate
//caling super makes both happen, override necesitates super

class Lieu: Ambassador {
    override func negotiate() {
        super.negotiate()
        println("I shall also negotiate")
    }
}

/*****************************************************/
let gary = Lieu()

usa.delegate = gary
usa.performNegotiation()