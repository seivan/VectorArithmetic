//
//  SuperTestsOperators.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics

protocol TestOperators {
  func testEqual()
  func testNotEqual()
  func testLessThanOrEqual()
  func testLessThan()
  func testMoreThanOrEqual()
  func testMoreThan()
  func testSubtraction()
  func testSubtractionAssignment()
  func testAddition()
  func testAdditionAssignment()
  func testMultiplication()
  func testMultiplicationAssignment()
  func testDivision()
  func testDivisionAssignment()
  func testMultiplicationScalar()
  func testMultiplicationScalarAssignment()
  func testDivisionScalar()
  func testDivisionScalarAssignment()

}

protocol TestMathFunctions {
  func testAngleInRadians()
  func testMagnitude()
  func testLength()
  func testLengthSquared()
  func testDotProduct()
  func testDistanceTo()
  func testReversed()
  func testNormalized()
  func testLimited()
  func testScaled()
  func testAngled()
}

class SuperTestsOperators: XCTestCase {
  let doubleValue:Double = Double(2.0)
  var vectorPoint:CGPoint = CGPoint(x: 2.0, y: 2.0)
  var vectorSize:CGSize = CGSize(width: 2.0, height: 2.0)
  var vectorVector:CGVector = CGVector(2.0, 2.0)
  var vectorGeneric:VectorOperatable?
  

}
