import Foundation
import Darwin

func input() -> String {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
}

extension String {
	func toDouble() -> Double {
		return NSNumberFormatter().numberFromString(self)!.doubleValue
	}
}

infix operator ** { associativity left precedence 170 }

func ** (num: Double, power: Double) -> Double {
	return pow(num, power)
}

println("A =")
let a = input().stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet()).toDouble()

println("B =")
let b = input().stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet()).toDouble()

println("C =")
let c = input().stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet()).toDouble()

let solution = (-b+sqrt((b**2.0) - (4*a*c))) / (2*a)
println("x = \(solution)")

let negative_solution = (-b-sqrt((b**2.0) - (4*a*c))) / (2*a)
println("xnegative = \(negative_solution)")