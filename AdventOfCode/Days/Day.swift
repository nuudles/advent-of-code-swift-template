//
//  Day.swift
//  AdventOfCode
//

import Foundation

protocol Day: AnyObject {
    init()

    func part1(_ input: String) -> CustomStringConvertible
    func part2(_ input: String) -> CustomStringConvertible
}
