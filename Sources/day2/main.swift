import Foundation
import util

let inputs = getInputs("data/2.txt", separator: ",")
print("inputs: \(inputs.count)")

let res = solve(inputs, noun: 12, verb: 2)
print("result: \(res)")

// extra
let goal = 19690720
extra: for noun in 0...99 {
    for verb in 0...99 {
        let output = solve(inputs, noun: noun, verb: verb)
        if output == goal {
            print("extra: \(100 * noun + verb)")
            break extra
        }
    }
}
