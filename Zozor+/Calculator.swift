//
//  Calculator.swift
//  CountOnMe
//
//  Created by Vigneswaranathan Sugeethkumar on 03/11/2018.
//  Copyright © 2018 Ambroise Collon. All rights reserved.
//

import Foundation
import UIKit

class Calculator{
    var stringNumbers: [String] = [String()]
    var operators: [String] = ["+"]
    var index = 0
    var total = 0
   
    
    var isExpressionCorrect: Bool {
        if let stringNumber = stringNumbers.last {
            if stringNumber.isEmpty {
                return false
            }
        }
        return true
    }
    // error +-
    var canAddOperator: Bool {
        if let stringNumber = stringNumbers.last {
            if stringNumber.isEmpty {
                return false
            }
        }
        return true
    }
    
    func plus() -> Bool {
        guard canAddOperator else { return false }
        
        operators.append("+")
        stringNumbers.append("")
        return true
    }
    
    func minus() -> Bool{
        guard canAddOperator else { return false }
            operators.append("-")
            stringNumbers.append("")
        return true
    }
    
    func calculateTotal(){
        total = 0
        if !isExpressionCorrect {
            return
    }
        
        for (i, stringNumber) in stringNumbers.enumerated() {
            if let number = Int(stringNumber) {
                if operators[i] == "+" {
                    self.total += number
                } else if operators[i] == "-" {
                    self.total -= number
                }
            }
        }
    }
    
    func addNewNumber(_ newNumber: Int) {
        if let stringNumber = stringNumbers.last {
            var stringNumberMutable = stringNumber
            stringNumberMutable += "\(newNumber)"
            stringNumbers[stringNumbers.count-1] = stringNumberMutable
        }
    }
    
    func clear() {
        stringNumbers = [String()]
        operators = ["+"]
        index = 0
    }
    
    func reset(){
        total = 0
    }
}

