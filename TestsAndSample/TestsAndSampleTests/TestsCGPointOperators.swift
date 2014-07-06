//
//  TestsOperatorsVectorOperatable.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import CoreGraphics
import XCTest

class TestsCGPointOperators : SuperTestsOperators, TestOperators {
  func testEqual() {
   XCTAssert(self.vectorPoint == self.vectorSize)
   XCTAssert(self.vectorPoint == self.vectorVector)
  }
  func testNotEqual() {
    XCTAssertFalse(self.vectorPoint != self.vectorSize)
    XCTAssertFalse(self.vectorPoint != self.vectorVector)
    
  }
  func testLessThanOrEqual() {
    XCTAssert(self.vectorPoint <= self.vectorSize)
    XCTAssert(self.vectorPoint <= self.vectorVector)
    

  }
  func testLessThan() {
    
  }
  func testMoreThanOrEqual() {
    
  }
  func testMoreThan() {
    
  }
  func testSubtraction() {
    
  }
  func testSubtractionAssignment() {
    
  }
  func testAddition() {
    
  }
  func testAdditionAssignment() {
    
  }
  func testMultiplication() {
    
  }
  func testMultiplicationAssignment() {
    
  }
  func testDivision() {
    
  }
  func testDivisionAssignment() {
    
  }
  func testMultiplicationScalar() {
    
  }
  func testMultiplicationScalarAssignment() {
    
  }
  func testDivisionScalar() {
    
  }
  func testDivisionScalarAssignment() {
    
  }


}
