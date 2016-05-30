//
//  TestsCGPointMathFunctions.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics
import VectorArithmetic

class TestsGenericMathFunctions<T:VectorArithmetic>:TestMathFunctions {
  let vector:T = T(horizontal: 2, vertical: 2)
  
  func testAngleInRadians() {
    let candidate:Double = self.vector.angleInRadians
    let expected = -0.785398163397448
    XCTAssertEqualWithAccuracy(candidate, expected, accuracy: 0.000000000000001)
  }
  func testMagnitude() {
    let candidate:Double = self.vector.magnitude
    let expected = 2.82842712474619
    XCTAssertEqualWithAccuracy(candidate, expected, accuracy: 0.000000000000001)
    
  }
  func testLength() {
    let candidate:Double = self.vector.length
    let expected = 2.82842712474619
    XCTAssertEqualWithAccuracy(candidate, expected, accuracy: 0.000000000000001)
    
  }
  
  func testLengthSquared() {
    let candidate:Double = self.vector.lengthSquared
    let expected = 8.0
    XCTAssertEqualWithAccuracy(candidate, expected, accuracy: 0.000000000000001)
    
  }
  func testDotProduct() {
    let candidate:Double = self.vector.dotProduct(CGPoint(x: 100, y: 100))
    let expected = 400.0
    XCTAssertEqualWithAccuracy(candidate, expected, accuracy: 0.000000000000001)
    
  }
  func testCrossProduct() {
    let candidate:Double = self.vector.crossProduct(CGPoint(x: 1, y: 2))
    let expected = -2.0
    XCTAssertEqualWithAccuracy(candidate, expected, accuracy: 0.000000000000001)
    
  }

  func testDistanceTo() {
    let candidate:Double = self.vector.distanceTo(CGPoint(x: 100, y: 100))
    let expected = 138.592929112563
    XCTAssertEqualWithAccuracy(candidate, expected, accuracy: 0.000000000001)
    
  }
  func testReversed() {
    let candidate:T = self.vector.reversed
    let expected = -2.0
    XCTAssertEqual(candidate.horizontal, expected);
    XCTAssertEqual(candidate.vertical, expected);
    
  }
  func testNormalized() {
    let candidate:T = self.vector.normalized
    let expected = 0.70710676908493
    XCTAssertEqualWithAccuracy(candidate.horizontal, expected, accuracy: 0.0000001)
    XCTAssertEqualWithAccuracy(candidate.vertical, expected, accuracy: 0.0000001)
    
  }
  func testLimited() {
    let candidate:T = self.vector.limited(0.5)
    let expected = 0.353553384542465
    XCTAssertEqualWithAccuracy(candidate.horizontal, expected, accuracy: 0.00000001)
    XCTAssertEqualWithAccuracy(candidate.vertical, expected, accuracy: 0.00000001)
    
  }
  func testScaled() {
    let candidate:T = self.vector.scaled(0.5)
    let expected = 0.353553384542465
    XCTAssertEqualWithAccuracy(candidate.horizontal, expected, accuracy: 0.00000001)
    XCTAssertEqualWithAccuracy(candidate.vertical, expected, accuracy: 0.00000001)
    
  }
  func testAngled() {
    let candidate:T = self.vector.angled(90)
    let expectedX = -1.26734352111816
    let expectedY = 2.52860450744629
    XCTAssertEqualWithAccuracy(candidate.horizontal, expectedX, accuracy: 0.00001)
    XCTAssertEqualWithAccuracy(candidate.vertical, expectedY, accuracy: 0.000001)
    
  }
  
}
