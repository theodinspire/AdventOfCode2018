import Foundation
import AdventOfCode

guard let filepath = Bundle.main.url(forResource: "Stub", withExtension: "txt"),
    let stream = StreamReader(url: filepath) else { fatalError("Check input filepath") }

let sample = """

""".components(separatedBy: .newlines)
