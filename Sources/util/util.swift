import Foundation

public func getInputs(_ path: String, separator: String = "\n") -> [Int] {
    let raw = FileManager.default.contents(atPath: path)
    guard let data = raw else {
        return []
    }

    let str = String(decoding: data, as: UTF8.self)
    let elems = str.components(separatedBy: separator)

    // remove empty
    let inputs = elems.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
                   .filter { $0.count > 0 }
                   .map { Int($0) }
                   .filter { $0 != nil }
                   .map { $0! }

    return inputs
}

