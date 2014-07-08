//
//  TestsCGPointMathFunctions.swift
//  TestsAndSample
//
//  Created by Seivan Heidari on 06/07/14.
//  Copyright (c) 2014 Seivan Heidari. All rights reserved.
//

import XCTest
import CoreGraphics

class TestCGPointMathFunctions : SuperTestsMathFunctions {
  override func setUp()  {
    self.tester = TestsGenericMathFunctions<CGPoint>()
    super.setUp()
  }
}
class TestSizeMathFunctions : SuperTestsMathFunctions {
  override func setUp()  {
    self.tester = TestsGenericMathFunctions<CGSize>()
    super.setUp()
  }
}
class TestCGVectorMathFunctions : SuperTestsMathFunctions {
  override func setUp()  {
    self.tester = TestsGenericMathFunctions<CGVector>()
    super.setUp()
  }
}


class SuperTestsMathFunctions: XCTestCase,TestMathFunctions {
  var tester:TestMathFunctions?
  
  func testAngleInRadians() {
    if let t = tester {
      t.testAngleInRadians()
    }
  }

  func testMagnitude() {
    if let t = tester {
      t.testMagnitude()
    }
  }
  func testLength() {
    if let t = tester {
     t.testLength()
    }
  }

  func testLengthSquared() {
    if let t = tester {
     t.testLengthSquared()
    }
  }
  func testDotProduct() {
    if let t = tester {
     t.testDotProduct()
    }
  }
  func testDistanceTo() {
    if let t = tester {
      t.testDistanceTo()
    }
  }
  func testReversed() {
    if let t = tester {
     t.testReversed()
    }
  }
  func testNormalized() {
    if let t = tester {
      t.testNormalized()
    }
  }
  func testLimited() {
    if let t = tester {
     t.testLimited()
    }
  }
  func testScaled() {
    if let t = tester {
      t.testScaled()
    }
  }
  func testAngled() {
    if let t = tester {
      t.testAngled()
    }
  }

}

