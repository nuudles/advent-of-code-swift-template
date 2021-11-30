//
//  Day1.swift
//  AdventOfCode
//

import Foundation

final class Day1: Day {
    func part1(_ input: String) -> CustomStringConvertible {
        var set = Set<Int>()
        let entries = input.split(separator: "\n").compactMap { Int($0) }
        for entry in entries {
            if set.contains(2020 - entry) {
                return entry * (2020 - entry)
            }
            set.insert(entry)
        }
        return -1
    }

    func part2(_ input: String) -> CustomStringConvertible {
        var set = Set<Int>()
        let entries = input.split(separator: "\n").compactMap { Int($0) }
        for (index, entry) in entries.enumerated() {
            for entry2 in entries[index + 1..<entries.count] {
                if set.contains(2020 - entry - entry2) {
                    return entry * entry2 * (2020 - entry - entry2)
                }
                set.insert(entry2)
            }
        }
        return -1
    }
}
