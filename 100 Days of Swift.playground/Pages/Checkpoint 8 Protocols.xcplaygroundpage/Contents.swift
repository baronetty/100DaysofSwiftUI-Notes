

import Cocoa


protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var estateAgent: String { get }
}

extension Building {
    func summary() {
        print("This building has \(rooms) rooms, costs around \(cost)€ and my name is \(estateAgent).")
    }
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String

}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
}


let marklerOne = House(rooms: 6, cost: 250_000, estateAgent: "Bruce Wayne")
marklerOne.summary()
let marklerTwo = Office(rooms: 3, cost: 80_000, estateAgent: "Peter Parker")
marklerTwo.summary()
