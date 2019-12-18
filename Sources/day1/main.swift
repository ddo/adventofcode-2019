import Foundation
import util

let inputs = getInputs("data/1.txt")
print("inputs: \(inputs.count)")

var res = inputs.map { solve($0) }
                .reduce(0, +)
print("result: \(res)")

// extra
var extra = inputs.map {
    var total = 0
    var fuel = solve($0) 
    while fuel > 0 {
        total += fuel
        fuel = solve(fuel)
    }
    return total
}.reduce(0, +)
print("extra: \(extra)")
