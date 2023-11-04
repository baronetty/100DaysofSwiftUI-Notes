

import Cocoa


for number in 1...100 {
   
    if number.isMultiple(of: 3) && number.isMultiple(of: 5) { // check first, because it's the most specific
        print("FizzBuzz")
        
        
    } else if number.isMultiple(of: 5) {
        print("Buzz")
        
        
    } else if number.isMultiple(of: 3) {
        print("Fizz")
      
        
    } else {
        print("\(number)")
    }
}
