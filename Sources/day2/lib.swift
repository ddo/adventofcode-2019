import Foundation

let step = 4

func solve(_ inputs: [Int], noun: Int, verb: Int) -> Int {
    var memory = inputs

    // replace
    memory[1] = noun
    memory[2] = verb

    var index = 0

    var arr = Array(memory[index..<index+step])
    while true {
        /* print(arr) */

        // get new value or stop
        var newVal = 0
        switch arr[0] {
        case 1:
            newVal = memory[arr[1]] + memory[arr[2]]

        case 2:
            newVal = memory[arr[1]] * memory[arr[2]]

        default:
            return memory[0]
        }

        // get replace position
        let replacePos = arr[3]

        // replace
        memory[replacePos] = newVal

        index += step
        arr = Array(memory[index..<index+step])
    }

    return memory[0]
}
