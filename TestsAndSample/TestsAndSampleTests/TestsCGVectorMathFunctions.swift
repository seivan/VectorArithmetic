//
//  TestsCGPointMathFunctions.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics
class TestsMathFunctions<T:VectorArithmetic>:TestMathFunctions {
  let vector:T = T(horizontal: 2, vertical: 2)
  
  func testAngleInRadians() {
    let candidate:Double = self.vector.angleInRadians
    var expected = -0.785398163397448
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)
  }
  func testMagnitude() {
    let candidate:Double = self.vector.magnitude
    var expected = 2.82842712474619
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)
    
  }
  func testLength() {
    let candidate:Double = self.vector.length
    var expected = 2.82842712474619
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)
    
  }
  
  func testLengthSquared() {
    let candidate:Double = self.vector.lengthSquared
    var expected = 8.0
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)
    
  }
  func testDotProduct() {
    let candidate:Double = self.vector.dotProduct(CGPoint(x: 100, y: 100))
    var expected = 400.0
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)
    
  }
  func testDistanceTo() {
    let candidate:Double = self.vector.distanceTo(CGPoint(x: 100, y: 100))
    var expected = 138.592929112563
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000001)
    
  }
  func testReversed() {
    let candidate:T = self.vector.reversed
    var expected = -2
    XCTAssertEqualObjects(candidate.horizontal, expected);
    XCTAssertEqualObjects(candidate.vertical, expected);
    
  }
  func testNormalized() {
    let candidate:T = self.vector.normalized
    var expected = 0.70710676908493
    XCTAssertEqualWithAccuracy(candidate.horizontal, expected, 0.000000000000001)
    XCTAssertEqualWithAccuracy(candidate.vertical, expected, 0.000000000000001)
    
  }
  func testLimited() {
    let candidate:T = self.vector.limited(0.5)
    var expected = 0.353553384542465
    XCTAssertEqualWithAccuracy(candidate.horizontal, expected, 0.000000000000001)
    XCTAssertEqualWithAccuracy(candidate.vertical, expected, 0.000000000000001)
    
  }
  func testScaled() {
    let candidate:T = self.vector.scaled(0.5)
    var expected = 0.353553384542465
    XCTAssertEqualWithAccuracy(candidate.horizontal, expected, 0.000000000000001)
    XCTAssertEqualWithAccuracy(candidate.vertical, expected, 0.000000000000001)
    
  }
  func testAngled() {
    let candidate:T = self.vector.angled(90)
    var expectedX = -1.26734352111816
    var expectedY = 2.52860450744629
    XCTAssertEqualWithAccuracy(candidate.horizontal, expectedX, 0.00000000000001)
    XCTAssertEqualWithAccuracy(candidate.vertical, expectedY, 0.00000000000001)
    
  }
  
}
