

import Cocoa


class Animal {
    var legs: Int
    init(_ legs: Int){
        self.legs = legs
    }
}

class Dog: Animal {
    init(legs:Int = 4) {
        super.init(legs)
    }
    func speak() {
        print("bark")
    }
}

class Corgi: Dog {
    var bark = "wauf wauf"
   
    override func speak() {
        print(bark)
    }
}

class Poodle: Dog {
    var bark = "guau guau"
    override func speak() {
        print(bark)
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(tamed isTame: Bool, legs:Int = 4) {
        self.isTame = isTame
        super.init(legs)
    }
    
    func speak() {
        print("meow")
    }
}

class Persian: Cat {
    var meow = "purr"
    
    override func speak() {
        print(meow)
    }
}

class Lion: Cat {
    var meow = "roar"
    
    override func speak() {
        print(meow)
    }
}

let corgi = Corgi()
print("Corgi (\(corgi.legs) legs)")
corgi.speak()
let poodle = Poodle()
print("Poodle (\(poodle.legs) legs)")
poodle.speak()

var persian = Persian(tamed: true)
print("Persian (\(persian.legs) legs)")
persian.speak()
var lion = Lion(tamed: false)
print("Lion (\(lion.legs) legs)")
lion.speak()




