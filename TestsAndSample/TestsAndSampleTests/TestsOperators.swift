//
//  TestsOperators.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 11/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics

class TestsOperators: XCTestCase, TestOperators {
  let testerCGPoint:TestsGenericOperators<CGPoint,CGSize,CGVector> = TestsGenericOperators<CGPoint,CGSize,CGVector>()
  let testerCGSize:TestsGenericOperators<CGSize,CGPoint,CGVector> = TestsGenericOperators<CGSize,CGPoint,CGVector>()
  let testerCGVector:TestsGenericOperators<CGVector,CGSize,CGPoint> = TestsGenericOperators<CGVector,CGSize,CGPoint>()

  func testEqual() {
    self.testerCGPoint.testEqual()
    self.testerCGSize.testEqual()
    self.testerCGVector.testEqual()
  }
  
 //  func testNotEqual()
  func testLessThanOrEqual() {
    self.testerCGPoint.testLessThanOrEqual()
    self.testerCGSize.testLessThanOrEqual()
    self.testerCGVector.testLessThanOrEqual()
  }
  
  func testLessThan() {
    self.testerCGPoint.testLessThan()
    self.testerCGSize.testLessThan()
    self.testerCGVector.testLessThan()
  }
  
  func testMoreThanOrEqual() {
    self.testerCGPoint.testMoreThanOrEqual()
    self.testerCGSize.testMoreThanOrEqual()
    self.testerCGVector.testMoreThanOrEqual()
  }
  
  func testMoreThan() {
    self.testerCGPoint.testMoreThan()
    self.testerCGSize.testMoreThan()
    self.testerCGVector.testMoreThan()
  }
  
  func testSubtraction() {
    self.testerCGPoint.testSubtraction()
    self.testerCGSize.testSubtraction()
    self.testerCGVector.testSubtraction()
  }
  
  func testSubtractionAssignment() {
    self.testerCGPoint.testSubtractionAssignment()
    self.testerCGSize.testSubtractionAssignment()
    self.testerCGVector.testSubtractionAssignment()
  }
  
  func testAddition() {
    self.testerCGPoint.testAddition()
    self.testerCGSize.testAddition()
    self.testerCGVector.testAddition()
  }
  
  func testAdditionAssignment() {
    self.testerCGPoint.testAdditionAssignment()
    self.testerCGSize.testAdditionAssignment()
    self.testerCGVector.testAdditionAssignment()
  }
  
  func testMultiplication() {
    self.testerCGPoint.testMultiplication()
    self.testerCGSize.testMultiplication()
    self.testerCGVector.testMultiplication()
  }
  
  func testMultiplicationAssignment() {
    self.testerCGPoint.testMultiplicationAssignment()
    self.testerCGSize.testMultiplicationAssignment()
    self.testerCGVector.testMultiplicationAssignment()
  }
  
  func testDivision() {
    self.testerCGPoint.testDivision()
    self.testerCGSize.testDivision()
    self.testerCGVector.testDivision()
  }
  
  func testDivisionAssignment() {
    self.testerCGPoint.testDivisionAssignment()
    self.testerCGSize.testDivisionAssignment()
    self.testerCGVector.testDivisionAssignment()
  }
  
  func testMultiplicationScalar() {
    self.testerCGPoint.testMultiplicationScalar()
    self.testerCGSize.testMultiplicationScalar()
    self.testerCGVector.testMultiplicationScalar()
  }
  
  func testMultiplicationScalarAssignment() {
    self.testerCGPoint.testMultiplicationScalarAssignment()
    self.testerCGSize.testMultiplicationScalarAssignment()
    self.testerCGVector.testMultiplicationScalarAssignment()
  }
  
  func testDivisionScalar() {
    self.testerCGPoint.testDivisionScalar()
    self.testerCGSize.testDivisionScalar()
    self.testerCGVector.testDivisionScalar()
  }
  
  func testDivisionScalarAssignment() {
    self.testerCGPoint.testDivisionScalarAssignment()
    self.testerCGSize.testDivisionScalarAssignment()
    self.testerCGVector.testDivisionScalarAssignment()
  }
  


}
