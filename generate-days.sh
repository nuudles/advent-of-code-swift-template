#!/bin/bash

for DAY in {2..25}
do
    cat <<EOT > AdventOfCode/Days/Day${DAY}.swift
//
//  Day${DAY}.swift
//  AdventOfCode
//

import Foundation

final class Day${DAY}: Day {
    func part1(_ input: String) -> CustomStringConvertible {
        return 0
    }

    func part2(_ input: String) -> CustomStringConvertible {
        return 0
    }
}
EOT

    cat <<EOT > AdventOfCodeTests/Day${DAY}Tests.swift
//
//  Day${DAY}Tests.swift
//  Day${DAY}Tests
//

import XCTest

class Day${DAY}Tests: XCTestCase {
    let day = Day${DAY}()

    func testPart1() throws {
        debugPrint(day.part1(""))
    }

    func testPart2() throws {
        debugPrint(day.part2(""))
    }

}
EOT
done