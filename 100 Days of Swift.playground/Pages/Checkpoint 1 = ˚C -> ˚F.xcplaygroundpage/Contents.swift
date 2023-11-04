import Cocoa

let temperatureCelsius1 = 30
let temperatureFahrenheit1 = temperatureCelsius1 * 9 / 5 + 32
print("It's \(temperatureCelsius1)˚C, and \(temperatureFahrenheit1)˚F")



let temperatureCelsius = Int.random(in: 0...50)
let temperatureFahrenheit = temperatureCelsius * 9 / 5 + 32
print("It's \(temperatureCelsius)˚C, and \(temperatureFahrenheit)˚F")
