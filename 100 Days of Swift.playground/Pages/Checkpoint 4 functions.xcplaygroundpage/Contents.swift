


import Cocoa


enum SquareError: Error {
    case outOfBound
    case noRoot
}


func squareRoot (_ randomSqrt: Int) throws -> Int {
   
    
    if randomSqrt < 1 || randomSqrt > 10_000 {
        throw SquareError.outOfBound
    } 
    
    for i in 1...100  {
        if i * i == randomSqrt {
            return i
        }
     
    }
    
    throw SquareError.noRoot
}

do {
    let result = try squareRoot(25)
    print("Result: \(result)")
} catch SquareError.outOfBound {
    print("out of bound")
    
} catch SquareError.noRoot {
    print("no root")
    
} catch {
    print("There was an error: \(error.localizedDescription)")
   
}







