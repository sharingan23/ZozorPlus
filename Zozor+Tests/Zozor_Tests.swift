//
//  Zozor_Tests.swift
//  CountOnMeTests
//
//  Created by Ambroise COLLON on 30/08/2016.
//  Copyright © 2016 Ambroise Collon. All rights reserved.
//

import XCTest
@testable import CountOnMe

class Zozor_Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    /*func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    
        }*/
    
    func testAdditionBetween5and1Is6WhenEqual(){
        let calcul = Calculator()
        calcul.addNewNumber(1)
        calcul.plus()
        calcul.addNewNumber(5)
        calcul.calculateTotal()
        XCTAssert(calcul.total == 6)
    }
    
    func testMinusBetween7and4Is3WhenEqual(){
        let calcul = Calculator()
        calcul.addNewNumber(7)
        calcul.minus()
        calcul.addNewNumber(4)
        calcul.calculateTotal()
        XCTAssert(calcul.total == 3)
    }
    
    func testMinusBetween5and10IsMinus5WhenEqual(){
        let calcul = Calculator()
        calcul.addNewNumber(5)
        calcul.minus()
        calcul.addNewNumber(10)
        calcul.calculateTotal()
        XCTAssert(calcul.total == -5)
    }
    
    func testAdditionBetween23and1Is24WhenEqual(){
        let calcul = Calculator()
        calcul.addNewNumber(2)
        calcul.addNewNumber(3)
        calcul.plus()
        calcul.addNewNumber(1)
        calcul.calculateTotal()
        XCTAssert(calcul.total == 24)
    }
    
    func testTwoSuccessiveAdditionIsFalseWhenEqual(){
        let calcul = Calculator()
        calcul.addNewNumber(1)
        calcul.plus()
        XCTAssertFalse(calcul.plus())
    }
    
    func testTwoSuccessiveMinusIsFalseWhenEqual(){
        let calcul = Calculator()
        calcul.addNewNumber(1)
        calcul.minus()
        XCTAssertFalse(calcul.minus())
    }
    
    func testFirstButtonAdditionIsFalseWhenEqual(){
        let calcul = Calculator()
        XCTAssertFalse(calcul.plus())
    }
    
    func testFirstButtonminusIsFalseWhenEqual(){
        let calcul = Calculator()
        XCTAssertFalse(calcul.minus())
    }
    
    
    
}
