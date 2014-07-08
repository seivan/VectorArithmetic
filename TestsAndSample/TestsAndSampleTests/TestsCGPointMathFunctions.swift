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
    var expected = -0.785398163397448
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)
  }
  func testMagnitude() {
    let candidate:Double = self.vectorPoint.magnitude
    var expected = 2.82842712474619
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)
    
  }
  func testLength() {
    let candidate:Double = self.vectorPoint.length
    var expected = 2.82842712474619
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)
    
  }

  func testLengthSquared() {
    let candidate:Double = self.vectorPoint.lengthSquared
    var expected = 8.0
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)
    
  }
  func testDotProduct() {
    let candidate:Double = self.vectorPoint.dotProduct(CGPoint(x: 100, y: 100))
    var expected = 400.0
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000000001)

  }
  func testDistanceTo() {
    let candidate:Double = self.vectorPoint.distanceTo(CGPoint(x: 100, y: 100))
    var expected = 138.592929112563
    XCTAssertEqualWithAccuracy(candidate, expected, 0.000000000001)

  }
  func testReversed() {
    let candidate:CGPoint = self.vectorPoint.reversed
    var expected = -2
    XCTAssertEqualObjects(candidate.x, expected);
    XCTAssertEqualObjects(candidate.y, expected);
 
  }
  func testNormalized() {
    let candidate:CGPoint = self.vectorPoint.normalized
    var expected = 0.70710676908493
    XCTAssertEqualWithAccuracy(Double(candidate.x), expected, 0.000000000000001)
    XCTAssertEqualWithAccuracy(Double(candidate.y), expected, 0.000000000000001)
    
  }
  func testLimited() {
    let candidate:CGPoint = self.vectorPoint.limited(0.5)
    var expected = 0.353553384542465
    XCTAssertEqualWithAccuracy(Double(candidate.x), expected, 0.000000000000001)
    XCTAssertEqualWithAccuracy(Double(candidate.y), expected, 0.000000000000001)

  }
  func testScaled() {
    let candidate:CGPoint = self.vectorPoint.scaled(0.5)
    var expected = 0.353553384542465
    XCTAssertEqualWithAccuracy(Double(candidate.x), expected, 0.000000000000001)
    XCTAssertEqualWithAccuracy(Double(candidate.y), expected, 0.000000000000001)

  }
  func testAngled() {
    let candidate:CGPoint = self.vectorPoint.angled(90)
    var expectedX = -1.26734352111816
    var expectedY = 2.52860450744629
    XCTAssertEqualWithAccuracy(Double(candidate.x), expectedX, 0.00000000000001)
    XCTAssertEqualWithAccuracy(Double(candidate.y), expectedY, 0.00000000000001)
    
  }

}
