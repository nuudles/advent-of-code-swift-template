//
//  Day1Tests.swift
//  Day1Tests
//

import XCTest

class Day1Tests: XCTestCase {
    let day = Day1()

    func testPart1() throws {
        XCTAssertEqual(
            day.part1(
                """
                1721
                979
                366
                299
                675
                1456
                """
            ) as? Int,
            514579
        )
    }

    func testPart2() throws {
        XCTAssertEqual(
            day.part2(
                """
                1721
                979
                366
                299
                675
                1456
                """
            ) as? Int,
            241861950
        )
    }

}
