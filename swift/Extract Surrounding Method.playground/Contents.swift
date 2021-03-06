//: Extract Surrounding Method
/*:
 You have two methods that contain nearly identical code. The variance is in the middle of the method. Extract the duplication into a method that accepts a block and yields back to the caller to execute the unique code.

 ### Steps:
 1. create a new function with callback as a parameter
 2. use the new fuction
 */
import Foundation

protocol Determine {
    func determineB(a: Int) -> Int
}


func quxOne(hey: Int, hi: Int) -> Int {
    return newQue(hey: hey, hi: hi, callback: determineB)
}

func quxTwo(hey: Int, hi: Int) -> Int {
    return newQue(hey: hey, hi: hi, callback: determineC)
}

func determineA(hey: Int, hi: Int) -> Int {
    return hey + hi
}

func determineB(a: Int) -> Int {
    return a*10
}


func determineC(a: Int) -> Int {
    return a * 10 * 20
}

func newQue(hey: Int, hi: Int, callback: (Int) -> Int) -> Int {
    let x = determineA(hey: hey, hi: hi)
    return x + callback(x)
}

quxOne(hey: 2, hi: 3)
quxTwo(hey: 2, hi: 3)
