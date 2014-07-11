//
//  TestsCGPointMathFunctions.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics


class TestsMathFunctions: XCTestCase,TestMathFunctions {
  let testerCGPoint:TestsGenericMathFunctions<CGPoint> = TestsGenericMathFunctions<CGPoint>()
  let testerCGSize:TestsGenericMathFunctions<CGSize> = TestsGenericMathFunctions<CGSize>()
  let testerCGVector:TestsGenericMathFunctions<CGVector> = TestsGenericMathFunctions<CGVector>()
  
  func testAngleInRadians() {
    self.testerCGPoint.testAngleInRadians()
    self.testerCGSize.testAngleInRadians()
    self.testerCGVector.testAngleInRadians()
  }

  func testMagnitude() {
    self.testerCGPoint.testMagnitude()
    self.testerCGSize.testMagnitude()
    self.testerCGVector.testMagnitude()
  }
  
  func testLength() {
    self.testerCGPoint.testLength()
    self.testerCGSize.testLength()
    self.testerCGVector.testLength()
  }

  func testLengthSquared() {
    self.testerCGPoint.testLengthSquared()
    self.testerCGSize.testLengthSquared()
    self.testerCGVector.testLengthSquared()
  }
  
  func testDotProduct() {
    self.testerCGPoint.testDotProduct()
    self.testerCGSize.testDotProduct()
    self.testerCGVector.testDotProduct()
  }
  
  func testDistanceTo() {
    self.testerCGPoint.testDistanceTo()
    self.testerCGSize.testDistanceTo()
    self.testerCGVector.testDistanceTo()
  }
  
  func testReversed() {
    self.testerCGPoint.testReversed()
    self.testerCGSize.testReversed()
    self.testerCGVector.testReversed()
  }
  
  func testNormalized() {
    self.testerCGPoint.testNormalized()
    self.testerCGSize.testNormalized()
    self.testerCGVector.testNormalized()
  }
  
  func testLimited() {
    self.testerCGPoint.testLimited()
    self.testerCGSize.testLimited()
    self.testerCGVector.testLimited()
  }
  
  func testScaled() {
    self.testerCGPoint.testScaled()
    self.testerCGSize.testScaled()
    self.testerCGVector.testScaled()
  }
  
  func testAngled() {
    self.testerCGPoint.testAngled()
    self.testerCGSize.testAngled()
    self.testerCGVector.testAngled()
  }

}

