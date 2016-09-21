//
//  Brain.swift
//  FizzBuzzGame
//
//  Created by Tim Chung on 05/09/2016.
//  Copyright © 2016 TC. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleByDivisor(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }

    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleByDivisor(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleByDivisor(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleByDivisor(divisor: 15, number: number)
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return Move.FizzBuzz
        } else if isDivisibleByFive(number: number) {
            return Move.Buzz
        } else if isDivisibleByThree(number: number) {
            return Move.Fizz
        } else {
            return Move.Number
    }
}
    
}
