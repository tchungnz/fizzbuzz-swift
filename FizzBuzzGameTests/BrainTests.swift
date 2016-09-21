//
//  BrainTests.swift
//  FizzBuzzGame
//
//  Created by Tim Chung on 05/09/2016.
//  Copyright © 2016 TC. All rights reserved.
//

import XCTest
import QuickLook
@testable import FizzBuzzGame

class BrainTests: XCTestCase {

    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByDivisor(divisor: 3, number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByDivisor(divisor: 3, number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByDivisor(divisor: 5, number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByDivisor(divisor: 5, number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleByDivisor(divisor: 15, number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleByDivisor(divisor: 15, number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Move.Fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Move.Buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    func testReturnNumber() {
        let result = brain.check(number: 7)
        XCTAssertEqual(result, Move.Number)
    }
}
