//
//  Point
//  AdventOfCode
//
//  Created by Eric Cormack on 12/3/18.
//  Copyright © 2018 the Odin Spire. All rights reserved.
//

import Foundation

public struct Point {
    public let x: Int
    public let y: Int

    public var manhattanNeighbors: [Point] {
        return [
            Point(x: x, y: y - 1),
            Point(x: x - 1, y: y),
            Point(x: x + 1, y: y),
            Point(x: x, y: y + 1)
        ]
    }

    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    public init?(from string: String) {
        let components = string.components(separatedBy: .punctuationCharacters).compactMap { Int($0.trimmingCharacters(in: .whitespaces)) }

        guard components.count == 2 else { return nil }

        x = components[0]
        y = components[1]
    }

    public func isIn<Ranges>(xs: Ranges, ys: Ranges) -> Bool where Ranges: RangeExpression, Ranges.Bound == Int {
        return xs.contains(x) && ys.contains(y)
    }

    public func manhattanDistance(from that: Point) -> Int {
        return abs(self.x - that.x) + abs(self.y - that.y)
    }
}

extension Point: Hashable {
    public static func ==(this: Point, that: Point) -> Bool {
        return this.x == that.x && this.y == that.y
    }

    public var hashValue: Int {
        return x << 16 + y
    }
}
