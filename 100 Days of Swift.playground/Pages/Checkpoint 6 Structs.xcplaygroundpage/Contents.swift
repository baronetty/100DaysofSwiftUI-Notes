

import Cocoa


struct Car {
    
    let model = "Porsche"
    let numberOfSeats = 5
    static var currentGear = 3
    
    static func changeGear(upHill: Bool) {
        if upHill && currentGear != 0 {
            Car.currentGear -= 1
            print("You are in gear \(currentGear).")
        } else if upHill == false && currentGear != 6 {
            Car.currentGear += 1
            print("You are in gear \(currentGear).")
        }
    }
}
Car.changeGear(upHill: true)
print(Car.currentGear)


