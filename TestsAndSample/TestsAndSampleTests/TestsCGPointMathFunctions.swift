//
//  TestsCGPointMathFunctions.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics
class TestsCGPointMathFunctions: SuperTestsOperators,TestMathFunctions {
  func testAngleInRadians() {
    let candidate:Double = self.vectorPoint.angleInRadians
    var expected = -0.795398163397448
    let ε : Double = 0.000001
    var δ = candidate - expected
    var q = abs(δ) <= ε
    XCTAssert(q)
    XCTAssertEqualWithAccuracy(candidate, expected, 0.001)
  }
  func testMagnitude() {
    
  }
  func testLengthSquared() {
    
  }
  func testLength() {
    
  }
  func testDotProduct() {
    
  }
  func testDistanceTo() {
    
  }
  func testReversed() {
    
  }
  func testNormalized() {
    
  }
  func testLimited() {
    
  }
  func testScaled() {
    
  }
  func testAngled() {
    
  }

}
