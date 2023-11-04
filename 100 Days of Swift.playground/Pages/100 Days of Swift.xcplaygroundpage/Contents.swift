import Cocoa



// Day 1: variables, constants, strings, and numbers

var greeting = "Hello, playground"

var name = "Ted"
name = "Rebekka"
name = "Keeley"

let character = "Daphne"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(playerName.count)

let nameLength = playerName.count
print(nameLength)

print(name.uppercased())

print(movie.hasPrefix("A day"))

let score = 10
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 2
let doubleScore = score * 2
let squareScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

let number1 = 0.1 + 0.2
print(number1)
// beacuase of the binary system, computers cant safe the numbers correctly. And this error is so small, is doesn't plays a role.

let a = 1
let b = 2.0
let c = Double(a) + b

var rating = 5.0
rating *= 2


// Day 2: Booleans and string interpolation

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)

let firstPart = "Hello, "
let secondPart = "world."
let greeting1 = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

let name1 = "Taylor"
let age = 26
let message = "Hello, may name is \(name1) and im \(age) years old."
print(message)

print("5 x 5 is \(5 * 5)")

// Day 3: Arrays, dictionaries, sets, and enums

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Adrian")
beatles.append("Leo")

var scores = Array<Int>()
scores.append(100)
scores.append(85)
scores.append(80)
print(scores[1])

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)


var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovie = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovie.contains("Frozen"))
print(bondMovie.contains("Casino Royale"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents) // Er erinnert sich, auf Abfrage, dass es umgekehrt ist. Es würde sonst zu lange dauern, alles wirklich umzusortieren.


let employee = [
    "name": "Taylore Swift",
    "job": "Singer",
    "location": "Nashville"
] // name, job und location = keys des dictionary ; Taylore Swift, Singer, Nashville = values

print(employee["name", default: "unknown"]) // wenn Fehler, sende "unknown"
print(employee["password", default: "unknown"])

let hasGratuated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBrone James"] = 206

var archEnemie = [String: String]()
archEnemie["Batman"] = "The Joker"
archEnemie["Superman"] = "Lex Luthor"
archEnemie["Batman"] = "Penguin" //Überschreibt das erste value
print(archEnemie["Batman", default: "Unknown"])
 // dictionarys funktionieren sehr ähnlich zu arrays. Man kann genauso Dinge hinzufügen, löschen, sortieren etc.


let actors = Set([ //creates an array in the set, but no duplicates possible
"Denzel Washington",
"Tom Cruise",
"Nicolas Cage",
"Samuel L. Jackson"
])
print(actors) // print in no specific order

var actors1 = Set <String>() //insert and not append
actors1.insert("Leo DiCaprio")
actors1.insert("Jennifer Lawrence")
actors1.insert("Merryl Streep")
print(actors1)


enum Weekday { // safe to work with, and fast for swift to work
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.wednesday


enum Month {
    case january, february, march, may
}

var month = Month.january
month = .february
month = .march


// type annotations and Complex data types

let playerName1: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated1: Bool = true

var albums1: [String] = ["Red", "Fearless"] // array
var user: [String: String] = ["id": "@twostraws"] // dictionary
var books: Set<String> = Set ([ // Set
"The blue Eye",
"Foundation",
"Girl, Woman, other"
])

var soda: [String] = ["Pepsi", "Coke", "Irn-Bru"] // alles Möglichkeiten für Arrays sind erlaubt
var teams: [String] = [String] ()
var cities1: [String] = []
var clues = [String]()

enum UIStyle {
    case dark, light, system
}
var style = UIStyle.light
style = .dark

let username: String
// dann kann ganz viel Code folgen
username = "@twostraws"
// wieder ganz viel Code
print(username)

// one golden rule: Swift must at all times know what data types your constants and variables contain






// if, switch, and the ternary operator

let score1 = 85
if score1 > 80 { // can be just true or falls (boolean)
    print("Great job!")
}



let speed = 88
let percentage = 85
let age1 = 18

if speed >= 88 {
    print("Where we are going, we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote.")
}



let ourName = "David Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs. \(friendName).")
}

if ourName > friendName {
    print("It's \(friendName) vs. \(ourName).")
}



var numbers1 = [1, 2, 3]
numbers1.append (4)
if numbers1.count > 3 {
    numbers1.remove(at: 0)
}
print(numbers1)


let country = "Canada"

if country == "Australia" {
    print("G'day")
}

let nameSwift = "Taylor Swift"

if nameSwift != "Anonymous" {
    print("Welcome, \(nameSwift)")
}

var username1 = "taylorswift13"

if username1 == "" {
    username1 = "Anonymous"
}
print("Welcome, \(username1)")

if username1.isEmpty { // more efficient -> is already a boolean, doesn't need true or falls
    username1 = "Anonymous"
}



let age2 = 16

if age2 >= 18 {
    print("You can vote.")
} else {
    print("sorry, you are to young.")
}


let a1 = false
let b1 = true

if a1 { // most effective way
    print("code to run if a os true.")
} else if b1 {
    print("code to run if b is true.")
} else {
    print("code to run if both a and b are false.")
}


let temp = 25
if temp > 20 && temp < 30 { // && = Und
        print("It's a nice day.")
    
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true { // || = Oder
    print("You can buy the game.")
}




enum transportOption {
    case airplane, helicopter, car, bicycle, escooter
}

let transport = transportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly.")
} else if transport == .bicycle {
    print("I hope there is a bike path.")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now.")
}


enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {  // es müssen alle Möglichkeiten aufgezählt werden, ansonsten kommt eine Fehlermelding und sobald eine Möglichkeit passt, stoppt switch die restlichen zu checken
case .rain:
    print("pack an umbrella.")
case .sun:
    print("It should be a nice day.")
case .snow:
    print("School is canceled.")
case.wind:
    print("Wear something warm.")
case.unknown:
    print("Our forecast generator is broken.")
}


let Place = "Metropolis"

switch Place {
case "Gotham":
    print("You're Batman.")
case "Mega-City one":
    print("You're judge Prat")
case "Wakanda":
    print("You're Black Panther.")
default: // runs if all other cases fail to match -> always has to be the last part!
    print("Who are you?")
}


let day1 = 5
print("My true love gave to me…")

switch day1 {
case 5:
    print("5 golden rings")
    fallthrough  // for very rare occassions.
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}


let age3 = 18
let canVote = age3 >= 18 ? "Yes" : "No" // is age equal to 18? True than "Yes" : Falls than "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let crewNames = ["James", "Kelly", "Paul"]
let crewMember = crewNames.isEmpty ? "No one." : " \(crewNames.count) people"
print(crewMember)



enum Theme {
    case dark, light
}

let theme = Theme.dark

let background = (theme == .dark) ? "black" : "white"
print(background)





// Loops

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {  // greats "os" as an variable, that I can't use outside of this if-loop
    print("Swift works great on \(os)")
} // "for platform in platforms" would be the same


for i in 1...12 {  // to use i is an convention, would go with every other variable
    print("5 x \(i) is \(5 * i)")
}


for i in 1...12 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print("   \(j) x \(i) is \(j * i)")
    }
    print()  // works like a line breaker, looks just nice on the screen
}


for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {  // just two dots
    print("Counting 1 up to 5: \(i)")
}


var lyric1 = "Haters gonna"

for _ in 1...5 {  // don't need an variable
    lyric1 += " hate"
}

print(lyric1)



var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)



var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critical hit!")




let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter]) is a popular color.")
    colorCounter += 1
}


let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue // if there is a false, it will continue until it's done -> hold on to remaining
    }
    print("found picture: \(filename)")
}



let number3 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number3) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break  // exit the loop immediatle -> skip the remaining
        }
    }
}
print(multiples)




var password = "1"
while true {
    password += "1"
    if password == "11111" {
        print("That's a terrible password.")
        break  // muss in der richtigen Klammer stehen, sonst bricht es zu früh ab
    }
    
}






// functions, parameters, and return values



func schowWelcome () {  // niemals die Klammern vergessen! Dadurch wird die Funktion personalisierbar
    print("Welcome to my app!")
    print("lets have some fun together.")
}

schowWelcome()





func printTimesTables (number: Int, end: Int) {  // number becoming an variable
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)  // option is (number: 5)





func doNothing() { }
doNothing()




func square(numbers: [Int]) {
    for number in numbers {
        let squared = number * number
        print("\(number) squared is \(squared).")
    }
}
square(numbers: [2, 3, 4])





func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result2 = rollDice()
print(result2)



func sameString(string1: String, string2: String) -> Bool {
   return string1.sorted() == string2.sorted()
}




func pythagoras(a: Double, b: Double) -> Double {
    let input = a * b + a * b
    let root = sqrt(input)
    return root
}
let c1 = pythagoras(a: 3, b: 4)
print(c1)




func countMultiplesOf10(numbers: [Int]) -> Int {
    var result = 0
    for number in numbers {
        if number % 10 == 0 {
            result += 1
        }
    }
    return result
}
countMultiplesOf10(numbers: [5, 10, 15, 20, 25])





func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift") // this creates a tuple -> tuples = haben eine fest egröße, dadurch bekommt Swift eine Sicherheit
// man könnte firstName und lastName auch löschen, da sie ganz klar zuordenbar sind
}

let user1 = getUser()
print("Name: \(user1.firstName) \(user1.lastName)")


// Remember: arrays keep the order and can have duplicates, sets are unordered and can’t have duplicates, and tuples have a fixed number of values of fixed types inside them.



func printTimesTables(for number: Int) { // for is external name and number is internal name
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)") // use internal name
    }
}

printTimesTables(for: 5) // use external name



func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result1 = isUppercase(string)   // with the _ you dont have to write "string: string" here







// default values, throwing functions



func printTimesTables1 (for number: Int, end: Int = 12){
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables1(for: 5, end: 20)
printTimesTables1(for: 8) // in dem Fall müssen wir kein Ende angeben, weil wir bereits die 12 dazu definiert haben. Macht den Code flexibler und kürzer.



var characters1 = ["Lana", "Pam", "Ray", "Sterling"]
print(characters1.count)
characters1.removeAll(keepingCapacity: true) // leaving array with the capacity to hold items again
print(characters1.count)





enum PasswordError: Error {
    case short, obvious
}

func  checkPassword (_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 8 {
        return "ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
    
}

let string1 = "12345"

do {
    let result = try checkPassword(string1)  // you can write try! if you are really sure, that there is no error -> du willst es quasi zur Ausführung zwingen
    print("Password rating \(result)")
} catch {  // is actually handling the error
    print("There was an error")
}






// closures, passing functions into functions


func greetUser () {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser // korrekt könnte man schreiben: "var greetCopy: () -> Void = ..." -> () -> Void means a function that accepts no parameters "()" and returns no value "-> Void"
greetCopy()


let sayHello = { // -> like a function with no name
    print("Hi there!")
}

sayHello()


let sayHey = { (name: String) -> String in // "in" mark the end of the parameters and return type – everything after that is the body of the closure itself
"Hi \(name)!"
}
sayHey("Taylor")




func getUserData (for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user2 = data(1989)
print(user2)




let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted) // put a function into a function
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeam)


// it's exactly the same like above, just with shorthand syntax
let captainFirstTeam1 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}
print(captainFirstTeam1)



var cleanRoom = { (name: String) in // IMPORTAN: no external parameter labels e.g. (for name: String)
    print("I'm cleaning the \(name).")
}
cleanRoom("kitchen")



var click = { (button: Int) in
    if button >= 0 {
        print("Button \(button) was clicked.")
    } else {
        print("That button doesn't exist.")
    }
}
click(3)




var difficultyRating = { (trick: String) -> Int in
    if trick == "ollie" {
        return 1
    } else if trick == "Yoyo Plant" {
        return 3
    } else if trick == "900" {
        return 5
    } else {
        return 0
    }
}
print(difficultyRating("ollie")) // geht auch mit "print" Befehl



let writeEssay = { (topic: String) -> String in
    return "Here's an essay on \(topic)."  // also possible
}
print(writeEssay("CrossFit"))




// let reverseTeam = team.sorted {
  //  return $0 > $1
// }
let reverseTeam = team.sorted { $0 > $1 }

let tOnly = team.filter { $0 .hasPrefix("T")} // creates new array
print(tOnly)

let uppercaseTeam = team.map { $0 .uppercased()} // new array
print(uppercaseTeam)


func makeArray (size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 1..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}



func doImportantWork (first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start the first work.")
    first()
    print("About to start the second work.")
    second()
    print("About to start the third work.")
    third()
    print("Done")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
}third: {
    print("This is the third work")
}




let helicopterTravel = {
    print("Get to the chopper!")
}
func travel(by travelMeans: () -> Void) {
    print("Let's go on vacation...")
    travelMeans()
}
travel(by: helicopterTravel)









// structs, computed properties, and property observers


struct Album {  // standard = capital letter
    let title: String  // standard = low letter bzw. camel-case
    let artist: String
    let year: Int
    
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()




struct Employee1 {
   // probertys
    let name: String
    var vacationRemaining = 14 // kann ich in der Instanz trotzdem noch spzifizieren, da es eine Variable ist.
    
    // methods
    mutating func takeVacation(days: Int) { // needs mutating, otherwise it can't change the "vacationRemaining" variable.
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining \(vacationRemaining).")
        } else {
            print("Oops! There aren't enough days left.")
        }
    }
}

// instants
var archer = Employee1(name: "Sterling Archer", vacationRemaining: 14)  // the initilizer needs to be a variable -> Swift doesn't allow constants (let)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

var kane = Employee1(name: "Lana Kane")
var poovey = Employee1(name: "Pam Poovey", vacationRemaining: 34)
kane.takeVacation(days: 15)
print(kane.vacationRemaining)
poovey.takeVacation(days: 10)
print(poovey.vacationRemaining)




struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {  // calculated dynamically
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer1 = Employee2(name: "Sterling Archer", vacationAllocated: 14)
archer1.vacationTaken += 4
archer1.vacationRemaining = 5
print(archer1.vacationAllocated)




struct Dog {
    var breed: String
    var cuteness: Int
    var rating: String {
        if cuteness < 3 {
            return "That's a cute dog!"
        } else if cuteness < 7 {
            return "That's a really cute dog!"
        } else {
            return "That a super cute dog!"
        }
    }
}
let luna = Dog(breed: "Samoyed", cuteness: 11)
print(luna.rating)





struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score -= 3
game.score += 1




struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New Value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
    
}

var app = App()
app.contacts.append("Adrain E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")






struct Player {
    let name: String
    let number: Int
    
    init(name: String) {  // missing func -> treats specially ; no explicit return type
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// golden rule: all properties must have a value by the time the initializer ends
let playerOne = Player(name: "Megan R")
print(playerOne.number)





// So, as soon as you add a custom initializer for your struct, the default memberwise initializer goes away. If you want it to stay, move your custom initializer to an extension, like this:
struct EmployeeOne {
    var name: String
    var yearsActive = 0
}

extension EmployeeOne {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = EmployeeOne(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = EmployeeOne()





struct Dictionary {
    var words = Set<String>()
}
let dictionary = Dictionary()




struct Country {
    var name: String
    var usesImperialMeasurements: Bool
    init(countryName: String) {
        name = countryName
        let imperialCountries = ["Liberia", "Myanmar", "USA"]
        if imperialCountries.contains(name) {
            usesImperialMeasurements = true
        } else {
            usesImperialMeasurements = false
        }
    }
}





// access control, static properties and methods

struct BankAccount {
    private var funds = 0 // private hindert mich den account.funds -= 1000 Befehl zu lesen, da er außerhalb der struct liegt

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
// account.funds -= 1000


// private: “don’t let anything outside the struct use this.”
// private(set): “let anyone read this property, but only let my methods write it.”
// fileprivate: “don’t let anything outside the current file use this.”
// public: “let anyone, anywhere use this.”


struct School {
    static var studentCount = 0
    
    static func add (student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)



// self refers to the current value of the struct -> 55, "Hello", true
// Self refers to the current type -> String, Int, Bool




struct Employee3 {
    let username: String
    let password: String
    
    static let example = Employee3(username: "cfederighi", password: "hairforceone")
}
// static makes it easy to use the example employee everywhere in your code. Just with -> Employee.example -> otherwise Swift would not accept
    
    

struct Amplifier {
    static let maximumVolume = 11
    var currentVolume: Int
}




struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}




struct Person {
    static var population = 0
    var name: String
    init(personName: String) {
        name = personName
        Person.population += 1
    }
}









// classes, inheritance



class Game1 {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var newGame = Game1()
newGame.score += 10



class EmployeeTwo {
    let hours: Int
    
    init (hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: EmployeeTwo { // child class
    func work() {
        print("I'm writing code for \(hours) hours")
    }
    
    override func printSummary() { // have to override the mother method ; don't have to override, if the parameters are different
        print("I'm a developer who will sometimes work \(hours) hours a day.")
    }
}

final class Manager: EmployeeTwo { // child class ; can use final when I'm sure that it's the finakl class, allows no more copying from that class
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()
let novall = Developer(hours: 8)
novall.printSummary()



class Vehicle {
    let isElectric: Bool
    
    init (isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric) // "super" allows us to call methods from parent class ; you must call initelizer
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)



class User {
    var username = "Anonymous"
    
    func copy () -> User {
        let user5 = User()
        user5.username = username
        return user5
    }
}

var user3 = User()
var user4 = user3 //.copy() -> verhindert die Kopie von user3
user4.username = "Taylor"

print(user3.username)
print(user4.username) // würde als struct ein anderes Ergebnis ausspucken




class Member {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive.")
    }
    deinit {  // no parentheses ()
        print("User \(id): I'm dead!")
    }
}

var members = [Member]()

for i in 1...3 {
    let member = Member(id: i)
    print("User \(member.id): I'm in control!")
    members.append(member)
}

print("Loop is finished!")
members.removeAll()
print("Array is clear!")





class MemberOne {
    var name = "Paul"
}
var memberOne = MemberOne() // in dem Fall muss es eine Variable sein und keine Konstante -> wir verändern sie nämlich
memberOne.name = "Taylor"
memberOne = MemberOne()
print(memberOne.name)





class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
}
var pizza = Pizza()
pizza.add(topping: "Mushrooms")




struct Kindergarten {
    var numberOfScreamingKids = 30
    mutating func handOutIceCream() {
        numberOfScreamingKids = 0
    }
}
var kindergarten = Kindergarten() // muss Variable sein, funktioniert nicht als Konstante
kindergarten.handOutIceCream()






class Light {
    var onState = false
    func toggle() {
        if onState {
            onState = false
        } else {
            onState = true
        }
        print("Click")
    }
}
let light = Light()
light.toggle()








// protocols, extensions



protocol VehicleOne {
    var nameVehicle: String { get }
    var currentPassengers: Int { get set } // kein Komma zum trennen von get set
    func estimateTime (for distance: Int) -> Int // no function bodies allowed
    func travel (distance: Int)
}

struct CarOne: VehicleOne {  // all methods that exists in the protocol must exist in the struct, class etc.
    
    let nameVehicle = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int { // has to be the same parameters
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof() {  // we can of course add more things -> protocol is just what is requirt
        print("It's a nice day.")
    }
}

struct BicycleOne: VehicleOne {
   
    let nameVehicle = "Bike"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}


func commute (distance: Int, using vehicle: VehicleOne) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow. I'll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [VehicleOne], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.nameVehicle): \(estimate) hours to travel \(distance)km")
    }
}

let carOne = CarOne()
commute(distance: 100, using: carOne)

let bikeOne = BicycleOne()
commute(distance: 50, using: bikeOne)

getTravelEstimates(using: [carOne, bikeOne], distance: 150)




func getRandomNumber () -> some Equatable { // some specifies, that not everything is equatable, something is -> in this case an Int -> we wanne keep our options open
    Int.random(in: 1...6)
}

func getRandomBool () -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

// some View ist das gleiche: wir wollen uns nicht spezifizieren, was in dem View zu sehen ist, sondern wollen Swift das überlassen. Swift weiß, was sich in dem some View befindet.







extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    mutating func trim() {
        self = self.trimmed()
        }
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}


var quoteOne = "   The truth is rarely pure and never simple   "
let trimmed = quoteOne.trimmingCharacters(in: .whitespacesAndNewlines)
quoteOne.trim()

let lyricsOne = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyricsOne.lines.count)



struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)  // beacuse of the extension we can use our customiced 2readingHour" var -> It's not working without extension



extension String {
   mutating func append(_ other: String) { // muss als mutating gekennzeichnet sein
        self += other
    }
}



extension Int {
    func times(_ action: () -> Void) {
        for _ in 0..<self {
            action()
        }
    }
}





extension Collection {  // Collection umfasst alles an Kollektionen -> Arrays, Sets, Dictionarys etc.
    var isNotEmpty: Bool { // ich definiere hier den Befehl ".isEmpty" um
        isEmpty == false
    }  // die Extension wird sehr viel in Apps verwendet, da sich der COde so besser lesen lässt
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}





protocol PersonOne {
    var name: String { get }
    func sayHello()
}

extension PersonOne {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: PersonOne {
    let name: String
}

let taylorOne = Employee(name: "Taylor Swift")
taylorOne.sayHello()





extension Numeric { // "Numeric" is a protocol, that's why I have to use the extension
    func squared() -> Self { // Self could be Int or Double
        self * self // self is a number (5,7,8...) or a Double( 5.5, 6.3 ...) -> self is the value it self, the value we give to the function
    }
}

let wholeNumber = 5
print(wholeNumber.squared())








struct UserOne: Equatable, Comparable {  // Equatable = Gleichwertig -> is also a protocol
    let name: String

    static func <(lhs: UserOne, rhs: UserOne) -> Bool { // lhs = left hand side ; rhs = right hand side // static = it belongs to UserOne struct
        lhs.name < rhs.name
    }
    
}

let user5 = UserOne(name: "Link")
let user6 = UserOne(name: "Zelda")
print(user5 == user6)
print(user5 != user6)
print(user5 < user6)
print(user5 <= user6)
print(user5 > user6)
print(user5 >= user6)
// That code is possible because Equatable lets us know whether user5 is equal to user6, and Comparable lets us know whether user5 should be sorted before user6, and with those two pieces Swift can figure out the rest automatically.







// optionals, nil coalescing




let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"] // is not in the dictionary -> Swifts answer is an option

if let marioOpposite = opposites["Mario"] { // the String might be there or might not be there, if it's there Swift will unwrap it
    print("Mario's opposite is \(marioOpposite).")
}


var usernameOne: String? = nil

if let unwrappedUsername = usernameOne { // we unwrap the option to see, what's the value -> might be nothing, but than we know -> you can just unwrap (if let) optionals, nothing else
    print("We got a user: \(unwrappedUsername)")
} else {
    print("The optional was empty.")
}




var arr1 = [0]
var arr2 = [Int]() // -> this array has just no value
var arr3: [Int]? = nil  // -> this array does not exist jet -> maybe has a value, maybe not -> Schrödingers value



func square (number: Int) -> Int { // -> this function does't work without a value
    number * number
}

var numberOne: Int? = nil

if let numberOne = numberOne { // we are creating a second value with the same name, that's just usable in the braces -> shadowing
    print(square(number: numberOne))
}

// Booleans: they can be true or false. That means an optional Bool can be true, false, or neither – it can be nothing at all.




func printSquare (of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number)x\(number) is \(number * number)")
}





var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}

func printMyVar (of myVar: Int?) {
    guard let unwrapped = myVar else {
        print("Run if myVar doesn't have a value inside")
        return  // only usable in functions
    }
}

// use if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically checking that conditions are correct before continuing





func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}




let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]
let new = captains["Serenity"] ?? "N/A" // if it's a nil, it will send back "N/A"



let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"


struct BookOne {
    let title: String
    let author: String?
}

let book = BookOne(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)




let inputOne = ""
let numberTwo = Int(inputOne) ?? 0
print(numberTwo)


var bestPony: String? = "Pinkie Pie"
let selectedPony: String? = bestPony ?? nil






let namesGOT = ["Aria", "Sansa", "Bran", "John"]
let chosen = namesGOT.randomElement()?.uppercased() ?? "No one" // ?.uppercase() = “if the optional has a value inside, unwrap it then carry on”
print("Next in Line: \(chosen)")






struct BookTwo {
    let title: String
    let author: String?
}

var bookOne: BookTwo? = nil
let authorOne = bookOne?.author?.first?.uppercased() ?? "A" // if we have a book, and the book have and Author, and the author has a first letter, then print it uppercase
print(authorOne)






enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser (id: 23) {
    print("User: \(user)")
}

let user8 = (try? getUser(id: 23)) ?? "Anonymous"
print(user8)



// ForEach(students, id: \.self) { // loops over students array -> id: \.self means, that every part of the array has it'S unique id, it's unique value, meaning. So Swift can sort this perfectly in the Picker -> the strings themselfe are their own unique identifier
 //   Text($0)
// }






