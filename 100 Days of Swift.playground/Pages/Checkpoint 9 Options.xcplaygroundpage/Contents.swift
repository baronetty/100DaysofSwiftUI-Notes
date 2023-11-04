

import Cocoa


func intArr (numbers: [Int]?) -> Int { numbers?.randomElement() ?? Int.random(in: 1...100) }

var arrayInt = [1,2,3,4,5]
arrayInt.removeAll()
print(intArr(numbers: arrayInt))



