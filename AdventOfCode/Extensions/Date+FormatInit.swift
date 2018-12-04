//
//  Date+FormatInit.swift
//  AdventOfCode
//
//  Created by Eric Cormack on 12/4/18.
//  Copyright © 2018 the Odin Spire. All rights reserved.
//

import Foundation

public extension DateFormatter {
    public convenience init(from format: String) {
        self.init()

        self.timeZone = TimeZone(abbreviation: "UTC")
        self.dateFormat = format
    }
}